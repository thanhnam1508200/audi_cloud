<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Bai6</title>
    <link rel="stylesheet" href="./css/Bai3.css">
</head>

<body>    
    <div class="form">
        <div class="container">
            <form class="signup" action="Bai6kq.php" method="post">
                <div class="header">
                    
                </div>
                <div class="inputs">
                    <table align="center">
                        <tr>
                            <td align="left" style="color:#ce2323">Chọn phép tính:</td>
                            <td style="color:#ce2323">
                            <input checked type="radio" name="pheptinh" value="cg">Cộng </input>
                            <input type="radio" name="pheptinh" value="t">Trừ</input>
                            <input type="radio" name="pheptinh" value="n">Nhân</input>
                            <input type="radio" name="pheptinh" value="ch">Chia</input>
                            </td>
                        </tr>
                        <tr>
                            <td align="left" style="color:blue">Số thứ nhất:</td>
                            <td><input type="text" name="So1" placeholder="" required=""></td>
                        </tr>
                        <tr>
                            <td align="left" style="color:blue">Số thứ nhì:</td>
                            <td><input type="text" name="So2" placeholder="" required=""></td>
                        </tr>
                        <tr>
                            <td colspan="2" align="center"><input type="submit" value="Tính" name="tinh" /></td>
                        </tr>
                    </table>
                </div>

            </form>
        </div>
    </div>
</body>
</html>