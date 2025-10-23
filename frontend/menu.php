<?php  
<<<<<<< HEAD
	$sql_category = mysqli_query($mysqli, 'SELECT * FROM tbl_category ORDER BY category_id ASC');
?>	
=======
$currentPage = isset($_GET['quanli']) ? $_GET['quanli'] : ''; 
$currentCategory = isset($_GET['id']) ? $_GET['id'] : ''; 
?>

>>>>>>> db_upgrade
<div class="navbar-inner">
    <div class="container">
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <div class="agileits-navi_search">
                <form action="#" method="post">
                    <select id="agileinfo-nav_search" name="agileinfo_search" class="border" required="">
                        <option value="">Danh mục sản phẩm</option>
                        <?php
<<<<<<< HEAD
                        while ($row_category = mysqli_fetch_array($sql_category)) {
                        ?>
                            <option value="<?php echo $row_category['category_id'] ?>"><?php echo $row_category['category_name'] ?></option>
                        <?php
                        }
                        ?>

                    </select>
                </form>
            </div>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav ml-auto text-center mr-xl-5">
                    <li class="nav-item active mr-lg-2 mb-lg-0 mb-2">
                        <a class="nav-link" href="index.php">Trang chủ
                            <span class="sr-only">(current)</span>
                        </a>
                    </li>
                    <?php
                    $sql_category_danhmuc = mysqli_query($mysqli, 'SELECT * FROM tbl_category ORDER BY category_id ASC');
                    while ($row_category_danhmuc = mysqli_fetch_array($sql_category_danhmuc)) {
                    ?>

                        <li class="nav-item mr-lg-2 mb-lg-0 mb-2">
                            <a class="nav-link" href="?quanli=danhmuc&id=<?php echo $row_category_danhmuc['category_id']?>" role="button" aria-haspopup="true" aria-expanded="false">
                                <?php
                                echo $row_category_danhmuc['category_name'];
                                ?>
                            </a>

                        </li>
                    <?php
                    }
                    ?>

                    <li class="nav-item mr-lg-2 mb-lg-0 mb-2">
                        <a class="nav-link" href="?quanli=gioithieu">Giới thiệu</a>
                    </li>
                    
                    <li class="nav-item">
                        <a class="nav-link" href="?quanli=lienhe">Liên hệ</a>
=======
                        $sql_category = mysqli_query($mysqli, 'SELECT * FROM tbl_category ORDER BY category_id ASC');
                        while ($row_category = mysqli_fetch_array($sql_category)) {
                        ?>
                            <option value="<?php echo $row_category['category_id'] ?>"><?php echo $row_category['category_name'] ?></option>
                        <?php } ?>
                    </select>
                </form>
            </div>

            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav ml-auto text-center mr-xl-5">
                    <!-- Trang chủ -->
                    <li class="nav-item mr-lg-2 mb-lg-0 mb-2">
                        <a class="nav-link <?php echo ($currentPage == '' ? 'active text-danger fw-bold' : ''); ?>" href="index.php">
                            Trang chủ
                        </a>
                    </li>

                    <!-- Danh mục -->
                    <?php
                    $sql_category_danhmuc = mysqli_query($mysqli, 'SELECT * FROM tbl_category ORDER BY category_id ASC');
                    while ($row_category_danhmuc = mysqli_fetch_array($sql_category_danhmuc)) {
                        $activeClass = ($currentPage == 'danhmuc' && $currentCategory == $row_category_danhmuc['category_id'])
                            ? 'active text-danger fw-bold'
                            : '';
                    ?>
                        <li class="nav-item mr-lg-2 mb-lg-0 mb-2">
                            <a class="nav-link <?php echo $activeClass; ?>" href="?quanli=danhmuc&id=<?php echo $row_category_danhmuc['category_id']; ?>">
                                <?php echo $row_category_danhmuc['category_name']; ?>
                            </a>
                        </li>
                    <?php } ?>

                    <!-- Giới thiệu -->
                    <li class="nav-item mr-lg-2 mb-lg-0 mb-2">
                        <a class="nav-link <?php echo ($currentPage == 'gioithieu' ? 'active text-danger fw-bold' : ''); ?>" href="?quanli=gioithieu">Giới thiệu</a>
                    </li>

                    <!-- Liên hệ -->
                    <li class="nav-item">
                        <a class="nav-link <?php echo ($currentPage == 'lienhe' ? 'active text-danger fw-bold' : ''); ?>" href="?quanli=lienhe">Liên hệ</a>
>>>>>>> db_upgrade
                    </li>
                </ul>
            </div>
        </nav>
    </div>
</div>
<<<<<<< HEAD
<!-- //navigation -->
=======

<style>
.nav-link.active {
    color: #dc3545 !important;  /* đỏ */
    font-weight: bold;
    border-bottom: 2px solid #dc3545;
}
</style>
>>>>>>> db_upgrade
