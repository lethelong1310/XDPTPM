-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 09, 2024 at 06:23 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `qlbanhang`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cart_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL, --
  `product_id` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_price` varchar(50) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `product_image` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--
CREATE TABLE `customer` (
  `customer_id` INT(11) NOT NULL ,
  `customer_name` VARCHAR(100) NOT NULL,
  `user_code` VARCHAR(10) NOT NULL,
  `customer_phone` VARCHAR(50) NOT NULL,
  `customer_address` VARCHAR(200) NOT NULL,
  `customer_email` VARCHAR(150) NOT NULL,
  `payments` INT(11) NOT NULL,
  `customer_note` TEXT NOT NULL,
  `user_id` INT
  
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--
INSERT INTO `customer` (`customer_id`, `customer_name`, `user_code`, `customer_phone`, `customer_address`, `customer_email`, `payments`, `customer_note`, `user_id`) VALUES
(25, 'Lê Thị B', '', '0336246789', 'Hà Nội', 'ltb@gmail.com', 0, 'Gioa nhanh', NULL),
(26, 'Nguyễn Lê Anh Khoa', '', '0336246546', 'Cần Thơ', 'khoacntt2003@gmail.com', 0, 'Gói kĩ', 15),
(27, 'Nguyễn Văn C', '', '0336246546', 'Cần Thơ', 'nvc@gmail.com', 0, 'gói hàng kĩ nha', NULL),
(28, 'Ngô Bá Khá', '', '0336246789', 'Hà Nội', 'nbkha@gmail.com', 0, 'Tao boom hàng', NULL),
(29, 'Lý Thường Kiệt', '', '0909135329', 'Hẻm 51, An Khánh, Ninh Kiều, Cần Thơ', 'kiet123@gmail.com', 0, 'Đóng hàng kĩ', 14),
(30, 'Lý Thường Kiệt', '', '0909135329', 'Hẻm 51, An Khánh, Ninh Kiều, Cần Thơ', 'kiet123@gmail.com', 1, 'Nhớ tặng quà', 14),
(31, 'admin', '', '0336216546', 'Cần Thơ', 'admin@gmail.com', 1, 'Hello', 1),
(32, 'admin', '', '0336216546', 'Cần Thơ', 'admin@gmail.com', 1, 'Hello', 1),
(33, 'admin', '', '0336216546', 'Cần Thơ', 'admin@gmail.com', 0, 'Hi', 1),
(37, 'Nguyễn Anh Khoa', '6370', '0336216546', 'An Khánh, Ninh Kiều, Cần Thơ', 'khoacntt2003@gmail.com', 0, 'Hi', 15),
(38, 'Nguyễn Anh Khoa', '6370', '0336216546', 'An Khánh, Ninh Kiều, Cần Thơ', 'khoacntt2003@gmail.com', 0, 'Hello', 15),
(39, 'Phạm Băng Băng', '6380', '0909135689', 'Cái Răng, Cần Thơ', 'pbangbang@gmail.com', 0, 'Đóng hàng kĩ', 17),
(40, 'Châu Cách Cach', '3387', '0336216645', 'Khu dân cư Hoàng Quân, Cái Răng, Cần Thơ', 'cccach@gmail.com', 0, 'c cc', 18),
(41, 'Châu Cách Cach', '3387', '0336216645', 'Khu dân cư Hoàng Quân, Cái Răng, Cần Thơ', 'cccach@gmail.com', 0, 'Hi cc', 18),
(42, 'Châu Cách Cach', '3387', '0336216645', 'Khu dân cư Hoàng Quân, Cái Răng, Cần Thơ', 'cccach@gmail.com', 0, 'Hi d3', 18),
(43, 'Châu Cách Cach', '3387', '0336216645', 'Khu dân cư Hoàng Quân, Cái Răng, Cần Thơ', 'cccach@gmail.com', 0, 'Hi nhoa', 18),
(44, 'Lê Anh Tuấn', '1326', '0336216123', 'Hẻm 51, An Khánh, Ninh Kiều, Cần Thơ', 'leanhtuan@gmail.com', 1, 'test', 19),
(45, 'Khách hàng 123', '', '0123456789', 'Cần Thơ', 'khachhang@gmail.com', 0, '', 2),
(46, 'Khách hàng 123', '', '0123456789', 'Cần Thơ', 'khachhang@gmail.com', 0, '', 2);

-- --------------------------------------------------------

--
-- Table structure for table `donhang`
--

CREATE TABLE `donhang` (
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `mahang` int(11) NOT NULL,
  `soluong` int(11) NOT NULL,
  `tongDoanhThu` int(11) NOT NULL,
  `trangThai` tinyint(4) NOT NULL,
  `ngayDatHang` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `donhang`
--

INSERT INTO `donhang` (`order_id`, `product_id`, `customer_id`, `mahang`, `soluong`, `tongDoanhThu`, `trangThai`, `ngayDatHang`) VALUES
(24, 3, 25, 5749, 1, 0, 0, '2023-07-17'),
(25, 18, 26, 865, 1, 0, 0, '2023-07-17'),
(26, 1, 26, 865, 1, 0, 0, '2023-07-17'),
(27, 7, 27, 4400, 1, 0, 0, '2023-07-17'),
(28, 18, 27, 4400, 1, 0, 0, '2023-07-17'),
(29, 3, 27, 4400, 1, 0, 0, '2023-07-17'),
(30, 6, 28, 565, 3, 0, 0, '2023-07-17'),
(31, 7, 28, 565, 4, 0, 0, '2023-07-17'),
(32, 21, 29, 3495, 1, 0, 0, '2023-08-05'),
(33, 4, 29, 3495, 1, 0, 0, '2023-08-05'),
(34, 6, 29, 3495, 1, 0, 0, '2023-08-05'),
(35, 5, 29, 3495, 2, 0, 0, '2023-08-05'),
(36, 4, 30, 5380, 1, 0, 0, '2023-08-05'),
(37, 6, 30, 5380, 1, 0, 0, '2023-08-05'),
(38, 8, 32, 8947, 1, 136000, 0, '2023-08-05'),
(39, 6, 32, 8947, 1, 136000, 0, '2023-08-05'),
(40, 21, 33, 1540, 1, 128000, 0, '2023-08-05'),
(41, 1, 33, 1540, 1, 128000, 0, '2023-08-05'),
(47, 6, 37, 2731, 1, 120000, 0, '2023-08-06'),
(48, 7, 38, 7013, 1, 50000, 1, '2023-08-06'),
(49, 5, 39, 3595, 1, 100000, 0, '2023-08-06'),
(50, 5, 40, 5573, 1, 100000, 1, '2023-08-06'),
(51, 7, 41, 7384, 1, 50000, 1, '2023-08-06'),
(52, 19, 42, 8206, 1, 113000, 2, '2023-08-06'),
(53, 21, 42, 8206, 1, 113000, 2, '2023-08-06'),
(54, 18, 43, 5145, 1, 100000, 0, '2023-08-06'),
(55, 19, 43, 5145, 1, 100000, 0, '2023-08-06'),
(56, 2, 43, 5145, 1, 100000, 0, '2023-08-06'),
(57, 21, 44, 8499, 1, 194000, 0, '2023-08-08'),
(58, 8, 44, 8499, 1, 194000, 0, '2023-08-08'),
(59, 6, 44, 8499, 1, 194000, 0, '2023-08-08'),
(60, 20, 45, 8672, 1, 160000, 0, '2024-10-09'),
(61, 2, 45, 8672, 1, 160000, 0, '2024-10-09'),
(62, 5, 45, 8672, 1, 160000, 0, '2024-10-09'),
(63, 19, 46, 5775, 1, 350000, 0, '2024-10-09'),
(64, 18, 46, 5775, 1, 350000, 0, '2024-10-09'),
(65, 1, 46, 5775, 1, 350000, 0, '2024-10-09'),
(66, 5, 46, 5775, 2, 350000, 0, '2024-10-09');

-- --------------------------------------------------------

--
-- Table structure for table `giaodich`
--

CREATE TABLE `giaodich` (
  `giaodich_id` int(11) NOT NULL,
  `khachhang_id` int(11) NOT NULL,
  `sanpham_id` int(11) NOT NULL,
  `soluong` int(11) NOT NULL,
  `magiaodich` varchar(50) NOT NULL,
  `ngayThangNam` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `giaodich`
--

INSERT INTO `giaodich` (`giaodich_id`, `khachhang_id`, `sanpham_id`, `soluong`, `magiaodich`, `ngayThangNam`) VALUES
(4, 25, 3, 1, '5749', '2023-07-17'),
(5, 26, 18, 1, '865', '2023-07-17'),
(6, 26, 1, 1, '865', '2023-07-17'),
(7, 27, 7, 1, '4400', '2023-07-17'),
(8, 27, 18, 1, '4400', '2023-07-17'),
(9, 27, 3, 1, '4400', '2023-07-17'),
(10, 28, 6, 3, '565', '2023-07-17'),
(11, 28, 7, 4, '565', '2023-07-17'),
(12, 29, 21, 1, '3495', '2023-08-05'),
(13, 29, 4, 1, '3495', '2023-08-05'),
(14, 29, 6, 1, '3495', '2023-08-05'),
(15, 29, 5, 2, '3495', '2023-08-05'),
(16, 30, 4, 1, '5380', '2023-08-05'),
(17, 30, 6, 1, '5380', '2023-08-05'),
(18, 32, 8, 1, '8947', '2023-08-05'),
(19, 32, 6, 1, '8947', '2023-08-05'),
(20, 33, 21, 1, '1540', '2023-08-05'),
(21, 33, 1, 1, '1540', '2023-08-05'),
(27, 37, 6, 1, '2731', '2023-08-06'),
(28, 38, 7, 1, '7013', '2023-08-06'),
(29, 39, 5, 1, '3595', '2023-08-06'),
(30, 40, 5, 1, '5573', '2023-08-06'),
(31, 41, 7, 1, '7384', '2023-08-06'),
(32, 42, 19, 1, '8206', '2023-08-06'),
(33, 42, 21, 1, '8206', '2023-08-06'),
(34, 43, 18, 1, '5145', '2023-08-06'),
(35, 43, 19, 1, '5145', '2023-08-06'),
(36, 43, 2, 1, '5145', '2023-08-06'),
(37, 44, 21, 1, '8499', '2023-08-08'),
(38, 44, 8, 1, '8499', '2023-08-08'),
(39, 44, 6, 1, '8499', '2023-08-08'),
(40, 45, 20, 1, '8672', '2024-10-09'),
(41, 45, 2, 1, '8672', '2024-10-09'),
(42, 45, 5, 1, '8672', '2024-10-09'),
(43, 46, 19, 1, '5775', '2024-10-09'),
(44, 46, 18, 1, '5775', '2024-10-09'),
(45, 46, 1, 1, '5775', '2024-10-09'),
(46, 46, 5, 2, '5775', '2024-10-09');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_details` text NOT NULL,
  `product_description` text NOT NULL,
  `product_price` varchar(100) NOT NULL,
  `product_discount` varchar(100) NOT NULL,
  `product_acitve` int(11) NOT NULL,
  `product_hot` int(11) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `product_image` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `category_id`, `product_name`, `product_details`, `product_description`, `product_price`, `product_discount`, `product_acitve`, `product_hot`, `product_quantity`, `product_image`) VALUES
(1, 1, 'CHERRY MỸ', 'Cherry Mỹ nhập khẩu có nguồn gốc xuất xứ rõ ràng', 'Cherry Mỹ nhập khẩu được nhiều người ưa chuộng. Đặc điểm của giống dưa này là quả có dáng tròn, vỏ dày có hình gân lưới bên ngoài. Bên trong có phần thịt và hạt dưa màu đỏ cam, giòn ngọt, thanh mát. Lưới trên trái càng chằn chịt, dưa càng ngọt. Đây là loại trái cây được yêu thích bởi màu sắc đẹp mắt và vị ngon ngọt.', '82000', '70000', 1, 0, 30, 'traicay1.png'),
(2, 1, 'NHO MẪU ĐƠN- HÀN QUỐC', 'Set 5 trái chuối già giống Nam Mỹ', 'Loại chuối già được nhiều khách hàng ưa chuộng. Chuối chứa nhiều chất dinh dưỡng như kali, chất xơ, vitamin,... Chuối ăn ngon nhất khi chín vàng, trên vỏ bắt đầu có đốm nâu, khi đó chuối sẽ rất ngọt...Cam kết đúng khối lượng, bao bì kín đáo, an toàn và bảo đảm hợp vệ sinh.', '23000', '20000', 1, 0, 10, 'traicay2.jpg'),
(3, 1, 'KIWI XANH', 'Kiwi Úc 1kg (2- 3 trái)', 'Kiwi là trái cây được trồng và nhập khẩu trực tiếp từ Úc. Đạt tiêu chuẩn xuất khẩu toàn cầu. Qủa có vỏ màu vàng tươi, vị ngọt xen chút chua nhẹ, tép thịt mọng nước. Chứa nhiều vitamin C tốt cho da, giúp tăng cường sức đề kháng và hồi phục sức khỏe nhanh.', '69000', '55000', 1, 0, 50, 'traicay3.jpg'),
(4, 1, 'TÁO ENVY', 'Táo Envy 1kg (3 - 5 trái)', 'Táo Envy là trái cây đặc sản nổi tiếng của Việt Nam. Bưởi da xanh có đặc điểm vỏ có màu xanh đến xanh hơi vàng khi chín.Tép bưởi màu hồng đỏ, vị ngọt thanh, màu sắc đẹp mắt, là một trong những loại trái cây cực tốt cho sức khoẻ với nhiều công dụng thần kỳ khác nhau đã được khoa học chứng minh.', '75000', '69000', 1, 0, 15, 'traicay4.jpg'),
(5, 1, 'TÁO QUEEN NEW ZEALAND', 'Táo NEW ZEALAND 1 kg (3 - 4 trái)', 'Táo Queen là trái cây đặc sản của NEW ZEALAND. Táo xanh hay táo ta, táo gai, tên khoa học Ziziphus mauritiana, là cây ăn quả nhiệt đới có nguồn gốc châu Phi. Khi ăn rửa sạch và ăn luôn vỏ, có vị ngọt thanh, giòn tan trong miệng. Quả ngon hơn khi chấm cùng muối ớt/muối tôm', '120000', '100000', 1, 1, 10, 'traicay5.jpg'),
(6, 1, 'DƯA LƯỚI ĐÀI LOAN', 'Dưa lưới trái 500g trở lên', 'Dưa lưới là trái cây có nguồn gốc nhập khẩu chất lượng cao. Dưa lưới là loại trái cây phổ biến và được ưa chuộng tại Việt Nam với vị thanh ngọt và ngát hương thơm dễ chịu chịu hấp. Cam kết bán đúng khối lượng, bao bì sạch sẽ, an toàn.', '150000', '120000', 1, 1, 10, 'traicay6.jpg'),
(7, 2, 'MĂNG CỤT BẢO LỘC', 'Măng cụt 1 Kg (10 - 12 trái)', 'Măng cụt tươi: màu xanh tươi, vị ngọt tự nhiên. Món ngon trong các món salad, nấu canh, xào hay nướng. Dinh dưỡng cao, tạo sự tươi mới và phong phú cho món ăn.', '65000', '50000', 1, 1, 10, 'traicay7.jpg'),
(8, 2, 'THANH LONG RUỘT TRẰNG', 'Thanh long ruột trắng 1 Kg (2 - 3 trái)', 'Thanh long: Quả tròn, màu đỏ tươi, vỏ gai nhọn. Nước lạnh, ngọt thanh, chứa nhiều vitamin và chất chống oxy hóa. Hương thơm dịu nhẹ, thích hợp làm nước ép, trái cây hấp dẫn trong mùa hè.', '20000', '16000', 1, 0, 30, 'traicay8.jpg'),
(18, 2, 'CHUỐI FOHLA', 'Chuối 1 Kg (3 - 4 trái)', 'Chuối: Quả dẻo, màu vàng, hình dáng cong. Chứa nhiều chất xơ, kali và vitamin C. Thích hợp làm sinh tố, món tráng miệng và bổ sung năng lượng. Vị ngọt tự nhiên, dễ tiêu hóa và có tác dụng làm dịu cảm giác thèm ăn.', '30000', '25000', 0, 0, 50, 'traicay9.jpg'),
(19, 3, 'HẠNH NHÂN BƠ MẬT ONG', 'Sữa hạnh nhân 210G', 'Sữa hạnh nhân: Đậm đà, mịn màng. Chứa chất béo lành mạnh, giàu canxi, vitamin E và chất xơ. Phù hợp cho người ăn chay, dùng trong nấu ăn và làm đồ uống. Tạo cảm giác ngon miệng và có lợi cho sức khỏe.Sữa hạnh nhân: Đậm đà, mịn màng. Chứa chất béo lành mạnh, giàu canxi, vitamin E và chất xơ. Phù hợp cho người ăn chay, dùng trong nấu ăn và làm đồ uống. Tạo cảm giác ngon miệng và có lợi cho sức khỏe.', '60000', '55000', 0, 0, 150, 'douong1.jpg'),
(20, 3, 'SỮA ÓC CHÓ HÀN QUỐC', 'Sữa óc chó 195ML', 'Sữa óc chó: Sữa độc đáo từ hạt óc chó, thơm ngon và béo ngậy. Chứa nhiều chất béo lành mạnh, axit béo omega-3 và vitamin E. Giúp cung cấp dinh dưỡng, tăng cường trí nhớ và chống oxi hóa. Lựa chọn tuyệt vời cho sức khỏe và sự thưởng thức.', '45000', '40000', 0, 0, 200, 'douong2.jpg'),
(21, 3, 'HỘP SỮA HẠT WALNUTT', 'Sữa hạt óc chó 180ML', 'Sữa óc chó: Sữa độc đáo từ hạt óc chó, thơm ngon và béo ngậy. Chứa nhiều chất béo lành mạnh, axit béo omega-3 và vitamin E. Giúp cung cấp dinh dưỡng, tăng cường trí nhớ và chống oxi hóa. Lựa chọn tuyệt vời cho sức khỏe và sự thưởng thức.', '65000', '58000', 0, 0, 120, 'douong3.jpg');

-- --------------------------------------------------------

--

-- --------------------------------------------------------

--
-- Table structure for table `quanli_user`
--

CREATE TABLE `quanli_user` (
  `user_id` int(11) NOT NULL,
  `role` tinyint(1) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `user_code` varchar(10) NOT NULL,
  `user_email` varchar(50) NOT NULL,
  `user_phone` varchar(10) NOT NULL,
  `user_address` varchar(255) NOT NULL,
  `user_password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `quanli_user`
--

INSERT INTO `quanli_user` (`user_id`, `role`, `user_name`, `user_code`, `user_email`, `user_phone`, `user_address`, `user_password`) VALUES
(1, 1, 'admin', '', 'admin@gmail.com', '0336216546', 'Cần Thơ', 'admin123456'),
(2, 0, 'Khách hàng 123', '', 'khachhang@gmail.com', '0123456789', 'Cần Thơ', 'admin123456'),
(11, 0, 'Nguyễn Văn AA', '', 'a123@gmail.com', '0336216222', 'Cái Răng, Cần Thơ', '123456'),
(12, 0, 'Nguyễn Văn A', '', 'nva@gmail.com', '0909135599', 'An Khánh, Ninh Kiều, Cần Thơ', '123456'),
(13, 0, 'Trần Văn A', '', 'khachhang123@gmail.com', '0909135599', 'Cần Thơ', '654321'),
(14, 0, 'Lý Thường Kiệt', '', 'kiet123@gmail.com', '0909135323', 'Hẻm 51, An Khánh, Ninh Kiều, Cần Thơ', '123456'),
(15, 0, 'Nguyễn Anh Khoa', '6370', 'khoacntt2003@gmail.com', '0336216546', 'An Khánh, Ninh Kiều, Cần Thơ', '1234567'),
(17, 0, 'Phạm Băng Băng', '6380', 'pbangbang@gmail.com', '0909135689', 'Cái Răng, Cần Thơ', '123456'),
(18, 0, 'Châu Cách Cách', '3387', 'cccach@gmail.com', '0336216645', 'Khu dân cư Hoàng Quân, Cái Răng, Cần Thơ', '123456'),
(19, 0, 'Lê Anh Tuấn', '1326', 'leanhtuan@gmail.com', '0336216123', 'Hẻm 51, An Khánh, Ninh Kiều, Cần Thơ', '123456'),
(20, 0, 'khoa', '0', 'abc@gmail.com', '0123456789', 'Cần Thơ', 'abc@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`category_id`, `category_name`) VALUES
(1, 'Trái cây nhập'),
(2, 'Trái cây nội'),
(3, 'Đồ uống');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cart_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `donhang`
--
ALTER TABLE `donhang`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `giaodich`
--
ALTER TABLE `giaodich`
  ADD PRIMARY KEY (`giaodich_id`),
  ADD KEY `khachhang_id` (`khachhang_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `category_id` (`category_id`);

--

--

--
-- Indexes for table `quanli_user`
--
ALTER TABLE `quanli_user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`category_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=146;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `donhang`
--
ALTER TABLE `donhang`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `giaodich`
--
ALTER TABLE `giaodich`
  MODIFY `giaodich_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--

--
-- AUTO_INCREMENT for table `quanli_user`
--
ALTER TABLE `quanli_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `donhang`
--
ALTER TABLE `donhang`
  ADD CONSTRAINT `donhang_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`);

--
-- Constraints for table `giaodich`
--
ALTER TABLE `giaodich`
  ADD CONSTRAINT `giaodich_ibfk_1` FOREIGN KEY (`khachhang_id`) REFERENCES `customer` (`customer_id`);

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `tbl_category` (`category_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
