<%-- 
    Document   : cart
    Created on : 18 thg 8, 2022, 22:01:38
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
        <link rel="stylesheet" href="public/css/styleGioHang.css">
        <title>cart</title>
    </head>

    <body>
        <%@include file="./inc/header.jsp" %>
        <div class="product-info container shadow-lg">
            <h2>Danh Sách Giỏ Hàng</h2>
            <table class="table table-hover align-middle">
                <thead>
                    <tr>
                        <th scope="col">ẢNH SP</th>
                        <th scope="col" class="text-center">TÊN SP</th>
                        <th scope="col" class="text-center">GIÁ</th>
                        <th scope="col" class="text-center">SỐ LƯỢNG</th>
                        <th scope="col" class="text-center">TỔNG</th>
                        <th scope="col" class="text-center"></th>
                    </tr>
                </thead>
                <tbody>
                    <c:set var="total" value="0"></c:set>  
                    <c:forEach items="${cart}" var="orderDetailSession">
                        <tr>
                            <th scope="row">
                                <a href="#"><img src="${orderDetailSession.img}" alt="" width="200" height="200"></a>
                            </th>
                            <td class="text-center">${orderDetailSession.name}</td>
                            <td class="text-center">$${orderDetailSession.price}</td>
                            <td class="product-quantity text-center">${orderDetailSession.quantity}</td>
                            <td class="text-center">$${orderDetailSession.price * orderDetailSession.quantity}</td>
                            <td class="text-center">
                                <form action="OrderServlet" method="post">
                                    <input type="hidden" name="action" value="delete" />
                                    <input type="hidden" name="id" value="${orderDetailSession.id}" />
                                    <button type="submit" class="btn-close" aria-label="Close"></button>
                                </form>
                            </td>
                        </tr>
                        <c:set var="total" value="${total+(orderDetailSession.price * orderDetailSession.quantity)}"></c:set>
                    </c:forEach>
                </tbody>
                <thead>
                <th scope="col"></th>
                <th scope="col" class="text-center"></th>
                <th scope="col" class="text-center"></th>
                <th scope="col" class="tong text-center">TẠM TÍNH</th>
                <th scope="col" class="tong text-center"><span class="theme-cl">$${total}</span></th>
                <th scope="col" class="text-center"></th>
                </thead>
            </table>
            <a href="thanhtoanServlet">
                <div class="d-grid gap-2 d-md-flex justify-content-md-end">
                    <button type="button" class="btn btn-danger">THANH TOÁN</button>
                </div>
            </a>
        </div>
        <div class="bbb container">
            <div class="row">
                <div class="col-6">
                    <div id="carouselExampleControls" class="carousel slide" data-bs-ride="carousel">
                        <div class="carousel-inner">
                            <div class="carousel-item active">
                                <a href="#"><img src="./public/anh1/dress03.png" class="d-block w-100" alt="" width="600" height="270"></a>
                            </div>
                            <div class="carousel-item ">
                                <a href="#"><img src="./public/anh1/dress04.png" class="d-block w-100" alt="" width="600" height="270"></a>
                            </div>
                            <div class="carousel-item ">
                                <a href="#"><img src="./public/anh1/dress05.png" class="d-block w-100" alt="" width="600" height="270"></a>
                            </div>
                            <div class="carousel-item ">
                                <a href="#"><img src="./public/anh1/dress06.png" class="d-block w-100" alt="" width="600" height="270"></a>
                            </div>
                            <div class="carousel-item ">
                                <a href="#"><img src="./public/anh1/dress07.png" class="d-block w-100" alt="" width="600" height="270"></a>
                            </div>
                        </div>
                        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="prev">
                            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                            <span class="visually-hidden">Previous</span>
                        </button>
                        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="next">
                            <span class="carousel-control-next-icon" aria-hidden="true"></span>
                            <span class="visually-hidden">Next</span>
                        </button>
                    </div>
                </div>
                <div class="col-6">
                    <div id="carouselExampleControlss" class="carousel slide" data-bs-ride="carousel">
                        <div class="carousel-inner">
                            <div class="carousel-item active">
                                <a href="#"><img src="./public/anh1/dress03.png" class="d-block w-100" alt="" width="600" height="270"></a>
                            </div>
                            <div class="carousel-item ">
                                <a href="#"><img src="./public/anh1/dress04.png" class="d-block w-100" alt="" width="600" height="270"></a>
                            </div>
                            <div class="carousel-item ">
                                <a href="#"><img src="./public/anh1/dress05.png" class="d-block w-100" alt="" width="600" height="270"></a>
                            </div>
                            <div class="carousel-item ">
                                <a href="#"><img src="./public/anh1/dress06.png" class="d-block w-100" alt="" width="600" height="270"></a>
                            </div>
                            <div class="carousel-item ">
                                <a href="#"><img src="./public/anh1/dress07.png" class="d-block w-100" alt="" width="600" height="270"></a>
                            </div>
                        </div>
                        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControlss" data-bs-slide="prev">
                            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                            <span class="visually-hidden">Previous</span>
                        </button>
                        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControlss" data-bs-slide="next">
                            <span class="carousel-control-next-icon" aria-hidden="true"></span>
                            <span class="visually-hidden">Next</span>
                        </button>
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