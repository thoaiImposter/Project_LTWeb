package viduServlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;

import java.io.IOException;
import java.io.InputStream;
import java.io.File;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import org.w3c.dom.Document;
import org.w3c.dom.Element;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

@WebServlet("/MovieBookingServlet")
public class MovieBookingServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    // Đọc thông tin kết nối từ dbconfig.xml
    private Connection getDatabaseConnection() throws Exception {
        // Đường dẫn tới file dbconfig.xml trong thư mục WEB-INF
        String xmlPath = getServletContext().getRealPath("/WEB-INF/dbconfig.xml");
        File xmlFile = new File(xmlPath);

        // Phân tích file XML
        DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
        DocumentBuilder builder = factory.newDocumentBuilder();
        Document doc = builder.parse(xmlFile);

        // Lấy thông tin từ XML
        Element root = doc.getDocumentElement();
        String server = root.getElementsByTagName("Server").item(0).getTextContent();
        String database = root.getElementsByTagName("Database").item(0).getTextContent();
        String user = root.getElementsByTagName("User").item(0).getTextContent();
        String password = root.getElementsByTagName("Password").item(0).getTextContent();

        // Chuỗi kết nối
        String connectionUrl = "jdbc:sqlserver://" + server + ";databaseName=" + database;

        // Kết nối tới cơ sở dữ liệu
        return DriverManager.getConnection(connectionUrl, user, password);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/index.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String title = request.getParameter("title");
        String genre = request.getParameter("genre");
        String releaseDate = request.getParameter("releaseDate");
        Part[] fileParts = request.getParts().stream()
                            .filter(part -> "posters".equals(part.getName()))
                            .toArray(Part[]::new); // Lấy tất cả các file ảnh

        try (Connection conn = getDatabaseConnection()) {
            // Thêm phim vào bảng Movies
            String sqlMovie = "INSERT INTO Movies (title, genre, release_date) VALUES (?, ?, ?)";
            PreparedStatement stmtMovie = conn.prepareStatement(sqlMovie, PreparedStatement.RETURN_GENERATED_KEYS);
            stmtMovie.setString(1, title);
            stmtMovie.setString(2, genre);
            stmtMovie.setString(3, releaseDate);
            stmtMovie.executeUpdate();

            // Lấy ID của phim vừa thêm
            ResultSet rs = stmtMovie.getGeneratedKeys();
            int movieId = -1;
            if (rs.next()) {
                movieId = rs.getInt(1);
            }

            // Lưu các ảnh vào bảng MovieImages
            String sqlImage = "INSERT INTO MovieImages (movie_id, image_data) VALUES (?, ?)";
            PreparedStatement stmtImage = conn.prepareStatement(sqlImage);

            for (Part filePart : fileParts) {
                try (InputStream inputStream = filePart.getInputStream()) {
                    stmtImage.setInt(1, movieId);
                    stmtImage.setBinaryStream(2, inputStream, (int) filePart.getSize());
                    stmtImage.executeUpdate();
                }
            }

            response.getWriter().write("<h2>Thêm phim và ảnh thành công!</h2>");
        } catch (Exception e) {
            e.printStackTrace();
            response.getWriter().write("<h2>Lỗi khi thêm phim: " + e.getMessage() + "</h2>");
        }
    }

}

