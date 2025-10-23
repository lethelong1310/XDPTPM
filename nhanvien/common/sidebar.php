<style>
        .bg-white {
            background-color: white;
        }
        .rounded {
            border-radius: 5px;
        }
        .mx-2 {
            margin-left: 10px;
            margin-right: 10px;
        }
        .text-black {
            color: black;
        }
</style>

<!-- Sidebar -->
<!-- Sidebar -->
<ul class="navbar-nav bg-gradient-black sidebar sidebar-dark accordion" id="accordionSidebar">

    <!-- Sidebar - Brand -->
    <a class="sidebar-brand d-flex align-items-center justify-content-center" href="index.php">
        <div class="sidebar-brand-icon">
            <i class="fas fa-fw fa-user-shield"></i>
        </div>
        <div class="sidebar-brand-text mx-3">Nhân viên</div>
    </a>

    <!-- Divider -->
    <hr class="sidebar-divider my-0">

    <!-- Nav Item - Dashboard -->
    <li class="nav-item">
        <a class="nav-link" href="index.php">
            <i class="fas fa-fw fa-tachometer-alt"></i>
            <span>Dashboard</span>
        </a>
    </li>

    <!-- Divider -->
    <hr class="sidebar-divider">

    <!-- Nav Item - Đơn hàng -->
    <li class="nav-item active">
        <a class="nav-link" href="donhang.php">
            <i class="fas fa-fw fa-shopping-cart"></i>
            <span>Đơn hàng</span>
        </a>
    </li>
    
    <!-- Nav Item - Sản phẩm -->
    <li class="nav-item active">
        <a class="nav-link" href="xulysanpham.php">
            <i class="fas fa-fw fa-tags"></i>
            <span>Sản phẩm</span>
        </a>
    </li>

    <!-- Nav Item - Khách hàng -->
    <li class="nav-item active">
        <a class="nav-link" href="customer.php">
            <i class="fas fa-fw fa-users"></i>
            <span>Khách hàng</span>
        </a>
    </li>

    <!-- Nav Item - Danh mục -->
    <li class="nav-item active">
        <a class="nav-link" href="xulydanhmuc.php">
            <i class="fas fa-fw fa-folder-open"></i>
            <span>Danh mục</span>
        </a>
    </li>

    <!-- Divider -->
    <hr class="sidebar-divider d-none d-md-block">

    <!-- Nav Item - Đăng xuất -->
    <li class="nav-item">
        <a class="nav-link" href="#" data-toggle="modal" data-target="#logoutModal">
            <i class="fas fa-sign-out-alt fa-fw"></i>
            <span class="text-primary nav-item">Đăng xuất</span>
        </a>
    </li>

    <!-- Divider -->
    <hr class="sidebar-divider d-none d-md-block">

</ul>

<!-- Highlight Script -->
<script>
    // Lấy URL trang hiện tại
    var currentPageUrl = window.location.href;

    // Lấy tất cả các liên kết điều hướng
    var navLinks = document.querySelectorAll(".nav-link");

    // Lặp qua từng liên kết để tìm trang hiện tại
    navLinks.forEach(function(link) {
        var linkUrl = link.href;

        // Kiểm tra xem URL liên kết có chứa URL trang hiện tại không
        if (currentPageUrl.includes(linkUrl)) {
            // Nếu URL liên kết khớp với URL trang hiện tại, thêm lớp vào li và span tương ứng
            link.parentElement.classList.add("bg-white", "rounded", "mx-2", "text-black");
            var iconElement = link.querySelector("i");
            var categoryName = link.querySelector("span");

            if (iconElement || categoryName) {
                iconElement.classList.add("text-black");
                categoryName.classList.add("text-black");
            }
        }
    });
</script>

