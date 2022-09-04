<%-- 
    Document   : login
    Created on : 18 thg 8, 2022, 22:01:57
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
        <link rel="stylesheet" href="public/css/styleDangNhap.css">
        <title>login</title>
    </head>

    <body>
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
                                    <h3 class="auth-title">Login account</h3>
                                    <p>Don’t have an account? <a class="lnk-toggler" data-panel=".panel-signup" href="RegisterServlet">Sign Up Free!</a></p>
                                </div>
                                <div class="row">
                                    <div class="col-xs-12 col-sm-12">
                                        <form action="LoginServlet" method="post">
                                            <div class="form-group">
                                                <input type="email" class="form-control" name="email" placeholder="Vui lòng nhập email">
                                            </div>
                                            <div class="form-group">
                                                <div class="pwdMask">
                                                    <input type="password" class="form-control" name="password" placeholder="Vui lòng nhập password">
                                                    <span class="fa fa-eye-slash pwd-toggle"></span>
                                                </div>
                                            </div>
                                            <div class="row remember-row">
                                                <div class="col-xs-6 col-sm-6">
                                                    <label class="checkbox text-left">
                                                        <input type="checkbox" value="remember-me">
                                                        <span class="label-text">Remember me</span>
                                                    </label>
                                                </div>
                                                <div class="col-xs-6 col-sm-6">
                                                    <p class="forgotPwd">
                                                        <a class="lnk-toggler" data-panel=".panel-forgot" href="#">Forgot password?</a>
                                                    </p>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <!--                                                <bu type="submit" class="btn btn-md btn-danger" value="login" >Login with account</a>-->
                                                <button type="submit" class="btn btn-md btn-danger" value="login" >
                                                    Login account
                                                </button>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                            <!--                            <div class="authfy-panel panel-signup text-center">
                                                            <div class="row">
                                                                <div class="col-xs-12 col-sm-12">
                                                                    <div class="authfy-heading">
                                                                        <h3 class="auth-title">Sign up for free!</h3>
                                                                    </div>
                                                                    <form name="signupForm" class="signupForm" action="#" method="POST">
                                                                        <div class="form-group">
                                                                            <input type="email" class="form-control" name="username" placeholder="Email address">
                                                                        </div>
                                                                        <div class="form-group">
                                                                            <input type="text" class="form-control" name="fullname" placeholder="Full name">
                                                                        </div>
                                                                        <div class="form-group">
                                                                            <div class="pwdMask">
                                                                                <input type="password" class="form-control" name="password" placeholder="Password">
                                                                                <span class="fa fa-eye-slash pwd-toggle"></span>
                                                                            </div>
                                                                        </div>
                                                                        <div class="form-group">
                                                                            <p class="term-policy text-muted small">I agree to the <a href="#">privacy policy</a> and <a href="#">terms of service</a>.</p>
                                                                        </div>
                                                                        <div class="form-group">
                                                                            <button class="btn btn-lg btn-primary btn-block" type="submit">Sign up with email</button>
                                                                        </div>
                                                                    </form>
                                                                    <a class="lnk-toggler" data-panel=".panel-login" href="#">Already have an account?</a>
                                                                </div>
                                                            </div>
                                                        </div>-->
                            <!--                            <div class="authfy-panel panel-forgot">
                                                            <div class="row">
                                                                <div class="col-xs-12 col-sm-12">
                                                                    <div class="authfy-heading">
                                                                        <h3 class="auth-title">Recover your password</h3>
                                                                        <p>Fill in your e-mail address below and we will send you an email with further instructions.</p>
                                                                    </div>
                                                                    <form name="forgetForm" class="forgetForm" action="#" method="POST">
                                                                        <div class="form-group">
                                                                            <input type="email" class="form-control" name="username" placeholder="Email address">
                                                                        </div>
                                                                        <div class="form-group">
                                                                            <button class="btn btn-lg btn-primary btn-block" type="submit">Recover your password</button>
                                                                        </div>
                                                                        <div class="form-group">
                                                                            <a class="lnk-toggler" data-panel=".panel-login" href="#">Already have an account?</a>
                                                                        </div>
                                                                        <div class="form-group">
                                                                            <a class="lnk-toggler" data-panel=".panel-signup" href="#">Don’t have an account?</a>
                                                                        </div>
                                                                    </form>
                                                                </div>
                                                            </div>
                                                        </div>-->
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>

</html>