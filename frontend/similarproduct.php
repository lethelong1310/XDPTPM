<style>
    .text-roboto {
        font-family: 'Roboto', sans-serif;
    }
</style>

<h2 class="h2-text text-center text-dark">Sản phẩm tương tự</h2>
<div class="container d-flex justify-content-center mt-50 mb-50">

    <?php
    if (isset($_GET['category']) && $_GET['id'] ) {
        $id_category = $_GET['category'];
        $id_product = $_GET['id'];
    } else {
        $id_category = '';
        $id_product = '';
    }

    $sql_products = mysqli_query($mysqli, "SELECT * FROM product 
    WHERE category_id = '$id_category' AND product_id != '$id_product' LIMIT 4")
    ?>

    <div class="row col-12 text-roboto">
        <?php
        while ($row_product = mysqli_fetch_array($sql_products)) {
            include 'frontend/product_item.php';
        }
        ?>








    </div>
</div>