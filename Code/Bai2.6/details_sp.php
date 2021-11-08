<style>
        img {
            width: 100px;
            height: 100px;
            margin-left: auto;
        }

        table {
            border: 4px solid red;
        }

        span,a{
            float: right;
        }

        h2{
            color: #ff5200;
            font-weight: bold;
        }

        th{
            background-color: #ff760033;
        }

        .col-md-2{
            text-align: center;
            border: 1px solid;
        }
    </style>
    <?php
        require("DataProvider.php");
        $masua = $_GET['masp'];
        $sql = "SELECT * FROM sua WHERE Ma_Sua = '$masua' ";
        $result = DataProvider::ExecuteQuery($sql);
        $row = mysqli_fetch_array($result);
        //
        $Hinh = $row['Hinh'];
        $Ten_sua = $row['Ten_sua'];
        $TP_Dinh_Duong = $row['TP_Dinh_Duong'];
        $Loi_ich = $row['Loi_ich'];
        $Trong_luong = $row['Trong_luong'];
        $Don_gia = $row['Don_gia'];
    ?>

    <table align="center" border="1" cellpadding="5" width="500px">
        <tr>
            <th colspan="2">
                <h2 class="text-center"><?= $Ten_sua; ?></h2>
            </th>
        </tr>
        <tr>
            <td>
                <img src="../images/<?= $Hinh ?>" alt="">
            </td>
            <td>
                <p><b>Thành phần dinh dưỡng:</b></p>
                <p><?= $TP_Dinh_Duong; ?></p>
                <p><b>Lợi ích:</b></p>
                <p><?= $Loi_ich; ?></p>
                <span class="text-right"> 
                    <b>Trọng lương: </b><?= $Trong_luong.' gr'; ?> -
                    <b>Đơn giá: </b><?= $Don_gia.' VNĐ'; ?>
                </span>
            </td>
        </tr>
        <tr>
            <td>
                <a href="javascript:window.history.back(-1);">Quay về</a>
            </td>
        </tr>
    </table>
    
