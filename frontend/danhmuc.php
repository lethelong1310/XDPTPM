<?php
if (isset($_GET['id'])) {
	$id = $_GET['id'];
} else {
	$id = '';
}
$sql_cate = mysqli_query($mysqli, "SELECT * FROM tbl_category, product 
	WHERE tbl_category.category_id = product.category_id AND product.category_id = '$id' 
	ORDER BY product.product_id ASC");

// Lấy tên danh mục thêm vào thẻ h3 VD: Điện thoai;
$sql_category = mysqli_query($mysqli, "SELECT * FROM tbl_category, product 
	WHERE tbl_category.category_id = product.category_id AND product.category_id = '$id' 
	ORDER BY product.product_id ASC");
$sql_title = mysqli_fetch_array($sql_category);
$title = $sql_title['category_name'];

?>

<!-- top Products -->
<div class="ads-grid py-sm-5 py-4">
	<div class="container py-xl-4 py-lg-2">
		<!-- tittle heading -->
		<h3 class="tittle-w3l text-center mb-lg-5 mb-sm-4 mb-3">
			<?php echo $title ?>
		</h3>
		<!-- //tittle heading -->
		<div class="row">
			<!-- product left -->
			<div class="agileinfo-ads-display col-lg-9">
				<div class="wrapper">
					<!-- first section -->
					<div class="product-sec1 px-sm-4 px-3 py-sm-5 py-3 mb-4">
						<div class="row">
							<?php
							while ($row_product = mysqli_fetch_array($sql_cate)) {
								include 'frontend/product_item.php';
							}
							?>

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
</div>
<!-- //top products -->