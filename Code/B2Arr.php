<div class="container">
<?php
function ktso($arr)
{
    foreach($arr as $i)
    {
        if(is_numeric($i) == false) return 0;
    }
    return true;
}
if(isset($_POST['submit']))
{
    $DS = $_POST['ds'];
    $arr =  explode(",",$DS);
    if(ktso($arr) == true)
    {
        $kq = array_sum($arr);
    }
    else $kq = "Có phần tử không phải số";
}
    

?>
<body>
    <form method="POST" action="B2Arr.php">
    <table align="center"  bgcolor="#97dbdb">
        <tr bgcolor="#027770"><td colspan=2><center><h2>NHẬP VÀ TÍNH TRÊN DÃY SỐ</h2></center></td></tr>
        <tr>
            <td>Nhập dãy số: </td>
            <td style="color:red"><input name="ds" size=30px type="text" value="<?php if(isset($DS)) echo $DS; ?>">  (*)</td>
        </tr>
        <tr>
            <td></td>
            <td><input name="submit" type="submit" value="Tổng dãy số"></td>
        </tr>
        <tr>
            <td>Tổng dãy số:</td>
            <td><input type="text" size=8px value="<?php if(isset($_POST['submit'])) echo $kq; ?>"></td>
        </tr>
        <tr>            
            <td colspan=2 style="color:red"><center>(*)<span style="color:black">Các số được nhập cách nhau bằng dấu ","</span></center></td>
        </tr>
    </table>
    </form>
    <center><a class="navbar-branch" href="index.php"><input type="submit" value="Về Trang Chủ"></a></center>
</div>