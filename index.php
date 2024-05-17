<?php 
include("config.php");
?>
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Bootstrap demo</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
  </head>
  <body> 
    <?php
    if (!empty($_GET["s"])) {
        $s = $_GET["s"];
        $paring = 'SELECT * FROM toidukohad WHERE nimi LIKE "%'.$s.'%" ';
    } else {
        /********************************* */
        if (isset($_GET['next'])) {
            $algus = $_GET['next'];
        } elseif (isset($_GET['prev'])) {
            $algus = $_GET['prev']-10;
            }
        
        else{
            $algus = -10;
        }
    }
            $algus += 10;
            $lopp = $algus - 10;
            if($lopp<0){
                $lopp=0;
            }
        /********************************* */
       // $lopp -= 10;
        
            
            //saadan soovitud ühendusele minu päringu
            $paring = " SELECT * FROM toidukohad LIMIT $algus,10";
            $valjund = mysqli_query($yhendus, $paring);
           
                ?>
    <div class="container">
        <h1>Valige asutus mida hinnata</h1>
        <table class="table table-sm">
            <tr>
                <th>nimi</th>
                <th>asukoht</th>
                <th>keskmine hinne</th>
                <th>hinnatud</th>
            </tr>
            <?php
             while ($rida  = mysqli_fetch_assoc($valjund)) {

           ?>
            <body>
                <tr>
                <th><?php echo $rida["nimi"];?></th>
                <th><?php echo $rida["asukoht"];?></th>
                <th><?php echo $rida["k_hinne"];?></th>
                <th><?php echo $rida["hinnatud"];?></th>
            </tr>
            </body>
            <?php
             }

            ?>
        </table>
        <a href="?prev=<?php echo $lopp;?>">&lt;&lt;Eelmised</a>
        <a href="?next=<?php echo $algus;?>">Järgmised&gt;&gt;</a>
    </div>


   
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
  </body>
</html>