<div class="container">
    <?php
        if(isset($_GET["id5"]))
        {
            $id5= $_GET["id5"];
        }
        switch($id5){
            case 1:
                include "B1Form.php";
                break;
            case 2:
                include "B2Form.php";
                break;
            case 3:
                include "B3Form.php";
                break;
            case 4:
                include "B4Form.php";
                break;
            case 5:
                include "B5Form.php";
                break;
            case 6:
                include "B6Form.php";
                break;
            case 7:
                include "B7Form.php";
                break;
            }
        
    ?>
</div>