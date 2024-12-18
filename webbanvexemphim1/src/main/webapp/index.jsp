<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"content ="width=device-width, initial-scale = 1.0">
    <title>Mua vé xem phim trực tuyến </title>
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">

</head>
<body>
    <header>
        <div class="logo">
            <img src="logo.jpg" alt="website logo">
        </div>
        <form action="/search" method="get">
            <input type="search" id="search" name="q" placeholder="Tìm kiếm ...">
            <button type="submit">Tìm kiếm</button>
        </form>
        <div class="user-profile">
            <i class="fas fa-user-circle  my-iconuser"></i>
        </div>
        <div class="thong-bao">
            <i class="fa-duotone fa-solid fa-bell my-iconchuong"></i>
        </div>
    </header>
    <section  class="main-content">
        <div class="column1"> 
            <div class="vi-tien">
                <div class="logo">
                    <img  src="" alt="bank logo">
                </div>
                <p >số dư</p>
                <i class="fas fa-wallet my-icontheatm"></i>
                <p class="sodu">$45.00</p>
                <button class="daucong">+</button>
            </div>
            <div class="trang-chinh">
                <i class="fa-duotone fa-solid fa-house-user my-icon1"></i>
                <p >Trang chủ</p>
            </div>
            <div class="yeu-thich">
                <i class="fa-regular fa-bookmark my-icon2"></i>
                <p>Yêu thích</p>
            </div>
            <div class="khuyen-mai">
                <i class="fa-solid fa-ticket-simple my-icon3"> </i>
                <p>Khuyến mãi</p>
            </div>
            <div class="shopping">
                <i class="fa-solid fa-clipboard my-icon4"></i>
                <p>đồ ăn & nước</p>
            </div>
            <div class="loi-nhac">
                <i class="fa-solid fa-calendar my-icon5"></i>
                <p>lịch hẹn</p>
            </div>
            <div class="roi">
                <i class="fa-solid fa-arrow-right-from-bracket my-icon6"></i>
                <p>đăng xuất</p>
            </div>
        </div> 

    
        <div class="column2">
            
            <div class="moive-trailer">
                <img src="doanweb\webbanvexemphim1\src\main\webapp\images" atl="anh-trailer">
                <button>
                   Watch the trailer <i class="fa-solid fa-play"></i>
                </button>

            </div>
            <div class="movie-movie-list">
                <div class="movie-card">
                    <img src="images/New folder/movie3.jpg" alt="anh-movie1">
                    <p>The Way of Water</p>
                    <p>James Cameron</p>
                    <div class="ratiing">★★★★☆</div>
                </div>
                <div class="movie-card">
                    <img src="images/movie2.jpg" alt="anh-movie2">
                    <p>MoonBound</p>
                    <p>Ali Samadi Ahadi</p>
                    <div class="ratiing">★★★☆☆</div>
                </div>
                <div class="movie-card">
                    <img src="images/movie3.jpg" alt="anh-movie3">
                    <p>Sinkhole</p>
                    <p>Bradley Parker</p>
                    <div class="ratiing">★★★★★</div>
                </div>
                <div class="movie-card">
                    <img src="images/movie4.jpg" alt="anh-movie4">
                    <p>Red One</p>
                    <p>Jake Kasdan</p>
                    <div class="ratiing">★★☆☆☆</div>
                </div>
                <div class="movie-card">
                    <img src="images/movie5.jpg" alt="anh-movie5">
                    <p>Làm Giàu Với Ma</p>
                    <p>Trung Lùn</p>
                    <div class="ratiing">★★★★★</div>
                </div>
                <div class="movie-card">
                    <img src="images/movie6.jpg" alt="anh-movie6">
                    <p>Cười Xuyên Biên Giới</p>
                    <p>Kim Chang Ju</p>
                    <div class="ratiing">★★★★☆</div>
                </div>
                <div class="movie-card">
                    <img src="images/movie7.jpg" alt="anh-movie7">
                    <p>Võ Sĩ Giác Đấu II</p>
                    <p>Ridley Scott</p>
                    <div class="ratiing">★★★☆☆</div>
                </div>

            </div>
    
            <div class="shopping-list">
                <div class="shopping-card">
                    <img src="baprang.jpg">
                    <img src="coca.jpg">
                    <p>Bắp & Coca</p>
                    <p>Bắp nhiều</p>
                    <p>$10</p><button>Order</button>

                </div>
                <div class="shopping-card">
                    <img src="baprang.jpg">
                    <img src="snack.jpg">
                    <p>Bắp & Snack</p>
                    <p>Bắp ít</p>
                    <p>$12</p><button>Order</button>

                </div>


                </div>
            </div>

        </div>


        <div class="column3">
            <div class="thong-tin-ve">
                <div  class="bieu-do-ghe">
                    <p class="bd1">Luca</p>
                    <p class="bd2">13 lượt</p>
                    <i class="fa-solid fa-calendar my-icon"></i>
                    <p class="bd3">10:30pm</p>
                    <p class="bd4">13 tháng11</p>
                    <div class="ghe-ngoi">
                        <div class="square"></div>
                        <div class="square"></div>
                        <div class="square"></div>
                        <div class="square"></div>
                        <div class="square"></div>
                        <div class="square"></div>
                        <div class="square"></div>
                        <div class="square"></div>
                        <div class="square"></div>
                        <div class="square"></div>
                        <div class="square"></div>
                        <div class="square"></div>
                        <div class="square"></div>
                        <div class="square"></div>
                        <div class="square"></div>
                        <div class="square"></div>
                        <div class="square"></div>
                        <div class="square"></div>
                        <div class="square"></div>
                        <div class="square"></div>
                        <div class="square"></div>
                        <div class="square"></div>
                        <div class="square"></div>
                        <div class="square"></div>
                        <div class="square"></div>
                        <div class="square"></div>
                        <div class="square"></div>
                        <div class="square"></div>
                        <div class="square"></div>
                        <div class="square"></div>
                        <div class="square"></div>
                        <div class="square"></div>
                        <div class="square"></div>
                        <div class="square"></div>
                        <div class="square"></div>
                        <div class="square"></div>
                        <div class="square"></div>
                        <div class="square"></div>
                        <div class="square"></div>
                        <div class="square"></div>
                        <div class="square"></div>
                        <div class="square"></div>
                        <div class="square"></div>
                        <div class="square"></div>
                        <div class="square"></div>
                        <div class="square"></div>
                        <div class="square"></div>
                        <div class="square"></div>
                        <div class="square"></div>
                        <div class="square"></div>
                        <div class="square"></div>
                        <div class="square"></div>
                        <div class="square"></div>
                        <div class="square"></div>
                        <div class="square"></div>
                        <div class="square"></div>
                        
                    </div>

                </div>
                <div class="ve-dat">
                    <p>Luca: Mùa hè của Luca</p>
                    <p>13 tháng11,10:30pm</p>
                    <p>sảnh:..........A1</p>
                    <p>ghế:...........B7</p>
                    <p class="ticket-info3">$24</p>
                    <button> Buy  tickets</button>
                    <div class="cut-line"></div>
                    <img src="movieticket.jpg" alt="anh-ve">
            
                </div>
            </div>
        </div>
    </section>
</body>
</html>