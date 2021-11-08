
    <?php 
        include 'DataProvider.php';
        if(!isset($_GET['page'])){
            $_GET['page'] = 1;
        }
        $rowPerPage = 2;
        // vị trí của mẩu tin đầu tiên trên mỗi trang
        $offset = ($_GET['page'] - 1) * $rowPerPage;

        $query = "SELECT * FROM sua,hang_sua,loai_sua where sua.Ma_hang_sua = hang_sua.Ma_hang_sua and sua.Ma_loai_sua = loai_sua.Ma_loai_sua LIMIT $offset, $rowPerPage";
        $result = $conn->query($query);
        if(!$result) echo 'Cau truy van bi sai';
        $numRows = mysqli_num_rows($result);
        // tổng số trang hiển thị
        $maxPage = ceil($numRows / $rowPerPage);
    ?>
    <h2 style="text-transform:uppercase; color: rebeccapurple;
        text-align:center">THÔNG TIN SỮA</h2>
    <table border="1" align="center" width="800px">
        <tr>
            <th>STT</th>
            <th>Tên Sữa</th>
            <th>Hãng sữa</th>
            <th>Loại sữa</th>
            <th>Trọng lượng</th>
            <th>Đơn giá</th>
        </tr>

        <?php
            $i = 0;
            if($result->num_rows != 0){
                while($row = $result->fetch_array()){  $i++;                    
                    if($i % 2 == 0)
                        echo "<tr style='background:#efe0b2b3;'>";
                    else echo "<tr>"; ?>
                    <td><?= $i; ?></td> 
                    <td><?= $row['Ten_sua']; ?></td>              
                    <td><?= $row['Ten_hang_sua']; ?></td>
                    <td><?= $row['Ten_loai']; ?></td>
                    <td><?= $row['Trong_luong']; ?></td>
                    <td><?= $row['Don_gia']; ?></td>                   
               <?php }
            }
        ?>
        
    </table>
    <center>
        <?php
            $re = $conn->query('SELECT * FROM sua');
            $numRows = mysqli_num_rows($re);
            $maxPage = ceil($numRows/$rowPerPage) + 1;
            if ($_GET['page'] > 1){
                echo "<a href=" .$_SERVER['PHP_SELF']."?page=".($_GET['page']-1)."> << </a>"; //gắn thêm nút Back
            }
            for ($i=1 ; $i<=$maxPage ; $i++)
            {
                if ($i == $_GET['page'])
                {
                    echo '<b> <u>'.$i.'</u> </b>'; //trang hiện tại sẽ được bôi đậm
                }
                else echo '<a href="../Bai2.4/B2.4.php?page='.$i.'"> '.$i.' </a>';
            }
            if ($_GET['page'] < $maxPage) {
                echo '<a href="../Bai2.4/B2.4.php?page='.($_GET['page'] + 1).'"> >> </a>';  //gắn thêm nút Next
            }
            $conn->close();
        ?>
    </center>
