
<style>
        table,th,tr,td{
            border: 1px solid gray;
        }
    </style>
     <?php
        require("DataProvider.php");
        $sql = 'SELECT * FROM sua, hang_sua, loai_sua WHERE sua.Ma_hang_sua = hang_sua.Ma_hang_sua and sua.Ma_loai_sua = loai_sua.Ma_loai_sua'  ;
        $result = DataProvider1::ExecuteQuery($sql)
    ?>
    <table cellspacing="0" cellpadding="4" align="center" cellpadding="4" width="500px"  >
        <tr>
            <th colspan="2" bgcolor="#f9decb">
                <h1 style="color: #ff5200;font-weight: bold;">THÔNG TIN CÁC SẢN PHẨM</h1>
            </th>
        </tr>
        <?php
            if($result->num_rows != 0){
                while($row = $result->fetch_assoc()){
                    echo "<tr>";
                        echo "<td width='180px'>";
                            echo '<img style="margin-left: 40px; width: 100px;height: 100px;" src="../Code/images/'.$row['Hinh'].'"/>';
                        echo "</td>";
                        echo "<td>";
                            echo "<p><b>".$row['Ten_sua']."</b></p>";
                            echo "<p>".'Nhà sản xuất: '.$row['Ten_hang_sua']."</p>";
                            echo "<span>".$row['Ten_loai'].' - '."</span>";
                            echo "<span>".$row['Trong_luong'].'gr '.' - '."</span>";
                            echo "<span>".$row['Don_gia'].'VNĐ '."</span>";
                        echo "</td";
                    echo "</tr>";
                }
            }
        ?>
        
        <tr>
            <td>
                <img src="" alt="">
            </td>
            <td>
                <p></p>
            </td>
        </tr>
    </table>
    