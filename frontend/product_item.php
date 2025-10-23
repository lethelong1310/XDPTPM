<div class="col-md-4 product-men mt-5 men-pro-item simpleCart_shelfItem">
    <div class="men-thumb-item text-center">
        <img src="images/<?php echo $row_product['product_image'] ?>" alt="" class="img-fluid">
        <div class="men-cart-pro">
            <div class="inner-men-cart-pro">
                <a href="?quanli=chitietsp&id=<?php echo $row_product['product_id'] ?>&category=<?php echo $row_product['category_id'] ?>" class="link-product-add-cart">Xem sản phẩm</a>
            </div>
        </div>
    </div>
    <div class="item-info-product text-center border-top mt-4">
        <h4 class="pt-1">
            <a href="?quanli=chitietsp&id=<?php echo $row_product['product_id'] ?>">
                <?php echo $row_product['product_name'] ?>
            </a>
        </h4>
        <div class="info-product-price my-2">
            <span class="item_price"><?php echo number_format($row_product['product_discount']) . ".đ" ?></span>
            <del><?php echo number_format($row_product['product_price']) . ".đ" ?></del>
        </div>
        <div class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out">
            <?php if (isset($_SESSION['login_home'])): ?>
                <form action="?quanli=giohang" method="post">
                    <fieldset>
                        <input type="hidden" name="tensanpham" value="<?php echo $row_product['product_name'] ?>" />
                        <input type="hidden" name="sanpham_id" value="<?php echo $row_product['product_id'] ?>" />
                        <input type="hidden" name="giasanpham" value="<?php echo $row_product['product_discount'] ?>" />
                        <input type="hidden" name="hinhanh" value="<?php echo $row_product['product_image'] ?>" />
                        <input type="hidden" name="soluong" value="1" />
                        <input type="submit" name="themgiohang" value="Thêm vào giỏ" class="button" />
                    </fieldset>
                </form>
            <?php else: ?>
                <button type="button" class="btn btn-outline-success w-100" data-toggle="modal" data-target="#loginModal">
                    THÊM VÀO GIỎ
                </button>
            <?php endif; ?>
        </div>
    </div>
</div>
