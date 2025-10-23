<?php
if (isset($_POST['seach_btn'])) {
    $tukhoa = $_POST['seach_product'];
}else {
    header('location: index.php');
}

// Lấy tên danh mục thêm vào thẻ h3 VD: Điện thoai;
$sql_seach_product = mysqli_query($mysqli, "SELECT * FROM product 
	WHERE product_name LIKE '%$tukhoa%'
	ORDER BY product_id ASC");

$title = $tukhoa;
$count_seach = mysqli_num_rows($sql_seach_product);

?>

<!-- top Products -->
<div class="ads-grid py-sm-5 py-4">
    <?php
    if ($count_seach >= 1) {
    ?>
        <div class="container py-xl-4 py-lg-2">
            <!-- tittle heading -->
            <h5 class="tittle-w3l text-center text-dark mb-lg-5 mb-sm-4 mb-3">
                Kết quả tìm kiếm sản phẩm: <?php echo $title ?>
            </h5>
            <!-- //tittle heading -->
            <div class="row">
                <!-- product left -->

                <div class="agileinfo-ads-display col-lg-9">
                    <div class="wrapper">
                        <!-- first section -->
                        <div class="product-sec1 px-sm-4 px-3 py-sm-5 py-3 mb-4">
                            <div class="row">
                                <?php

                                while ($row_product = mysqli_fetch_array($sql_seach_product)) {
                                    include 'frontend/product_item.php';
                                }   ?>

                            </div>
                        </div>
                        <!-- //first section -->


                    </div>
                </div>

                <!-- //product left -->
                <!-- product right -->
                <div class="col-lg-3 mt-lg-0 mt-4 p-lg-0">
                    <div class="side-bar p-sm-4 p-3">
                        <div class="search-hotel border-bottom py-2">
                            <h3 class="agileits-sear-head mb-3">Các loai sản phẩm</h3>
                            <form action="#" method="post">
                                <input type="search" placeholder="Tìm kiếm" name="search" required="">
                                <input type="submit" value=" ">
                            </form>
                            <div class="left-side py-2">
                                <ul>
                                    <li>
                                        <input type="checkbox" class="checked">
                                        <span class="span">Trái cây nhập khẩu</span>
                                    </li>
                                    <li>
                                        <input type="checkbox" class="checked">
                                        <span class="span">Trái cây nội địa</span>
                                    </li>
                                    <li>
                                        <input type="checkbox" class="checked">
                                        <span class="span">Các loaị nước ép</span>
                                    </li>
                                    <li>
                                        <input type="checkbox" class="checked">
                                        <span class="span">Các loại sữa hạt</span>
                                    </li>
                                    <li>
                                        <input type="checkbox" class="checked">
                                        <span class="span">Thực phẩm chức năng</span>
                                    </li>


                                </ul>
                            </div>
                        </div>


                    </div>
                    <!-- //product right -->
                </div>
            </div>
        </div>
    <?php

    } else {
    ?>
        <h5 class="text-center text-dark">
            Không tìm thấy sản phẩm : <?php echo $title ?> <br> <br>
            <a href="index.php" class="text-primary small">Trở lại trang chủ</a>
        </h5>
        
    <?php
    }
    ?>
</div>
<!-- //top products -->