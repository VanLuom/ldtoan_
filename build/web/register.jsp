<%-- 
    Document   : register
    Created on : 18 thg 8, 2022, 22:02:05
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
        <link rel="stylesheet" href="public/css/styleDangKy.css">
        <title>register</title>
    </head>

    <body>
        <!--                <section>
                            <div class="container">
                                <div class="row justify-content-center selection ">
                                    <div class="col-lg-6 col-md-12 col-sm-12">
                                        <div class="login_signup shadow bg-body rounded">
                                            <div class="row text-center ">
                                                <div class="col-4">
                
                                                </div>
                                                <div class="col-2">
                                                    <a href="LoginServlet">Login</a>
                
                                                </div>
                                                <div class="col-2">
                
                                                    <a href="RegisterServlet">Register</a>
                                                </div>
                                                <div class="col-4">
                
                                                </div>
                                            </div>
                                            <h3 class="login_sec_title text-center">Create Account</h3>
                                            <form action="RegisterServlet" method="post">
                                                <p>${error}</p>
                                                <div class="row">
                                                    <div class="col-lg-12 col-md-12">
                                                        <div class="form-group">
                                                            <label>Email Address</label>
                                                            <input type="email" class="form-control" name="email" placeholder="Vui lòng nhập email">
                                                        </div>
                                                    </div>
                                                    <div class="col-lg-12 col-md-12">
                                                        <div class="form-group">
                                                            <label>Password</label>
                                                            <input type="password" class="form-control" name="password" placeholder="Vui lòng nhập password">
                                                        </div>
                                                    </div>
                                                    <div class="col-lg-12 col-md-12">
                                                        <div class="login_flex_1">
                                                            <input id="news" class="checkbox-custom" name="news" type="checkbox">
                                                            <label for="news" class="checkbox-custom-label">
                                                                receive notifications after registration</label>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row text-center">
                                                    <div class="col-lg-12 col-md-12">
                                                        <div class="form-group">
                                                            <button type="submit" class="btn btn-md btn-danger" value="register">
                                                                register
                                                            </button>
                                                        </div>
                                                    </div>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </section>-->

        <div class="container-fluid">
            <div class="row">
                <div class="authfy-container col-xs-12 col-sm-10 col-md-8 col-lg-6 col-sm-offset-1 col-md-offset-2 col-lg-offset-3">
                    <div class="col-sm-5 authfy-panel-left">
                        <div class="brand-col">
                            <div class="headline">
                                <div class="brand-logo">
                                    <a href="HomeServlet"><img src="./public/anh1/logo.png" alt="" width="230" height="40"></a>
                                </div>
                                <p>Login using social media to get quick access</p>
                                <div class="row social-buttons">
                                    <div class="col-xs-4 col-sm-4 col-md-12">
                                        <a href="#" class="btn btn-block btn-facebook">
                                            <i class="fa-brands fa-facebook-f"></i> <span class="hidden-xs hidden-sm">Signin with facebook</span>
                                        </a>
                                    </div>
                                    <div class="col-xs-4 col-sm-4 col-md-12 ">
                                        <a href="#" class="btn  btn-block btn-twitter">
                                            <i class="fa-brands fa-twitter"></i> <span class="hidden-xs hidden-sm">Signin with twitter</span>
                                        </a>
                                    </div>
                                    <div class="col-xs-4 col-sm-4 col-md-12">
                                        <a href="#" class="btn btn-block btn-google">
                                            <i class="fa-brands fa-google-plus-g"></i> <span class="hidden-xs hidden-sm">Signin with google</span>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-7 authfy-panel-right">
                        <div class="authfy-login">
                            <div class="authfy-panel panel-login text-center active">
                                <div class="authfy-heading">
                                    <h3 class="auth-title">Create account</h3>
                                    <p>You have an account? <a class="lnk-toggler" data-panel=".panel-signup" href="LoginServlet">Sign in!</a></p>
                                </div>
                                <div class="row">
                                    <div class="col-xs-12 col-sm-12">
                                        <form action="RegisterServlet" method="post">
                                            <p>${error}</p>
                                            <div class="form-group">
                                                <input type="email" class="form-control" name="email" placeholder="Vui lòng nhập email">
                                            </div>
                                            <div class="form-group">
                                                <div class="pwdMask">
                                                    <input type="password" class="form-control" name="password" placeholder="Vui lòng nhập password">
                                                    <span class="fa fa-eye-slash pwd-toggle"></span>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <div class="pwdMask">
                                                    <input type="password" class="form-control" name="password" placeholder="Vui lòng xác nhận password">
                                                    <span class="fa fa-eye-slash pwd-toggle"></span>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <button type="submit" class="btn btn-md btn-danger" value="register" >
                                                    Create account
                                                </button>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>

</html>