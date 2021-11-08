<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
<?php
session_start();
include "../lib/DataProvider.php";

if (isset($_POST["uname"]) && isset($_POST["psw"])) {
    $us = $_POST["uname"];
    $ps = $_POST["psw"];

    $sql = "SELECT *FROM TaiKhoan WHERE BiXoa = 0
            and TenDangNhap = '$us' and MatKhau='$ps' ";

    $result = DataProvider::ExecuteQuery($sql);
    $row = mysqli_fetch_array($result);

    if ($row == null)
    {    echo "<script>alert('Tài khoản ko tồn tại!')</script>";
         DataProvider::ChangeURL("../modules/mDangNhap.php");
    }
    else {
        $_SESSION["MaTaiKhoan"] = $row["MaTaiKhoan"];
        $_SESSION["MaLoaiTaiKhoan"] = $row["MaLoaiTaiKhoan"];
        $_SESSION["TenHienThi"] = $row["TenHienThi"];

        if ($row["MaLoaiTaiKhoan"] == 2) {
            DataProvider::ChangeURL("../admin/index.php");
        } else {
                DataProvider::ChangeURL("../index.php");
        }
    }
} else
    DataProvider::ChangeURL("../index.php");
?>
</body>
</html>