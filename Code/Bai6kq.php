<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Bai6</title>
    <link rel="stylesheet" href="./css/Bai3.css">
</head>
<?php
    $s1 = $_POST['So1'];
    $s2 = $_POST['So2'];
    if(is_numeric($s1) == false || is_numeric($s2) == false)
    {
        header('Location:Bai6.php');
    }
    else
    {
        switch($_POST['pheptinh'])
        {
            case 'cg':
                {
                    $pt = "Cộng";
                    $kq = $s1 + $s2;
                    break;
                }
            case 't':
                {
                    $pt = "Trừ";
                    $kq = $s1 - $s2;
                    break;
                }
            case 'n':
                {
                    $pt = "Nhân";
                    $kq = $s1 * $s2;
                    break;
                }
            case 'ch':
                {
                    $pt = "Chia";
                    if($s2 != 0) $kq = $s1/$s2;
                    else header('Location:Bai6.php');
                    break;
                }
        }
    }
?>
<body>    
    <div class="form">
        <div class="container">
            <form class="signup" method="post">
                <div class="header">
                    <h3 align="center" style="color:blue">PHÉP TÍNH HAI SỐ</h3>
                </div>
                <div class="inputs">
                    <table align="center">
                        <tr>
                            <td align="left" style="color:#ce2323">Chọn phép:</td>
                            <td style="color:#ce2323"><?php echo $pt; ?></td>
                        </tr>
                        <tr>
                            <td align="left" style="color:blue">Số thứ nhất:</td>
                            <td><input type="text" value="<?php echo $s1; ?>" readonly ></td>
                        </tr>
                        <tr>
                            <td align="left" style="color:blue">Số thứ nhì:</td>
                            <td><input type="text" value="<?php echo $s2; ?>" readonly></td>
                        </tr>
                        <tr>
                            <td align="left" style="color:blue">Kết quả:</td>
                            <td><input type="text" value="<?php echo $kq; ?>" readonly></td>
                        </tr>
                    </table>
                </div>
            </form>
            <center><a class="navbar-branch" href="index.php"><input type="submit" value="Về Trang Chủ"></a></center>
        </div>
    </div>
</body>
</html>