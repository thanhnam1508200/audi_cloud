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
        $BD = $_POST['bd'];
        $KT = $_POST['kt'];
        if($BD < 10|| $KT > 24 || $KT <= $BD) $TT = "Nhập lại giờ BD, giờ KT";
        else 
        {
            if($BD >= 10 && $BD <= 17 && $KT >= 10 && $KT <= 17 )  $TT = ($KT - $BD)*20000;
            if($BD >= 17 && $BD <= 24 && $KT >= 17 && $KT <= 24 )  $TT = ($KT - $BD)*45000;
            if($BD >= 10 && $BD <= 17 && $KT >= 17 && $KT <= 24 )  $TT = (17 - $BD)*20000 + ($KT - 17)*45000; 
        }
    }    
    ?>
    <center>    
        <form method="POST" action="">
        
	    	<table bgcolor="#b1edce">
                <tr bgcolor="#007f3f">
	    			<td style="color:white" colspan="2"><center>Tính tiền karaoke</center></td>
	    		</tr>
                <tr>
	    			<td>Giờ bắt đầu:</td>
                    <td><input type="text" name="bd" value="<?php if(isset($BD)) echo $BD;?>" required> (h)</td>  
	    		</tr>
                
                <tr>
	    			<td>Giờ kết thúc:</td>
                    <td><input type="text" name="kt" value="<?php if(isset($KT)) echo $KT;?>" required> (h)</td>  
	    		</tr>
                <tr>
	    			<td>Tiền thanh toán:</td>
                    <td><input readonly type="text" value="<?php if(isset($TT)) echo $TT;?>"> (VNĐ)</td> 
	    		</tr>
	    		<tr >
	    			<td colspan="2" align="center"><input type="submit" name="Tinh" value="Tính"></td>
	    		</tr>
	    	</table> 
  </form>
  </center>
    </body>
</html>
