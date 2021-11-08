<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name = "viewport">
    </head>
    <body>
    <?php
    Define('pi',3.14);
    if(isset($_POST['Tinh']))
    {
        $R = $_POST['r'];
        if($R <= 0 || is_numeric($R) == false) $S = $P = "Nhập lại bán kính";
        else {
            $S = 2*pi*$R*$R;
            $P = 2*pi*$R;
        }
    }    
    ?>
    <center>    
        <form method="POST" action="">
        
	    	<table bgcolor="#ead78c">
                <tr bgcolor="#ffcc00">
	    			<td style="color:#705b06" colspan="2"><center>Diện tích, chu vi hình tròn</center></td>
	    		</tr>
	    		<tr>
	    			<td>Bán kính:</td>
                    <td><input type="text" name="r" value="<?php if(isset($R)) echo $R;?>" required></td>  
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
