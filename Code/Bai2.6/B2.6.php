
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <style>
        .col-md-2{
            text-align: center;
            border: 1px solid;
        }
    </style>
        <?php
        require("DataProvider.php");
        $sql = 'SELECT * FROM sua, hang_sua, loai_sua WHERE sua.Ma_hang_sua = hang_sua.Ma_hang_sua and sua.Ma_loai_sua = loai_sua.Ma_loai_sua'  ;
        $result = DataProvider1::ExecuteQuery($sql)
        ?>

    <div class="container" >
        <div class="row">
            <h1 style="color: #ff5200;font-weight: bold;border: 1px solid black;background: #ff760033;position: relative;top: 8px;padding: 10px;" class="text-center">THÔNG TIN CÁC SẢN PHẨM</h1>
            
            <?php 
                if($result->num_rows != 0){
                    while($row = $result->fetch_array()){
                        $masp = $row['Ma_Sua'];
                        echo "<div class='col-md-2'>";
                            echo "<a href='../Bai2.6/details_sp.php?masp=$masp'>"."<b>".$row['Ten_sua']."</b>"."</a>";
                            echo "<br><span>".$row['Trong_luong'].'gr '.' - '."</span>";
                            echo "<span>".$row['Don_gia'].' VNĐ '."</span>";
                            echo '<br><img style="width: 100px;height: 100px;margin-left: auto;" src="../images/'.$row['Hinh'].'"/>';
                        echo "</div>";
                    }
                }
               // $conn->close();
            ?>
        </div>
    </div>
