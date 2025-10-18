<?php
	$mysqli = new mysqli("localhost","root","","qlbanhang");

	// Check connection
	if ($mysqli -> connect_errno) {
	echo "Không thể kết nối với MySQL: " . $mysqli -> connect_error;
	exit();

}
?>