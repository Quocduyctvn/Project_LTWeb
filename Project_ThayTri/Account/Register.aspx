<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Project_ThayTri.Account.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Trang Đăng Ký</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
        integrity="sha384-e4g50CmBjR7PUGtuI9t0z8zcMBsU9FuHs4lCsUbqHMOFmvZx+I0Z2I4YqumRfxp" crossorigin="anonymous">
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        html {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        body {
            background: url(./img/form-dangky/bg.jpg.webp) top center / cover no-repeat;
            color: #333;
        }

        #main {
        }

        .container {
            padding: 80px 0;
        }

        .content {
            padding: 0 15px;
        }

        .content__box {
            margin: 0 15px;
        }

        .box-item {
            display: flex;
            justify-content: space-between;
            padding: 0 15px;
            position: relative;
            min-height: 500px;
        }

            .box-item .box-item-dk {
                flex-basis: 33.3333%;
                position: absolute;
                top: 50%;
                left: 50%;
                transform: translateY(-50%) translateX(-50%);
                min-width: 31%;
                margin-top: 80px;
            }

        .box-item-dk {
            display: flex;
            flex-direction: column;
            padding: 0 15px;
            flex: 1;
            background-color: rgba(255, 255, 255, 0.9);
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

            .box-item-dk .box__text-center {
                font-size: 28px;
                color: #333;
                height: 42px;
                padding: 16px;
                margin-bottom: 24px;
                text-align: center;
                font-weight: 600;
            }

            .box-item-dk.form_box {
                display: flex;
                flex-direction: column;
                align-items: center;
            }

            .box-item-dk .form_input {
                margin-bottom: 8px; /* Increased margin */
                position: relative;
            }

        .form_input input {
            height: 50px;
            font-size: 16px;
            padding: 10px ;
            border: 1px solid #777;
            width: 100%;
            border-radius: 8px;
            background: rgba(255, 255, 255, 0.8);
            color: #333;
            outline: none;
            transition: border-color 0.3s ease-in-out;
        }

            .form_input input::placeholder {
                color: #777;
            }

            .form_input input:focus {
                border-color: #fbceb5;
            }

        .box-item-dk .form_input button {
            height: 50px;
            font-size: 16px;
            padding: 10px 20px;
            border: none;
            width: 100%;
            border-radius: 8px;
            background: #fbceb5;
            color: #333;
            text-transform: uppercase;
            cursor: pointer;
            outline: none;
            transition: background-color 0.3s ease-in-out;
        }

            .box-item-dk .form_input button:hover {
                background-color: #ff9b73;
            }

        .form_box .form_box-remember {
            color: #333;
            display: flex;
            align-items: center;
            justify-content: space-between;
            margin-bottom: 16px;
            font-size: 14px;
        }

        .box-item-dk .box__text-sub {
            font-size: 16px;
            color: #333;
            height: 30px;
            text-align: center;
            margin-bottom: 16px;
            font-weight: 400;
        }

        .box__socil-media {
            display: flex;
            text-align: center;
            justify-content: space-between;
            height: 46px;
        }

        .box-item-dk .box__socil-media > a {
            color: #333;
            text-decoration: none;
            background-color: #fad7a5;
            flex-basis: 45%;
            line-height: 46px;
            border-radius: 8px;
            transition: all linear 0.25s;
        }

        .box-item-dk .box__socil-media a:hover {
            color: #fff;
            background-color: #ff9b73;
        }

        .box-item-dk .box-footer {
            display: flex;
            align-items: center;
            justify-content: space-around;
            margin-top: 20px;
            flex: 1;
            font-size: 14px;
        }

            .box-item-dk .box-footer p {
                color: #333;
                padding: 6px 20px;
                font-size: 16px;
                width: 50%;
            }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div id="main">
                <section class="container">
                    <div class="content">
                        <div class="content__box">
                            <div class="box-item">
                                <div class="box-item-dk">
                                    <h3 class="box__text-center" style="margin: 30px 0 40px;">Đăng Ký Tài Khoản</h3>
                                    <form class="form_box" action="">
                                        <div class="form_input">
                                            <label for="lb_username"  style="font-size: 18px; "><span style="color: red">* </span>Tên đăng Ký</label>
                                            <asp:TextBox ID="username" runat="server" CssClass="form-control" style="margin-top: 10px;"></asp:TextBox>
                                        </div>
                                        <div class="form_input">
                                            <label for="lb_email"  style="font-size: 18px; "><span style="color: red">* </span>Email</label>
                                            <asp:TextBox ID="email" runat="server" CssClass="form-control" style="margin-top: 10px;"></asp:TextBox>
                                        </div>
                                        <div class="form_input">
                                            <label for="lb_pass" style="font-size: 18px; "><span style="color: red">* </span>Mật Khẩu</label>
                                            <asp:TextBox ID="pass" runat="server" TextMode="Password" CssClass="form-control" style="margin-top: 10px;"></asp:TextBox>
                                        </div>
                                        <div class="form_input">
                                             <label for="lb_cfmpass"  style="font-size: 18px; "><span style="color: red">* </span>Nhập lại Mật Khẩu</label>
                                            <asp:TextBox ID="cfmpass" runat="server" TextMode="Password" CssClass="form-control" style="margin-top: 10px;"></asp:TextBox>
                                        </div>
                                        <div class="form_input">
                                            <asp:Button CssClass="btn btn-outline-dark" style="background-color: #ffc59e" ID="button" runat="server" OnClick="handleClickDangKy" Text="Đăng ký Tài khoản" />
                                        </div>
                                        <div class="form_box-remember">
                                            <input class="pdl" type="checkbox" checked><label for="">  Tự động lưu mật khẩu</label>
                                            <label for="" style="margin-left: 180px;"><a>Quên mật khẩu</a></label>
                                        </div>
                                    </form>
                                    <p class="box__text-sub">— Hoặc đăng ký với —</p>
                                    <div class="box__socil-media">
                                        <a href="" class="facebook"><span>Facebook</span></a>
                                        <a href="" class="google"><span>Google</span></a>
                                    </div>
                                    <form class="box-footer" action="" style="margin-bottom: 20px;">
                                        <div style="color: red; font-size: 18px;"><span><a href="#">Đăng Nhập </a></span>|<span><a href="../TrangChu.aspx"> Trang Chủ</a></span></div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
            </div>
        </div>
    </form>
</body>
</html>
