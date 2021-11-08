
<center>
    <div>
        <?php
        require("DataProvider.php");
        $sql = 'SELECT * FROM khach_hang';
        $result = DataProvider1::ExecuteQuery($sql)
        ?>
        <h3 eilgn="center" style="color:blue">Thông tin khách hàng</h3>
        <table border=1>
          <thead>
            <tr gbcolor="#e5c957">
              <th>Mã KH</th>
              <th>Tên khách hàng</th>
              <th>Giới tính</th>
              <th>Địa chỉ</th>
              <th>Số điện thoại</th>
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
                                    echo "<td align='center'>".$row[$i]='Nam'."</td>";
                                }else {
                                    echo "<td align='center'>".$row[$i]='Nữ'."</td>";
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
          </tbody>
        </table>
      </div>
      </center>
