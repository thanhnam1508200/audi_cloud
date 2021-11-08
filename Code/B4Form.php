<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name = "viewport">
    </head>
    <body>
    <?php
    if(isset($_POST['Tinh']))
    {
        $T = $_POST['t'];
        $L = $_POST['l'];
        $H = $_POST['h'];
        $TD = $T + $L + $H;
        if($T > 0 && $L > 0 && $H > 0 && $TD > $_POST['dc'] ) $KQ = "Đậu";
        else $KQ = "Rớt";
    }    
    ?>
    <center>    
        <form method="POST" action="">
        
	    	<table bgcolor="#ea9ad2">
                <tr bgcolor="#ea5659">
	    			<td style="color:white" colspan="2"><center>Kết quả thi đại học</center></td>
	    		</tr>
	    		<tr>
	    			<td>Toán:</td>
                    <td><input type="text" name="t" value="<?php if(isset($T)) echo $T;?>" required></td>  
	    		</tr>
                <tr>
	    			<td>Lý:</td>
                    <td><input type="text" name="l" value="<?php if(isset($L)) echo $L;?>" required></td>  
	    		</tr>
                <tr>
	    			<td>Hóa:</td>
                    <td><input type="text" name="h" value="<?php if(isset($H)) echo $H;?>" required></td>  
	    		</tr>
                <tr>
	    			<td>Điểm chuẩn:</td>
                    <td><input type="text" name="dc" value="<?php if(isset($_POST['dc'])) echo $_POST['dc'];?>" required></td>  
	    		</tr>
                <tr>
	    			<td>Tổng điểm:</td>
                    <td><input readonly type="text" value="<?php if(isset($TD)) echo $TD;?>"></td> 
	    		</tr>
                <tr>
	    			<td>Kết quả thi:</td>
                    <td><input readonly type="text" value="<?php if(isset($KQ)) echo $KQ;?>"></td> 
	    		</tr>
	    		<tr >
	    			<td colspan="2" align="center"><input type="submit" name="Tinh" value="Tính"></td>
	    		</tr>
	    	</table> 
  </form>
  </center>
    </body>
</html>
