<?php
require '../vendor/autoload.php';
use PhpOffice\PhpSpreadsheet\Spreadsheet;
use PhpOffice\PhpSpreadsheet\Writer\Xlsx;

// Kết nối CSDL
$mysqli = new mysqli("localhost", "root", "", "qlbanhang");
if ($mysqli->connect_errno) {
    die("Kết nối thất bại: " . $mysqli->connect_error);
}

// 1️⃣ Truy vấn dữ liệu thống kê
$totalOrders = $mysqli->query("SELECT COUNT(*) AS total FROM donhang")->fetch_assoc()['total'];
$totalRevenue = $mysqli->query("SELECT SUM(tongDoanhThu) AS total FROM donhang")->fetch_assoc()['total'];
$totalCustomers = $mysqli->query("SELECT COUNT(*) AS total FROM customer")->fetch_assoc()['total'];
$pendingOrders = $mysqli->query("SELECT COUNT(*) AS total FROM donhang WHERE trangThai = 0")->fetch_assoc()['total']; // 0 = chờ xử lý

// 2️⃣ Lấy danh sách đơn hàng chi tiết
$orderQuery = $mysqli->query("
    SELECT d.order_id, d.ngayDatHang, c.customer_name, d.tongDoanhThu, d.trangThai
    FROM donhang d
    JOIN customer c ON d.customer_id = c.customer_id
    ORDER BY d.order_id ASC
");

// 3️⃣ Tạo file Excel
$spreadsheet = new Spreadsheet();
$sheet = $spreadsheet->getActiveSheet();

// Tiêu đề phần thống kê
$sheet->setCellValue('A1', 'BÁO CÁO DOANH THU');
$sheet->mergeCells('A1:E1');
$sheet->getStyle('A1')->getFont()->setBold(true)->setSize(16);

// Phần thống kê tóm tắt
$sheet->setCellValue('A3', 'Tổng đơn hàng');
$sheet->setCellValue('B3', $totalOrders);

$sheet->setCellValue('A4', 'Tổng doanh thu');
$sheet->setCellValue('B4', number_format($totalRevenue, 0, ',', '.') . ' đ');

$sheet->setCellValue('A5', 'Số khách hàng');
$sheet->setCellValue('B5', $totalCustomers);

$sheet->setCellValue('A6', 'Đơn hàng chờ');
$sheet->setCellValue('B6', $pendingOrders);

// Dòng tiêu đề bảng chi tiết
$sheet->setCellValue('A8', 'ID Đơn hàng');
$sheet->setCellValue('B8', 'Ngày đặt');
$sheet->setCellValue('C8', 'Khách hàng');
$sheet->setCellValue('D8', 'Tổng doanh thu');
$sheet->setCellValue('E8', 'Trạng thái');

$sheet->getStyle('A8:E8')->getFont()->setBold(true);

// Ghi dữ liệu đơn hàng
$row = 9;
while ($order = $orderQuery->fetch_assoc()) {
    $sheet->setCellValue('A' . $row, $order['order_id']);
    $sheet->setCellValue('B' . $row, $order['ngayDatHang']);
    $sheet->setCellValue('C' . $row, $order['customer_name']);
    $sheet->setCellValue('D' . $row, number_format($order['tongDoanhThu'], 0, ',', '.') . ' đ');
    $sheet->setCellValue('E' . $row, ($order['trangThai'] == 1 ? 'Hoàn tất' : 'Chờ xử lý'));
    $row++;
}

// Tự động căn chỉnh độ rộng cột
foreach (range('A', 'E') as $col) {
    $sheet->getColumnDimension($col)->setAutoSize(true);
}

// 4️⃣ Xuất file Excel
$filename = 'baocao_donhang_' . date('Y-m-d_His') . '.xlsx';
header('Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
header("Content-Disposition: attachment;filename=\"$filename\"");
header('Cache-Control: max-age=0');

$writer = new Xlsx($spreadsheet);
$writer->save('php://output');

exit;
?>
