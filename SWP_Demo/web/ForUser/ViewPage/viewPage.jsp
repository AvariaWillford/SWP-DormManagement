<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>FPT DORMITORY</title>
        <meta charset="UTF-8">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
        <link rel="stylesheet" href="./resources/css/viewPage.css"/>
    </head>
    <body>

        <!-- Navbar (sit on top) -->
        <div class="w3-top">
            <div class="w3-bar w3-white w3-wide w3-padding w3-card">
                <a href="viewPage.jsp" class="w3-bar-item w3-button"><b style="color: #f36f21">FPT DORMITORY</b></a>
                <!-- Float links to the right. Hide them on small screens -->
                <div class="w3-right w3-hide-small">
                    <a href="#projects" class="w3-bar-item w3-button">Dorm picture</a>
                    <a href="#about" class="w3-bar-item w3-button">FAQ</a>
                    <a href="login.jsp" class="w3-bar-item w3-button">Login</a>
                </div>
            </div>
        </div>

        <!-- Header -->
        <header  style="margin-top: 70px" id="home">
            <div class="slider">
                <div class="slides">
                    <div class="img-container" id="slide-1">
                        <img src="resources/img/bg1.jpg" alt="Image 1">
                    </div>
                    <div class="img-container" id="slide-2">
                        <img src="resources/img/bg2.jpg" alt="Image 2">
                    </div>
                    <div class="img-container" id="slide-3">
                        <img src="resources/img/bg3.jpg" alt="Image 3">
                    </div>
                    <div class="img-container" id="slide-4">
                        <img src="resources/img/bg4.jpg" alt="Image 4">
                    </div>
                    <div class="img-container" id="slide-5">
                        <img src="resources/img/bg5.jpg" alt="Image 5">
                    </div>
                </div>
            </div>
        </header>

        <!-- Page content -->
        <div class="w3-content w3-padding" style="max-width:1564px">

            <!--            <h2 style="text-align: center">Nội Quy Ký Túc Xá FPT</h2>-->

            <!--
                        <div class="w3-row-padding">
                            <div class="w3-col l3 m6 w3-margin-bottom">
                                <div class="w3-display-container">
                                    <div class="w3-display-topleft w3-black w3-padding">Summer House</div>
                                   
                                </div>
                            </div>
                            <div class="w3-col l3 m6 w3-margin-bottom">
                                <div class="w3-display-container">
                                    <div class="w3-display-topleft w3-black w3-padding">Brick House</div>
                                    
                                </div>
                            </div>
                            <div class="w3-col l3 m6 w3-margin-bottom">
                                <div class="w3-display-container">
                                    <div class="w3-display-topleft w3-black w3-padding">Renovated</div>
                                    <img src="" alt="House" style="width:100%">
                                </div>
                            </div>
                            <div class="w3-col l3 m6 w3-margin-bottom">
                                <div class="w3-display-container">
                                    <div class="w3-display-topleft w3-black w3-padding">Barn House</div>
                                    <img src="" alt="House" style="width:100%">
                                </div>
                            </div>
                        </div>
            
                        <div class="w3-row-padding">
                            <div class="w3-col l3 m6 w3-margin-bottom">
                                <div class="w3-display-container">
                                    <div class="w3-display-topleft w3-black w3-padding">Summer House</div>
                                    <img src="" alt="House" style="width:99%">
                                </div>
                            </div>
                            <div class="w3-col l3 m6 w3-margin-bottom">
                                <div class="w3-display-container">
                                    <div class="w3-display-topleft w3-black w3-padding">Brick House</div>
                                    <img src="" alt="House" style="width:99%">
                                </div>
                            </div>
                            <div class="w3-col l3 m6 w3-margin-bottom">
                                <div class="w3-display-container">
                                    <div class="w3-display-topleft w3-black w3-padding">Renovated</div>
                                    <img src="" alt="House" style="width:99%">
                                </div>
                            </div>
                            <div class="w3-col l3 m6 w3-margin-bottom">
                                <div class="w3-display-container">
                                    <div class="w3-display-topleft w3-black w3-padding">Barn House</div>
                                    <img src="" alt="House" style="width:99%">
                                </div>
                            </div>
                        </div>-->

            <!-- About Section -->
            <div class="w3-container w3-padding-32" id="about">
                <h3 class="w3-border-bottom w3-border-light-grey w3-padding-16" style="text-align: center; font-family: sans-serif; color: #f36f21; font-size: 36px">Thông tin Ký túc xá Đại Học FPT</h3>
                <p> Khu KTX gồm các tòa nhà. Mỗi tòa KTX có các tầng rộng rãi, sạch sẽ, có cả wifi, máy bán nước tự động, máy giặt sấy tự động... Xung quanh còn là cây cối xanh mướt trong lành, dễ chịu, thoáng mát. Phòng ở được thiết kế hiện đại, không gian thoải mái, thiết kế phù hợp cho từng loại phòng 3-4-6-8 người. Mỗi phòng sẽ được trang bị các thiết bị cần thiết, đầy đủ phục vụ cho những nhu cầu thiết yếu của sinh viên như giường tầng, bàn học, giá phơi quần áo, bình nóng lạnh, điều hòa, tủ để giày, nhà vệ sinh riêng cho mỗi phòng… giúp sinh viên an tâm học tập trong quãng thời gian gắn bó với đại học FPT, đem đến cho sinh viên cảm giác thoải mái tiện nghi như ở nhà.
                </p>
            </div>

            <div class="w3-row-padding">
                <h2 style="text-align: center;color: orange; font-size: 64px">FAQ</h2>
                <div class="w3-col l3 m6 w3-margin-bottom question">


                    <button style="background-color: #ffffff; color: #f36f21">
                    <h3>1. Khi ở KTX cần lưu ý điều gì?</h3>
                    <div class="answer" style="display: none; text-align: left">
                        <p>Ký túc xá có một số điều cần lưu ý khi ở như sau:</p>
                        <ul style="color: black">
                            <li>Không được nuôi vật nuôi, thú cưng (chó, mèo,...).</li>
                            <li>Không được uống rượu, bia, chơi cờ bạc, sử dụng các chất kích thích và chất cấm.</li>
                            <li>Không được nấu ăn trong ký túc xá.</li>
                            <li>Không được đưa người lạ không ở trong ký túc xá vào phòng sau giờ giới nghiêm.</li>
                            <li>Giờ giới nghiêm trong ký túc xá là sau 10 giờ 30 phút tối.</li>
                            <li>Giữ gìn vệ sinh chung và đồ rác trước 9 giờ sáng.</li>
                        </ul>
                    </div>
                    </button>

                
                </div>
                <div class="w3-col l3 m6 w3-margin-bottom question">

                    <button style="background-color: #ffffff; color: #f36f21">
                    <h3>2. Làm thế nào để gửi yêu cầu tới Ban Quản lý KTX?</h3>
                    <div class="answer" style="display: none; text-align: left; color: black">
                      
                        <ul>
                            <li>Bước 1: Vào chức năng My request.</li>
                            <li>Bước 2: Bấm vào nút Create new request -> Chọn loại yêu cầu (Type request) thích hợp.</li>
                            <li>Bước 3: Điền nội dung của yêu cầu ở phần Content.</li>
                            <li>Bước 4: Bấm vào nút Create request.</li>
                        </ul>
                    </div>
                    </button>
                    
                </div>
                <div class="w3-col l3 m6 w3-margin-bottom question">

                    <button style="background-color: #ffffff; color: #f36f21">
                    <h3>4. Làm thế nào để báo cáo sửa chữa đồ dùng trong phòng?</h3>
                    <div class="answer" style="display: none; text-align: left; color: black">
                      
                        <ul>
                            <li>Bước 1: Vào chức năng My request.</li>
                            <li>Bước 2: Bấm vào nút Create new request -> Chọn Báo cáo vấn đề kỹ thuật ở mục Type request</li>
                            <li>Bước 3: Hệ thống sẽ dẫn tới trang https://cim.fpt.edu.vn/</li>
                            <li>Bước 4: Điền những thông tin cần thiết và gửi ảnh tình trạng thiết bị (trên hệ thống CIM)</li>
                            <li>Bước 5: Bấm vào nút Create (trên hệ thống CIM)</li>
                        </ul>
                    </div>
                    </button>
                </div>
                <div class="w3-col l3 m6 w3-margin-bottom question">

                    <button style="background-color: #ffffff; color: #f36f21">
                    <h3>5. Thông tin liên lạc của bảo vệ và y tế là gì?</h3>
                    <div class="answer" style="display: none; text-align: left; color: black">
                        <p>Thông tin liên lạc của phòng bảo vệ và phòng y tế (24/7):</p>
                        <ul>
                            <li>Phòng bảo vệ: (024) 668 05913</li>
                            <li>Phòng y tế: (024) 668 05917</li>
                            <li>Thông tin chi tiết và cụ thể hơn, sinh viên cần Đăng nhập và xem thêm ở trang Home</li>
                        </ul>
                    </div>
                    </button>
                </div>
            </div>

            <!-- End page content -->
        </div>

        <!-- Footer -->
        <footer class="w3-center w3-padding-16 w3-border-top w3-border-orange w3-padding-16">

            <footer style="background-color: #ffffff" class="my-footer ">

                <div class="footer-contact-container row" style="justify-content: center" >
                    <div class=" col-md-3" style="width: 200px; margin-top: 10px">
                        <p class="address-title" style="text-align: left; color: #f36f21">
                            <b>Hà Nội</b>
                        </p>
                        <p class="footer-contact" style="font-size: 12px;text-align: left; color: #686868">
                            Khu Giáo dục và Đào tạo - Khu Công nghệ cao Hòa Lạc - KM29 Đại Lộ Thăng Long, H. Thạch Thất, TP.
                            Hà Nội
                            <br>
                            <br>
                            Điện thoại: 024 7300 1866
                            <br>
                            <br>
                            Email: daihocfpt@fpt.edu.vn
                        </p>
                    </div>
                    <div class=" col-md-3" style="width: 200px; margin-left: 20px; margin-top: 10px">
                        <p class="address-title" style="text-align: left; color: #f36f21">
                            <b>Đà Nẵng</b>
                        </p>
                        <p class="footer-contact " style="font-size: 12px;text-align: left; color: #686868">
                            Khu đô thị công nghệ FPT Đà Nẵng, P. Hoà Hải, Q. Ngũ Hành Sơn, TP. Đà Nẵng
                            <br>
                            <br>
                            Điện thoại: 024 7300 1866
                            <br>
                            <br>
                            Email: daihocfpt@fpt.edu.vn
                        </p>
                    </div>
                    <div class=" col-md-3" style="width: 200px; margin-left: 20px; margin-top: 10px">
                        <p class="address-title" style="text-align: left ; color: #f36f21"><b>Cần Thơ</b></p>
                        <p class="footer-contact" style="font-size: 12px;text-align: left; color: #686868">
                            Số 600 Đường Nguyễn Văn Cừ (nối dài), P. An Bình, Q. Ninh Kiều, TP. Cần Thơ
                            <br>
                            <br>
                            Điện thoại: 029 2360 1995
                            <br>
                            <br>
                            Email: sro.ct@fe.edu.vn
                        </p>
                    </div>
                    <div class=" col-md-3" style="width: 200px; margin-left: 20px; margin-top: 10px">
                        <p class="address-title" style="text-align: left; color: #f36f21"><b>Quy Nhơn</b></p>
                        <p class="footer-contact" style="font-size: 12px;text-align: left; color: #686868">
                            Khu đô thị mới An Phú Thịnh, Phường Nhơn Bình &amp; Phường Đống Đa, TP. Quy Nhơn, Bình Định
                            <br>
                            <br>
                            Điện thoại: 024 7300 1866/ 0256 7300 999
                            <br>
                            <br>
                            Email: daihocfpt@fpt.edu.vn
                        </p>
                    </div>
                </div>
            </footer>
        </footer>

    </body>
    <script>
        const slidesContainer = document.querySelector('.slides');
        const slides = slidesContainer.children; // Lấy danh sách slide
        let currentIndex = 0; // Chỉ số của slide hiện tại

        // Hàm chuyển đến slide tiếp theo
        function goToNextSlide() {
            const slideWidth = slidesContainer.clientWidth; // Lấy chiều rộng của slide
            const currentPosition = slidesContainer.scrollLeft; // Lấy vị trí cuộn hiện tại
            const nextPosition = currentPosition + slideWidth; // Tính toán vị trí tiếp theo

            // Kiểm tra xem đã đến cuối danh sách slide hay chưa
            if (currentIndex >= slides.length - 1) {
                // Cuộn trở lại vị trí đầu tiên
                slidesContainer.scrollTo({
                    left: 0,
                    behavior: 'smooth'
                });
                currentIndex = 0;
            } else {
                // Cuộn đến vị trí tiếp theo
                slidesContainer.scrollTo({
                    left: nextPosition,
                    behavior: 'smooth'
                });
                currentIndex++;
            }
        }

        // Gọi hàm chuyển slide mỗi 2 giây
        setInterval(goToNextSlide, 3000);

        const questions = document.querySelectorAll('.question');

        questions.forEach(question => {
            const answer = question.querySelector('.answer');
            const header = question.querySelector('h3');

            header.addEventListener('click', () => {
                answer.style.display = answer.style.display === 'none' ? 'block' : 'none';
            });
        });
    </script>
</html>
