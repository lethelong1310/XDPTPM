<?php
require("./db/connect.php");
session_start();

// Nếu chưa có mã OTP trong session thì quay lại trang quên mật khẩu
if (!isset($_SESSION['otp'])) {
    header("Location: quenmatkhau.php");
    exit;
}

$txt_thongbaouser = "";

if (isset($_POST['tieptheo'])) {
    $otp = $_POST['otp'];

    if ($otp == "") {
        $txt_thongbaouser = "Vui lòng nhập mã xác nhận";
    } else if ($otp == $_SESSION['otp']) {
        header("Location: doimatkhau.php");
        exit;
    } else {
        $txt_thongbaouser = "Mã xác nhận không hợp lệ";
    }
}
?>

<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Nhập mã xác nhận</title>
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
                            <h1 class="h4 mb-2 text-gray-900">Nhập mã xác nhận</h1>
                            <p class="h6 text-secondary">Mã xác nhận đã được gửi đến email của bạn. Vui lòng kiểm tra hộp thư và nhập mã bên dưới.</p>
                        </div>

                        <?php if ($txt_thongbaouser != ""): ?>
                            <div class="alert alert-danger text-center">
                                <?= $txt_thongbaouser ?>
                            </div>
                        <?php endif; ?>

                        <form class="user" method="POST">
                            <div class="form-group mb-3">
                                <input type="number" name="otp" class="form-control form-control-user" placeholder="Nhập mã xác nhận" required>
                            </div>
                            <input type="submit" name="tieptheo" value="Tiếp theo" class="btn btn-primary btn-user btn-block w-100">
                        </form>

                        <hr>

                        <div class="text-center mt-3">
                            <a href="quenmatkhau.php" class="text-primary">Gửi lại mã</a> |
                            <a href="index.php" class="text-secondary">Đăng nhập</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

</body>
</html>
