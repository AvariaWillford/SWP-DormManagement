<!DOCTYPE html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Document</title>
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous">
        </script>
        <link rel="stylesheet" href="resources/css/login.css">
    </head>

    <body>
        <div class="header-container">
            <div style=" position: fixed; display: flex; justify-content: space-between; padding:0 30px; background-color:aliceblue ; right: 0px;left: 0px;">
                <div class="col-md-1">
                    <a style="left: 0px" href="login.jsp">
                        <image src="resources/img/image.png"  style="width: 100%; "></image>
                    </a>
                </div>
                <div style=" display: flex; align-items: center; gap: 30px;">
                    <p style="font-size:20px ; margin-top: 15px;">About</p>
                    <!-- Button trigger modal -->
                    <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">
                        Login
                    </button>
                </div>
            </div>
            <div class="centered">
                KTX Đại Học FPT
            </div>
            <div class="header-background-img">
                <image src="resources/img/nenpage.jpg " style="width: 100%;" ></image>
            </div>
        </div>
        <!--    <div class="card-img-overlay" >
                <h1 style=" color:rgb(243, 240, 235) ; text-align: center; margin-top: 280px;  ">KTX Dai Hoc FPT
                </h1>
            </div>-->
        <div>


           

            <div style="align-self: center">
                <h2 style="color: coral;text-align: center;font-size: 40px">Thông tin Ký túc xá Đại Học FPT</h2>
            </div>
        </div>
        <div class="w3-row-padding" style="padding-top: 60px;padding-right: 12px;padding-left: 12px">
            <div class="w3-col l8 12">
                <h2 style="color: coral">About</h2>
                <h4 style="">Trường Đại học FPT được biết đến là một trong những cơ sở giáo dục hàng đầu với sự chuyên môn vượt trội
                    và chất lượng đào tạo tiêu chuẩn quốc tế. Trường không chỉ tập trung vào việc cung cấp kiến thức mà còn
                    đặt sự quan tâm đặc biệt vào cuộc sống sinh viên. Điều này được thể hiện qua việc đầu tư xây dựng các
                    khu ký túc xá hiện đại, đầy đủ tiện nghi và môi trường sạch sẽ, thoải mái. Đây là một nơi ở ‘siêu’ tiện
                    nghi, thoáng đãng với giá vô cùng ‘hời’ so với thuê trọ bên ngoài.</h4>
            </div>
            <div class="w3-col l4 12">
                <!-- Image1 of dom -->
                <img src="resources/img/dom1.png" class="" alt="dom image">
            </div>
        </div>
        <div class="w3-row-padding" style="padding-top: 60px;padding-right: 12px;padding-left: 12px">
            <div class="w3-col l6 12">
                <!-- Image of dom -->
                <img src="resources/img/dom2.png" class="" style="width:100%;" alt="dom-image2">
            </div>
            <div class="w3-col l6 12">
                <h3 style="color: coral"> Ký túc xá của trường Đại học FPT là chỗ ở dành riêng cho sinh viên của Đại học
                    FPT.</h3>
                <h4>Hiện nay, một vấn đề các bạn tân sinh viên sau khi biết kết quả trúng tuyển Đại học. Đó là tìm kiếm cho
                    mình một chỗ ở phù hợp, vừa tiết kiệm vừa đảm bảo an ninh, môi trường học tập. Không chỉ riêng các sinh
                    viên mới, mà hầu hết sinh viên của các khóa trước cũng mong muốn có cơ hội ở trong KTX của trường để
                    tiện lợi cho việc di chuyển. Việc ở trong KTX không chỉ giúp tiết kiệm chi phí, mà còn mang lại một môi
                    trường thuận lợi cho việc học tập và sinh hoạt.</h4>
            </div>
        </div>
        <div class="w3-row-padding" style="padding-top: 60px;padding-right: 12px;padding-left: 12px">
            <div class="w3-col l6 12">
                <h3 style="color: coral">Ký túc xá trường Đại học FPT được xây dựng với thiết kế hiện đại, thoáng mát và đầy
                    đủ tiện nghi.</h3>
                <h4>Khu ký túc xá bao gồm nhiều toà nhà có không gian rộng rãi và sạch sẽ, được trang bị đầy đủ các tiện
                    nghi như wifi, máy bán nước tự động và máy giặt sấy tự động. Phía ngoài, khu vực xung quanh được bao phủ
                    bởi cây cỏ xanh mát, tạo ra một môi trường dễ chịu và thoải mái. Các phòng ở được thiết kế hiện đại và
                    thoải mái, có sự đa dạng về số lượng người ở từ 3 đến 8 người. Mỗi phòng được trang bị đầy đủ các tiện
                    ích như giường tầng, bàn học, tủ đồ và nhà vệ sinh riêng, tạo điều kiện thuận lợi và thoải mái cho sinh
                    viên, giúp họ tập trung vào việc học tập tại Đại học FPT.</h4>
            </div>
            <div class="w3-col l6 12">
                <!-- Image of dom -->
                <img src="resources/img/dom3.png" class="" style="width:100%;height: 150%" alt="dom-image3">
            </div>
        </div>
        <div style="align-self: center">
            <h2 style="color: coral;text-align: center;font-size: 60px">------------FAQ------------</h2>
        </div>
        <div style=" margin-left: 100px ;align-self: center">
            <div id="QA-content" class="QA-content">
                <details>
                    <summary>1. Khi ở KTX cần lưu ý điều gì?</summary>
                    <p style="margin-bottom: 8px;"><b> Ký túc xá có một số điều cần lưu ý khi ở như sau:</b></p>
                    <ul class="Des-QA-list-item">
                        <li>Không được nuôi vật nuôi, thú cưng (chó, mèo,...).</li>
                        <li>Không được uống rượu, bia, chơi cờ bạc, sử dụng các chất kích thích và chất cấm.</li>
                        <li>Không được nấu ăn trong ký túc xá.</li>
                        <li>Không được đưa người lạ không ở trong ký túc xá vào phòng sau giờ giới nghiêm.</li>
                        <li>Giờ giới nghiêm trong ký túc xá là sau 10 giờ 30 phút tối.</li>
                        <li>Giữ gìn vệ sinh chung và đổ rác trước 9 giờ sáng.</li>
                    </ul>
                    <b style="margin-top: 4px;">
                        Tất cả các lỗi vi phạm đều bị trừ dựa trên điểm uy tín dựa trên mức độ lỗi
                        vi phạm.
                    </b>
                </details>
                <details>
                    <summary>2. Điểm uy tín là gì?</summary>
                    <p style="margin-bottom: 18px; font-weight: bold;">
                        Điểm uy tín (Credibility in FPT Dormitory - CFD score) là một trong những yếu tố để tạo ra môi
                        trường
                        KTX
                        văn minh và lành mạnh hơn
                    </p>
                    <ul class=" Des-QA-list-item">
                        <li>
                            Điểm uy tín là tiêu chí để đánh giá ý thức của sinh viên khi sử dụng dịch vụ ký túc xá.
                        </li>
                        <li>
                            Điểm uy tín thay đổi dựa theo những hành vi, hoạt động và sự đóng góp của sinh viên trong suốt
                            thời
                            gian ở ký túc xá.
                        </li>
                        <li>
                            Điểm uy tín sẽ được tăng, giảm tương ứng theo các quy định đã được đề ra trong nội quy KTX.
                        </li>
                        <li>
                            Điểm uy tín là một trong những tiêu chí được dùng để xét duyệt xem sinh viên có được sử dụng ký
                            túc
                            xá trong kỳ hay không.
                        </li>
                    </ul>
                </details>
                <details>
                    <summary>3. Làm thế nào để gửi yêu cầu tới Ban Quản lý KTX?</summary>
                    <p>
                        Bước 1: Vào chức năng <b>My request</b>.
                    </p>
                    <p>
                        Bước 2: Bấm vào nút <b>Create new request</b> -&gt; Chọn <b>loại yêu cầu (Type request)</b> thích
                        hợp.
                    </p>
                    <p>
                        Bước 3: Điền nội dung của yêu cầu ở phần <b>Content</b>.
                    </p>
                    <p>
                        Bước 4: Bấm vào nút <b>Create request</b>.
                    </p>
                </details>
                <details>
                    <summary>4. Làm thế nào để báo cáo sửa chữa đồ dùng trong phòng?</summary>
                    <p>
                        Bước 1: Vào chức năng <b>My request</b>
                    </p>
                    <p>
                        Bước 2: Bấm vào nút <b>Create new request</b> -&gt; Chọn <b>Báo cáo vấn đề kỹ thuật</b> ở mục <b>
                            Type
                            request
                        </b>
                    </p>
                    <p> Bước 3: Hệ thống sẽ dẫn tới trang https://cim.fpt.edu.vn/</p>
                    <p> Bước 4: Điền những thông tin cần thiết và gửi ảnh tình trạng thiết bị (trên hệ thống CIM)</p>
                    <p> Bước 5: Bấm vào nút <b>Create</b> (trên hệ thống CIM)</p>
                    <p></p>
                </details>
                <details>
                    <summary>5. Thông tin liên lạc của bảo vệ và y tế là gì?</summary>
                    <b>Thông tin liên lạc của phòng bảo vệ và phòng y tế (24/7):</b>
                    <ul class="Des-QA-list-item">
                        <li>
                            <a style="color: black;" href="tel:02466805913">
                                <b>Phòng bảo vệ:</b><i> (024) 668 05913</i>
                            </a>
                        </li>
                        <li>
                            <a style="color: black;" href="tel:02466805917">
                                <b>Phòng y tế:</b><i> (024) 668 05917</i>
                            </a>
                        </li>
                    </ul>
                    <p style="margin-top: 8px;">
                        <i>
                            Thông tin chi tiết và cụ thể hơn, sinh viên cần <b>Đăng nhập</b> và xem thêm ở trang <b>Home</b>
                        </i>
                    </p>
                </details>
            </div>
        </div>
    </div>
</div>
<div  class=" align-middle"  id="contact " style="background:beige; text-align: center;">
    <h2>Contact:</h2>
    <p>Thong tin lien he</p>
    <i class="fa fa-map-marker w3-text-red" style="width:30px;"></i> Hoa Lac, Ha Noi, Vietnam<br>
    <i class="fa fa-phone w3-text-red" style="width:30px;"></i> Phone: 0987654321<br>
    <i class="fa fa-envelope w3-text-red" style="width:30px;"> </i> Email: mail@fpt.edu.vn<br>
</div>
<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <div style="margin-left: 190px;">
                    <h3 class="modal-title" id="exampleModalLabel" style="color: rgb(255, 123, 0) ;">Login</h3>
                </div>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <!--                    <div>
                                        <select class="form-control login-select" id="CampusCode" name="CampusCode"
                                            onchange="campusChange();">
                                            <option value="">Select Campus</option>
                                            <option value="APHL">Hòa Lạc</option>
                                            <option value="CT">Cần Thơ</option>
                                            <option value="DN">Đà Nẵng</option>
                                            <option value="HCM">Hồ Chí Minh</option>
                                            <option value="QN">Quy Nhơn</option>
                                        </select>
                                        <span class="field-validation-valid text-danger" data-valmsg-for="CampusCode"
                                            data-valmsg-replace="true"></span>
                                    </div>-->
                <form action="loginURL" method="post">
                    
                    <div class="mb-3 row">
                        <label for="staticEmail" class="col-sm-2 col-form-label" placeholder="">Email:</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="staticEmail" name="gmail" value="">
                        </div>
                    </div>
                    <div class="mb-3 row">
                        <label for="inputPassword" class="col-sm-2 col-form-label">Password:</label>
                        <div class="col-sm-10">
                            <input type="password" class="form-control" id="inputPasswordLogin" name="pass">
                        </div>
                    </div>
                  
                    <button type="submit">Login</button>
                
                    </form>
                <div class="mb-3 ">
                    <!--                        <div>
                                                <a class="btn" style="width: 100%; background-color:antiquewhite; display: flex;"
                                                    type="submit">
                                                    <image src="img/btn_google.png" style="max-width: 35px;height: 35px;"></image>
                                                    <p style="margin-left: 130px; margin-top: 5px;">Sign with Google</p>
                                                </a>
                                            </div>-->
                    <div style="text-align:center;">
                        <span class="line-title">---------- Or ---------</span>
                    </div>
                    <div >
                        <a class="btn" style="width: 100%; background-color:antiquewhite; display: flex;"
                           type="submit" href="signupAccount.jsp">
                            <button class="btn" data-bs-toggle="modal" data-bs-target="#modal" style="margin-left: 200px; margin-top: 5px;">Sign Up</button>
                        </a>
                        <a href="#modalforgot" data-bs-toggle="modal" data-target="#modalforgot">Forgot your password?</a>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
<!--                <button type="submit" class="btn btn-primary"
                        style="background-color:rgb(255, 123, 0) ;">Login</button>-->
            </div>
        </div>
    </div>
</div>
<!-- Modal Sign Up -->
<!--<div class="modal" id="modal">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <div style="margin-left: 190px;">
                    <a href="signup.jsp">
                    <h3 class="modal-title" id="exampleModalLabel" style="color: rgb(255, 123, 0) ;">Sign up</h3>
                </a>
                </div>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>-->
<!--            <div class="modal-body">
                <div class="mb-3 row">
                    <label for="staticEmail" class="col-sm-2 col-form-label">Email:</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="staticEmail-forgot" value="">
                    </div>
                </div>
                <div class="mb-3 row">
                    <label for="inputPassword" class="col-sm-2 col-form-label">Password:</label>
                    <div class="col-sm-10">
                        <input type="password" class="form-control" id="inputPasswordSignup">
                    </div>
                </div>
                <div class="mb-3 row">
                    <label for="inputPassword" class="col-sm-2 col-form-label">Confirm password:</label>
                    <div class="col-sm-10">
                        <input type="password" class="form-control" id="inputPassword">
                    </div>
                </div>
            </div>-->
            <div class="modal-footer">
<!--                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary"
                        style="background-color:rgb(255, 123, 0) ;">Sign Up</button>
            </div>-->

        </div>
    </div>
</div>
<div class="modal" id="modalforgot">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <div style="justify-items: center;margin-left: 120px">
                    <h3 class="modal-title" id="ModalLabelForgot" style="color: rgb(255, 123, 0) ;">Forgot your password?</h3>
                </div>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <div style="padding-bottom: 20px">Input your email
                </div>
                <div class="mb-3 row">
                    <label for="staticEmail" class="col-sm-2 col-form-label">Email:</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="staticEmailForgot" value="">
                    </div>
                </div>


            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary"
                        style="background-color:rgb(255, 123, 0) ;">Confirm</button>
            </div>

        </div>
    </div>
</div>

</body>

</html>