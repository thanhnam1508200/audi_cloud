
<div class="container">
    <?php
        if(isset($_GET["id3"]))
        {
            $id3= $_GET["id3"];
        }

        $sql = "SELECT * FROM SanPham WHERE BiXoa = 0 and MaHangSanXuat = $id3 ";
        $result = DataProvider::ExecuteQuery($sql);
        while($row = mysqli_fetch_array($result))
        {
            ?>
                <div class="col-xs-12 col-sm-4 col-md-4">
                    <div class="khung">
                        <img src="images/<?php echo $row["HinhURL"]; ?>" /> 
                        <div class="pname"><?php echo $row["TenSanPham"]; ?></div>
                        <div class="pprice">Giá: <?php echo $row["GiaSanPham"]; ?>đ</div>
                        <div class="action">
                            <a href="index.php?a=4&id=<?php echo $row["MaSanPham"]; ?>">Chi tiết</a>
                        </div>
                    </div>
                </div>
            <?php
        }
    ?>
</div>