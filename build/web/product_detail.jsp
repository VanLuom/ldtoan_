<%-- 
    Document   : product_detail
    Created on : 18 thg 8, 2022, 22:01:28
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
        <link rel="stylesheet" href="public/css/styleSanPham.css">
        <title>product_detail</title>
    </head>

    <body>
        <%@include file="./inc/header.jsp" %>
        <div class="container">
            <section class="shadow-lg bg-body rounded">
                <form action="OrderServlet" method="post">
                    <input type="hidden" name="action" value="creat"/>
                    <input type="hidden" name="img" value="${product.img}"/>
                    <input type="hidden" name="id" value="${product.id}"/>
                    <input type="hidden" name="name" value="${product.name}"/>
                    <input type="hidden" name="price" value="${product.price}"/>
                    <div class="container">
                        <div class="row section">
                            <div class="col-lg-1 col-md-12 col-sm-12"></div>
                            <div class="col-lg-5 col-md-12 col-sm-12">
                                <div class="sp-wrap sp-non-touch" items="${productList}" var="product">
                                    <div class="sp-large">
                                        <a href="#">
                                            <img src="${product.img}" class="sp-current-big" alt="" width="400" height="400">
                                        </a>
                                    </div>

                                </div>
                            </div>
                            <div class="col-lg-5 col-md-12 col-sm-12">
                                <div class="woo_pr_detail">
                                    <h2 class="woo_pr_title">${product.name}</h2>
                                    <div class="woo_pr_short_desc">
                                        <p>${product.desc}</p>
                                        <a href="category.jsp" class="woo_pr_cats"></a>
                                    </div>
                                    <div class="woo_pr_price">
                                        <div class="woo_pr_offer_price">
                                            <h3>$ ${product.price}
                                            </h3>
                                        </div>
                                    </div>
                                    <div class="left col-6 text-dark">
                                        <input type="number" name="quantity" class="input-group-lg text-center form-control-sm" step="1"
                                               min="0" value="1" title="sl" size="4" placeholder inputmode="numeric">
                                    </div>
                                    <div class="woo_btn_action">
                                        <hr>
                                        <div >
                                            <button class="btn btn-block btn-danger mb-2" type="submit"><a>THÊM VÀO GIỎ HÀNG</a></button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-1 col-md-12 col-sm-12"></div>
                        </div>
                        <div class="row mt-5">
                            <div class="col-lg-12 col-md-12">                              
                            </div>
                        </div>
                    </div>
                </form>              
            </section>
        </div>
        <div class="container">
            <div class="moresp">
                <div class="anhsp text-center">
                    <h5>MÔ TẢ SẢN PHẨM</h5>
                </div>
                <div class="text-danger">
                    <h5>ĐẶC ĐIỂM NỔI BẬT</5>
                </div>
                <div class="text-dark">
                    <p>
                        Hiệu năng vượt trội - Chip Apple A15 Bionic mạnh mẽ, hỗ trợ mạng 5G tốc độ cao
                    </p>
                    <p>
                        Không gian hiển thị sống động - Màn hình 6.7" Super Retina XDR độ sáng cao, sắc nét
                    </p>
                    <p>
                        Trải nghiệm điện ảnh đỉnh cao - Cụm 3 camera kép 12MP, hỗ trợ ổn định hình ảnh quang học
                    </p>
                    <p>
                        Tối ưu điện năng - Sạc nhanh 20 W, đầy 50% pin trong khoảng 30 phút
                    </p>
                </div>
                <div class="text-danger">
                    <h5>ĐÁNH GIÁ</5>
                </div>
                <div class="text-dark">
                    <p>
                        iPhone 12 ra mắt cách đây chưa lâu, thì những tin đồn mới nhất về iPhone 13 Pro Max đã khiến bao tín đồ công nghệ ngóng chờ. Cụm camera được nâng cấp, màu sắc mới, đặc biệt là màn hình 120Hz với phần notch được làm nhỏ gọn hơn chính
                        là những điểm làm cho thu hút mọi sự chú ý trong năm nay.
                    </p>
                </div>
            </div>
            <br>
            <div class="moresp">
                <div class="row">
                    <div class="tonho col-6 text-center">
                        <img src="./public/anh1/anhsppp4.jpg" alt="" width="600" height="320" />
                    </div>
                    <div class="tonho col-6 text-center">
                        <img src="./public/anh1/anhsppp5.jpg" alt="" width="600" height="320" />
                    </div>
                </div>
            </div>
            <div class="text-dark">
                <p>
                    Thiết kế cạnh phẳng sang trọng, nhiều màu sắc nổi bật
                </p>
                <p>
                    Màn hình với tai nhỏ nhỏ hơn, tốc độ làm tươi 120 Hz
                </p>
                <p>
                    Camera nâng cấp, chụp ảnh chất lượng, quay phim chuyên nghiệp
                </p>
                <p>
                    Vi xử lý nâng cấp, dung lượng pin cải thiện
                </p>
                <p>
                    kích cỡ màn hình 6.7 inch với tấm nền Super Retina XDR OLED
                </p>
            </div>
            <div class="moresp">
                <div class="row">
                    <div class="tonho col-6 text-center">
                        <img src="./public/anh1/maxresdefault.jpg" alt="" width="600" height="320" />
                    </div>
                    <div class="tonho col-6 text-center">
                        <img src="./public/anh1/gsmarena_000.jpg" alt="" width="600" height="320" />
                    </div>
                </div>
            </div>
            <div class="moresp">

            </div>
        </div>
        <div class="container shadow-lg p-3 mb-5 bg-body rounded">
            <div class="text-center">
                <h3>ĐÁNH GIÁ KHÁCH HÀNG</h3>
            </div>
            <div class="mb-3">
                <textarea class="form-control" id="exampleFormControlTextarea1" rows="3"></textarea>
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