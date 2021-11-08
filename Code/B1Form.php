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
        $dai = $_POST['cdai'];
        $rong = $_POST['crong'];
        if( $dai < $rong || $dai<= 0 || $rong<= 0 || is_numeric($dai) == false || is_numeric($rong) == false) $S = $P = "Nhập lại chiều dài và chiều rộng";
        else {
            $S = $dai * $rong;
            $P = 2*$dai + 2*$rong;
        }
    }    
    ?>
    <center>    
        <form method="POST" action="">
        
	    	<table bgcolor="#ead78c">
                <tr bgcolor="#ffcc00">
	    			<td style="color:#705b06" colspan="2"><center>Diện tích, chu vi hình chữ nhật</center></td>
	    		</tr>
	    		<tr>
	    			<td>Chiều dài:</td>
                    <td><input type="text" name="cdai" value="<?php if(isset($dai)) echo $dai;?>" required></td>  
	    		</tr>
	    		<tr>
	    			<td>Chiều rộng:</td>
                    <td><input type="text" name="crong" value="<?php if(isset($rong)) echo $rong;?>" required></td>                    
	    		</tr>
                <tr>
	    			<td>Chu vi:</td>
                    <td><input readonly type="text" value="<?php if(isset($P)) echo $P;?>"></td> 
	    		</tr>
                <tr>
	    			<td>Diện tích:</td>
                    <td><input readonly type="text" value="<?php if(isset($S)) echo $S;?>"></td> 
	    		</tr>
	    		<tr >
	    			<td colspan="2" align="center"><input type="submit" name="Tinh" value="Tính"></td>
	    		</tr>
	    	</table> 
  </form>
  </center>
    </body>
</html>
