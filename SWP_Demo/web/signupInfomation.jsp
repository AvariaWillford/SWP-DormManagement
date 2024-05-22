<%-- 
    Document   : insertCustomer
    Created on : Apr 19, 2024, 9:19:18 AM
    Author     : trant
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="./resources/css/signup.css"/>
    </head>
    <body>
        <div style="margin-left: 500px; margin-top: 200px"> 
            <form action="registerInf" method="post">
                <table style="border: 5px solid blue">
                    <tr>
                        <td style="text-align: center">Gmail</td>
                        <td><input type="text" name="gmail" id=""></td>
                    </tr>
                    <tr style="text-align: center">
                        <td>Roll Name</td>
                        <td><input type="text" name="rollname" id=""></td>

                    </tr>
<!--                    <tr style="text-align: center">
                        <td>Password</td>
                        <td><input type="text" name="password" id=""></td>

                    </tr>-->
                    <!--                    <tr style="text-align: center">
                                            <td>Re-Password</td>
                                            <td><input type="text" name="re-password" id=""></td>
                    
                                        </tr>-->
                    <tr style="text-align: center">
                        <td>Full Name</td>
                        <td><input type="text" name="fullname" id=""></td>

                    </tr>

<!--                    <tr style="text-align: center">
                        <td>Campus</td>
                        <td><select name="choose_campus">
                                <option value="Hoa Lac">Hòa Lạc</option>
                                <option value="Can Tho">Cần Thơ</option>
                                <option value="Da Nang">Đà Nẵng</option>
                                <option value="Ho Chi Minh">Hồ Chí Minh</option>
                                <option value="Quy Nhon">Quy Nhơn</option>
                            </select></td>

                    </tr>-->
                    <tr style="text-align: center">
                        <td>Phone Number</td>
                        <td><input type="text" name="phonenumber" id=""></td>

                    </tr>
                    <tr style="text-align: center">
                        <td>Gender</td>
                        <td><select name="choose_gender">
                                <option value="nam">Nam</option>
                                <option value="nu">Nữ</option>
                               
                            </select>
                        </td>

                    </tr>
                    <tr style="text-align: center">
                        <td>Term</td>
                        <td><input type="text" name="term" id=""></td>

                    </tr>
                    <tr style="text-align: center">
                        <td><input type="submit" name="submit" value="Register"></td>
                    </tr>
                </table>
            </form>
        </div>
    </body>
</html>
