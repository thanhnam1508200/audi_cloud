        <?php
        require("DataProvider.php");
        $sql = 'SELECT * FROM khach_hang';
        $result = DataProvider::ExecuteQuery($sql)
        ?>

    <h2 style="text-transform:uppercase; color: rebeccapurple;
        text-align:center">Thông tin khách hàng</h2>
    <table border="1" align="center" width="800px">
        <tr>
            <th>Mã KH</th>
            <th>Tên khách hàng</th>
            <th>Giới tính</th>
            <th>Địa chỉ</th>
            <th>Số điện thoại</th>
            <th>Email</th>
        </tr>

        <?php
            $dem = 0;
            if($result->num_rows != 0){
                while($row = $result->fetch_array()){
                    if($dem % 2 == 0)
                        echo "<tr style='background:#efe0b2b3;'>";
                    else echo "<tr>";
                        for($i = 0; $i < $result->field_count; $i++){
                            if($i == 2){
                                if($row[$i] == 1){
                                    echo "<td align='center'><img weight=30px height=30px src='../Bai2.3/Nam.jpg'/></td>";
                                }else {
                                    echo "<td align='center'><img weight=30px height=30px src='../Bai2.3/Nu.jpg'/></td>";
                                }
                            }
                            else{
                                echo "<td>".$row[$i]."</td>";
                            }
                        }
                    echo "</tr>";
                    $dem++;
                }
            }
        ?>
        <?php // $conn->close(); ?>
    </table>
