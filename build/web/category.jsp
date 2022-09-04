<%-- 
    Document   : category
    Created on : 18 thg 8, 2022, 22:01:47
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
        <link rel="stylesheet" href="public/css/styleDanhMucSanPham.css">
        <title>category</title>
    </head>

    <body>
        <%@include file="./inc/header.jsp" %>
        <div class="container">
            <div class="row slice">
                <div class="col-6 slice">
                    <div id="carouselExampleControlss" class="carousel slide" data-bs-ride="carousel">
                        <div class="carousel-inner shadow-lg">
                            <div class="carousel-item active ">
                                <a href="#"><img src="./public/anh1/dress2.png" alt="" width="100%" height="200"></a>
                            </div>
                            <div class="carousel-item">
                                <a href="#"><img src="./public/anh1/dress2.webp" alt="" width="100%" height="200"></a>
                            </div>
                            <div class="carousel-item">
                                <a href="#"><img src="./public/anh1/dress3.webp" alt="" width="100%" height="200"></a>
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
                <div class="col-6 slice">
                    <div id="carouselExampleControls" class="carousel slide" data-bs-ride="carousel">
                        <div class="carousel-inner shadow-lg">
                            <div class="carousel-item active ">
                                <a href="#"><img src="./public/anh1/dress5.webp" alt="" width="100%" height="200"></a>
                            </div>
                            <div class="carousel-item ">
                                <a href="#"><img src="./public/anh1/dress6.webp" alt="" width="100%" height="200"></a>
                            </div>
                            <div class="carousel-item ">
                                <a href="#"><img src="./public/anh1/dress7.webp" alt="" width="100%" height="200"></a>
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
            </div>
            <div class="row">
                <div class="col-12">
                    <ul class="text-black ">
                        <h3>DANH MỤC</h3>
                        <a class="btn " href="./CategoryServlet">ALL</a>
                        <a class="btn " href="./CategoryServlet?id=1">APPLE</a>
                        <a class="btn " href="./CategoryServlet?id=2">SAMSUNG</a>
                        <a class="btn " href="./CategoryServlet?id=3">OPPO</a>
                        <a class="btn " href="./CategoryServlet?id=4">XIAOMI</a>
                        <a class="btn " href="./CategoryServlet?id=5">REAMLE</a>
                        <a class="btn " href="./CategoryServlet?id=6">NOKIA</a>
                        <a class="btn " href="./CategoryServlet?id=7">ASUS</a>
                        <a class="btn " href="./CategoryServlet?id=8">VIVO</a>
                        <a class="btn " href="./CategoryServlet?id=9">MORE</a>
                    </ul>
                </div>
                <hr>
                <div class="col-12">
                    <div class="row text-center">
                        <c:forEach items="${productList}" var="product">
                            <div class="col-3 shadow-lg">
                                <div class="item-thumb">
                                    <a href="ProductDetailServlet?productId=${product.id}" class="text-dark"><img src="${product.img}" alt="" width="230" height="230"></div>
                                        <div class="text-danger">
                                            <p><a href="ProductDetailServlet?productId=${product.id}" class="text-dark">${product.name}</a></p>
                                        </div>
                                        <p>$ ${product.price}</p>
                                        <a href="ProductDetailServlet?productId=${product.id}" class="btn">Chi Tiết Sản Phẩm</a>
                                </div>
                            </c:forEach>
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
