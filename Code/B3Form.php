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
        $CSC = $_POST['csc'];
        $CSM = $_POST['csm'];
        $DG = $_POST['dg'];
        if( $CSC<= 0 || $CSM<= 0 || $DG<= 0 || is_numeric($CSC) == false || is_numeric($CSM) == false || is_numeric($DG) == false) $T = "Nhập lại chỉ số cũ, chỉ số mới và đơn giá";
        else {
            $T = ($CSM - $CSC)*$DG;
        }
    }    
    ?>
    <center>    
        <form method="POST" action="">
        
	    	<table bgcolor="#ead78c">
                <tr bgcolor="#ffcc00">
	    			<td style="color:#705b06" colspan="2"><center>Thanh toán tiền điện</center></td>
	    		</tr>
                <tr>
	    			<td>Tên chủ hộ:</td>
                    <td><input type="text" name="ten" value="<?php if(isset($_POST['ten'])) echo $_POST['ten']?>" required></td>  
	    		</tr>
	    		<tr>
	    			<td>Chỉ số cũ:</td>
                    <td><input type="text" name="csc" value="<?php if(isset($CSC)) echo $CSC;?>" required>(Kw)</td>  
	    		</tr>
	    		<tr>
	    			<td>Chỉ số mới:</td>
                    <td><input type="text" name="csm" value="<?php if(isset($CSM)) echo $CSM;?>" required>(Kw)</td>                    
	    		</tr>
                <tr>
	    			<td>Đơn giá:</td>
                    <td><input type="text" name="dg" value="<?php if(isset($DG)) echo $DG;?>" required>(VNĐ)</td>                    
	    		</tr>
                <tr>
	    			<td>Số tiền cần thanh toán:</td>
                    <td><input readonly type="text" value="<?php if(isset($T)) echo $T;?>">(VNĐ)</td> 
	    		</tr>
	    		<tr >
	    			<td colspan="2" align="center"><input type="submit" name="Tinh" value="Tính"></td>
	    		</tr>
	    	</table> 
  </form>
  </center>
    </body>
</html>
