<div class="header-navbar">
    <div class="container-fluid">
        <div class="header-logo">
            <a class="navbar-branch" href="index.php">
                <img src="img/logo_shop.png" height="150" style="margin-left: 10%;">
            </a>
        </div>
        <div class="header-menu" id="navbarResponsive">
            <nav id="menu" class="menu">
                <ul>

                    <?php // Ten Loai San Pham (Acoustic,Classic,Dien,Bass)
                        $sql = "SELECT * FROM LoaiSanPham WHERE BiXoa = 0";
                        $result = DataProvider::ExecuteQuery($sql);
                        while($row = mysqli_fetch_array($result)) //kq truy van dang arr
                        {
                            ?>
                                <li class="has-submenu">
                                    <a href="index.php?a=3&id3=<?php echo $row["MaLoaiSanPham"]?>"> 
                                        <?php echo $row["TenLoaiSanPham"]; ?>
                                        <i class="fas fa-chevron-down"></i>
                                    </a>
                                    <ul class="sub-menu"> 
                                        <?php // Hang san xuat (Lazer,Takamine,Kapok,Taylor,Fender,...)
                                            $temp = $row["MaLoaiSanPham"]; //Acoustic,Classic,...
                                            $sql1 = "SELECT distinct hsx.MaHangSanXuat, hsx.TenHangSanXuat FROM SanPham sp, HangSanXuat hsx WHERE
                                                    sp.BiXoa = 0 AND sp.MaLoaiSanPham = $temp
                                                    AND hsx.MaHangSanXuat = sp.MaHangSanXuat";
                                            $result1 = DataProvider::ExecuteQuery($sql1); 
                                            while($row1 = mysqli_fetch_array($result1))  
                                            {
                                                ?>
                                                    <li>
                                                        <a href="index.php?a=2&id1=<?php echo $row1["MaHangSanXuat"];?>&id2=<?php echo $temp;?>">
                                                            <?php echo $row1["TenHangSanXuat"]; ?>
                                                        </a>
                                                    </li>
                                                <?php
                                            }
                                        ?>                                      
                                    </ul>
                                </li>
                            <?php
                        }
                    ?>
                    <li class="has-submenu">
                        <a href="#" style="color:red;">
                           H??NG GUITAR <i class="fas fa-chevron-down"></i>
                        </a>
                        <ul class="sub-menu">
                            <?php
                                $sqlHSX = "SELECT hsx.MaHangSanXuat, hsx.TenHangSanXuat from HangSanXuat hsx";
                                $resultHSX = DataProvider::ExecuteQuery($sqlHSX);
                                while($rowHSX = mysqli_fetch_array($resultHSX))
                                {                        
                                    ?>
                                        <li>
                                            <a href="index.php?a=7&id3=<?php echo $rowHSX["MaHangSanXuat"]?>">
                                                <?php echo $rowHSX["TenHangSanXuat"]; ?>
                                            </a>
                                        </li>
                                    <?php
                                }
                            ?> 
                        </ul>
                    </li>
                    <li class="has-submenu">
                        <a href="#" style="color:red;">
                           B??I T???P <i class="fas fa-chevron-down"></i>
                        </a>
                        <ul class="sub-menu">
                            <li class="dropdown-submenu">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"> <span class="nav-label">BT Array</span></a><br>
                                <ul class="dropdown-menu">
                                    <li><a href="index.php?a=8&id4=1">B??i 1</a></li>
                                    <li><a href="index.php?a=8&id4=2">B??i 2</a></li>
                                    <li><a href="index.php?a=8&id4=3">B??i 3</a></li>
                                    <li><a href="index.php?a=8&id4=4">B??i 4</a></li>
                                    <li><a href="index.php?a=8&id4=5">B??i 5</a></li>
                                    <li><a href="index.php?a=8&id4=6">B??i 6</a></li>
                                    <li><a href="index.php?a=8&id4=7">B??i 7</a></li>
                                </ul>
                            </li>    
                            <li class="dropdown-submenu">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"> <span class="nav-label">BT Form</span></a><br>
                                <ul class="dropdown-menu">
                                    <li><a href="index.php?a=9&id5=1">B??i 1</a></li>
                                    <li><a href="index.php?a=9&id5=2">B??i 2</a></li>
                                    <li><a href="index.php?a=9&id5=3">B??i 3</a></li>
                                    <li><a href="index.php?a=9&id5=4">B??i 4</a></li>
                                    <li><a href="index.php?a=9&id5=5">B??i 5</a></li>
                                    <li><a href="index.php?a=9&id5=6">B??i 6</a></li>
                                </ul>
                            </li> 
                            <li class="dropdown-submenu">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"> <span class="nav-label">BT SQL+PHP</span></a><br>
                                <ul class="dropdown-menu">
                                    <li><a href="index.php?a=10&id6=1">B??i 1</a></li>
                                    <li><a href="index.php?a=10&id6=2">B??i 2</a></li>
                                    <li><a href="index.php?a=10&id6=3">B??i 3</a></li>
                                    <li><a href="index.php?a=10&id6=4">B??i 4</a></li>
                                    <li><a href="index.php?a=10&id6=5">B??i 5</a></li>
                                    <li><a href="index.php?a=10&id6=6">B??i 6</a></li>
                                    <li><a href="index.php?a=10&id6=8">B??i 8</a></li>
                                    <li><a href="index.php?a=10&id6=9">B??i 9</a></li>
                                </ul>
                            </li>       
                        </ul>
                    </li>
                
                </ul >
            </nav>
        </div>
    </div>
</div>