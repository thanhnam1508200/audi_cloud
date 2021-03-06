
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<style>
        h2{
            color: #d22454a8;
        }

        h2, .main{
            background: lightpink;
            padding: 10px;
        }

        .main{
            height: 64px;
        }

        button{
            
        }
    </style>
     <?php
        require("DataProvider.php");
        $sql = "SELECT * FROM sua"  ;
        $result = DataProvider1::ExecuteQuery($sql);

        if(isset($_POST['submit'])){
            $key = $_POST['key'];

            $sql = "SELECT * FROM sua WHERE Ten_sua LIKE '%$key%'";
           $result = DataProvider1::ExecuteQuery($sql);
            if(!$result) echo 'Cau truy van bi sai';
            $num = $result->num_rows;
            if($num != 0)
                $thongbao = 'Có '.$num.' sản phẩm được tìm thấy!';
            else 
                $thongbao = 'Không tìm thấy sản phẩm này';
        }

    ?>

    <div style="background-color: #ede9e5;" class="container col-md-8">
        <div class="row">
            <h2 style="color: #ff5200;font-weight: bold;text-align: center;">TÌM KIẾM THÔNG TIN SỮA</h2>
            <form method="post" action class="col-md-12 main" style="display: flex; justify-content: center;">
                <h5 class="mt-2 fw-bold" style="color:red;" width="100px">Tên sữa:</h5>
                <input style="height: 40px;" type="text" name="key" class="mb-4 mx-2"
                    value="<?php if(isset($key)) echo $key;?>"placeholder="Search">
                <button style="height: 40px;" width="100px" type="submit" class="btn btn-danger" name="submit">Tìm kiếm</button>
            </form>
        </div>
        <center class="mt-2"><b><?php if (isset($thongbao)) echo $thongbao; ?></b></center>
        <div class="col-md-12 mt-4">
            <table style="border: 2px solid red;text-align: justify;" align="center" border="1" cellspacing="0" width="600px">
                <?php
                    if($result->num_rows != 0) {
                        while($row = $result->fetch_array()) { ?>
                            <?php 
                                $hinh = $row['Hinh']; 
                                $thongbao = $result->num_rows;
                            ?>
                            <tr>
                                <th style="background-color: #d69a6733;" colspan="2">
                                    <h3 class="text-center"><?= $row['Ten_sua']; ?></h3>
                                </th>
                            </tr>
                            <tr>
                                <td>
                                    <img style="width: 100px;height: 100px; margin-left: auto;" src="../Code/images/<?= $hinh ?>" alt="">
                                </td>
                                <td>
                                    <p><b>Thành phần dinh dưỡng:</b></p>
                                    <p><?= $row['TP_Dinh_Duong'] ?></p>
                                    <p><b>Lợi ích:</b></p>
                                    <p><?= $row['Loi_ich'] ?></p>
                                    <span class="text-right"> 
                                        <b>Trọng lương: </b><?= $row['Trong_luong'].' gr'; ?> -
                                        <b>Đơn giá: </b><?= $row['Don_gia'].' VNĐ'; ?>
                                    </span>
                                </td>
                            </tr>
                        <?php } 
                    }
                ?> 
            </table>
        </div>
    </div>
