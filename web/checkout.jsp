<%-- 
    Document   : checkout
    Created on : 3 thg 9, 2022, 08:55:27
    Author     : toanl
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
        <script src="js/jquery-1.11.1.min.js"></script>
        <link rel="stylesheet" href="./public/font/fontawesome-free-6.1.2-web/fontawesome-free-6.1.2-web/css/all.min.css">
        <link rel="stylesheet" href="public/css/styleThanhToan.css">
        <title>thanh toán </title>
    </head>

    <body>
        <%@include file="./inc/header.jsp" %>
        <div class="container">
            <div class="zzz row">
                <h2 class="banner__content text-center">Xác nhận thanh toán</h2>
                <br>
                <hr>
                <div class="col-8 shadow-lg">
                    <form>
                        <h4 class="cttt">Thông tin Khách Hàng</h4>
                        <div class="row mb-5">
                            <div class="col-12 col-md-6">
                                <div class="form-group">
                                    <label for="checkoutBillingFirstName" class="color">Họ</label>
                                    <input class="form-control form-control-sm" id="checkoutBillingFirstName" type="text" placeholder="Họ" required="">
                                </div>
                            </div>
                            <div class="col-12 col-md-6">
                                <div class="form-group">
                                    <label for="checkoutBillingLastName" class="color">Tên</label>
                                    <input class="form-control form-control-sm" id="checkoutBillingLastName" type="text" placeholder="Tên" required="">
                                </div>
                            </div>
                            <div class="col-12">
                                <div class="form-group mb-0">
                                    <label for="checkoutBillingPhone" class="color">Số Điện Thoại</label>
                                    <input class="form-control form-control-sm" id="checkoutBillingPhone" type="tel" placeholder="Số Điện Thoại" required="">
                                </div>
                            </div>
                            <div class="col-12 col-md-4">
                                <div class="form-group">
                                    <label for="checkoutBillingAddress" class="color">Địa Chỉ</label>
                                    <input class="form-control form-control-sm" id="checkoutBillingAddress" type="text" placeholder="Địa Chỉ" required="">
                                </div>
                            </div>
                            <div class="col-12 col-md-4">
                                <div class="form-group">
                                    <label for="checkoutBillingTown" class="color">Phường / Quận</label>
                                    <input class="form-control form-control-sm" id="checkoutBillingTown" type="text" placeholder="Phường / Quận" required="">
                                </div>
                            </div>
                            <div class="col-12 col-md-4">
                                <div class="form-group">
                                    <label for="checkoutBillingCountry" class="color">Thành Phố</label>
                                    <input class="form-control form-control-sm" id="checkoutBillingCountry" type="text" placeholder="Thành Phố" required="">
                                </div>
                            </div>

                        </div>
                        <h4 class="mb-3">Phương thức thanh toán</h4>
                        <div class="list-group list-group-sm mb-5">
                            <div class="list-group-item">
                                <div class="form-check">
                                    <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault1">
                                    <label class="form-check-label" for="flexRadioDefault1">
                                        Thanh toán tiền mặt khi nhận hàng
                                        <i class="fa-solid fa-money-check-dollar"></i>
                                    </label>
                                </div>
                            </div>
                            <div class="list-group-item">
                                <div class="form-check">
                                    <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault1">
                                    <label class="form-check-label" for="flexRadioDefault1">
                                        Thanh toán bằng APP
                                        <img src="./public/anh1/logo2.png" alt="" width="45" height="30" />
                                        <img src="./public/anh1/logo3.png" alt="" width="45" height="30" />
                                        <img src="./public/anh1/logo4.png" alt="" width="45" height="30" />
                                        <img src="./public/anh1/logo5.png" alt="" width="45" height="30" />
                                    </label>
                                </div>
                            </div>
                            <div class="list-group-item">
                                <div class="form-check">
                                    <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault1">
                                    <label class="form-check-label" for="flexRadioDefault1">
                                        Thẻ ATM nội địa/Internet Banking (Hỗ trợ Internet
                                        Banking)
                                        <img class="ml-2"
                                             src="https://frontend.tikicdn.com/_desktop-next/static/img/icons/checkout/icon-payment-method-atm.svg"
                                             alt="...">
                                    </label>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
                <div class="col-4">
                    <div class="cart_detail_box">
                        <div class="card-body">
                            <ul class="list-group ">
                                <li class="list-group-item ">
                                    <h4 style="color: #555;">Thông tin đơn hàng</h4>
                                </li>
                                <li class="list-group-item ">
                                    <c:set var="total" value="0"></c:set> 
                                    <c:forEach items="${cart}" var="orderDetailSession">
                                        <div class="ccach row">
                                            <div class="col-5 text-center">
                                                <a href="#"><img src="${orderDetailSession.img}" alt="" width="120" height="120"></a> 
                                            </div>
                                            <div class="col-7">
                                                <p class="cach">Tên Sp: ${orderDetailSession.name}</p>
                                                <p class="cach">Sl: ${orderDetailSession.quantity}</p>
                                                <p class="cach">Tổng Giá: $${orderDetailSession.price * orderDetailSession.quantity}</p>
                                            </div>
                                        </div>
                                        <hr>
                                        <c:set var="total" value="${total+(orderDetailSession.price * orderDetailSession.quantity)}"></c:set>
                                    </c:forEach>
                                </li>
                                <li class="list-group-item text-center">
                                    <p style="color: #555;">Giao hàng: Miễn Phí Giao Hàng Toàn Quốc</p>
                                </li>
                                <li class="list-group-item text-end">
                                    <p style="color: #555;"><b>Tổng:</b>  <span class="theme-cl">$${total}</span></p>
                                </li>
                                <li class="list-group-item ">
                                    <a href="CheckoutServlet">
                                        <div class="d-grid gap-2 d-md-flex justify-content-md-end">
                                            <button type="button" class="btn btn-danger">XÁC NHẬN THANH TOÁN</button>
                                        </div>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div id="backtop">
            <i class="fa-solid fa-circle-arrow-up"></i>
        </div>
        <%@include file="./inc/footer.jsp" %>
    </body>
    <script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
    <script>
        $(document).ready(function () {
            $(window).scroll(function () {
                if ($(this).scrollTop()) {
                    $('#backtop').fadeIn();
                } else {
                    $('#backtop').fadeOut();
                }
            });
            $("#backtop").click(function () {
                $('html,  body').animate({
                    scrollTop: 0
                }, 100);
            });
        });
    </script>

</html>