<?php
require("./db/connect.php");
require("./mailerphp/Exception.php");
require("./mailerphp/PHPMailer.php");
require("./mailerphp/SMTP.php");
require("./mailerphp/mail.php");

if (session_status() === PHP_SESSION_NONE) {
    session_start();
}

$txt_thongbaouser = "";
if (isset($_POST['tieptheo'])) {
    $email = $_POST['email'];
    if ($email == "" || !filter_var($email, FILTER_VALIDATE_EMAIL)) {
        if ($email == "") $txt_thongbaouser = "Vui lòng nhập email";
        else $txt_thongbaouser = "Email không hợp lệ. Vui lòng nhập lại email";
    } else {
        $check = mysqli_query($mysqli, "SELECT * FROM quanli_user WHERE user_email='$email'");
        if (mysqli_num_rows($check) > 0) {
            $ramdom = random_int(100000, 999999);
            $_SESSION['email'] = $email;
            $_SESSION['otp'] = $ramdom;
            $body = "CHÀO BẠN! Chúng tôi nhận được yêu cầu đổi mật khẩu của bạn.<br>";
            $body .= "Vui lòng nhập mã này để đổi mật khẩu của bạn: <b>$ramdom</b>";
            sendEmail($email, "YÊU CẦU ĐỔI MẬT KHẨU", $ramdom);

            header("Location: otp.php");
            exit;
        } else {
            $txt_thongbaouser = "Không tìm thấy email trong hệ thống!";
        }
    }
}
?>


<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Quên mật khẩu</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Nunito" rel="stylesheet">
</head>
<body style="font-family: 'Nunito', sans-serif; background-color: #4E73DF;">

<div class="container">
    <div class="row justify-content-center">
        <div class="col-xl-5 col-lg-6 col-md-8">
            <div class="card o-hidden border-0 shadow-lg my-5">
                <div class="card-body p-0">
                    <div class="p-5">
                        <div class="text-center mb-4">
                            <h1 class="h4 mb-2 text-gray-900">Quên mật khẩu</h1>
                            <p class="h6 text-danger">Nhập địa chỉ email của bạn</p>
                        </div>

                        <?php if ($txt_thongbaouser != ""): ?>
                            <div class="alert alert-danger text-center">
                                <?= $txt_thongbaouser ?>
                            </div>
                        <?php endif; ?>

                        <form class="user" method="POST">
                            <div class="form-group mb-3">
                                <input type="email" name="email" class="form-control form-control-user" placeholder="Email" required>
                            </div>
                            <input type="submit" name="tieptheo" value="Tiếp tục" class="btn btn-primary btn-user btn-block w-100">
                        </form>

                        <hr>

                        <div class="text-center mt-3">
                            <a href="index.php" class="text-secondary">Trở lại</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

</body>
</html>
