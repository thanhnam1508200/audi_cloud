<div class="container">
    <?php
        if(isset($_GET["id4"]))
        {
            $id4= $_GET["id4"];
        }
        switch($id4){
            case 1:
                include "B1Arr.php";
                break;
            case 2:
                include "B2Arr.php";
                break;
            case 3:
                include "B3Arr.php";
                break;
            case 4:
                include "B4Arr.php";
                break;
            case 5:
                include "B5Arr.php";
                break;
            case 6:
                include "B6Arr.php";
                break;
            case 7:
                include "B7Arr.php";
                break;
            }
        
    ?>
</div>