
<?php include("../config.php"); ?>
<?php//kontrollib, et ikka oleks adminina sisse logitud
	session_start();
	if (!isset($_SESSION['tuvastamine'])) { 
	  header('Location: ../index.php?success=10');
       exit();
	  }
?>
<?php
if(isset($_GET['id'])){//see on et saada olemasolevad nimed, kui on.

    $id = $_GET['id'];
    $paring = "SELECT nimi, asukoht FROM toidukohad WHERE id = $id";
    $valjund = mysqli_query($yhendus, $paring);
    if ($valjund) {
        $row = mysqli_fetch_assoc($valjund);
        $nimi = $row['nimi'];
        $asukoht = $row['asukoht'];
    }
}

if ($_SERVER['REQUEST_METHOD'] === 'POST') {//sellega saan vormi uued v22rtused, kasutan ainult kahte kuna algselt ei olnud tuupi ning selleks tuleks teha uus vali tabelisse.
    $nimi = $_POST['nimi'];
    $asukoht = $_POST['asukoht'];

    if (isset($_GET['id'])) { //kui andmebaasis oli ta olemas ja uuendada vaja
        $id = $_GET['id'];
        $paring = "UPDATE toidukohad SET nimi = '$nimi', asukoht = '$asukoht' WHERE id = $id";
    }
    else {
        $paring = "INSERT INTO toidukohad (nimi, asukoht, k_hinne, hinnatud) VALUES ('$nimi', '$asukoht', 0, 0)";// panen keskmise hinde ja hindamis korra ka siin paika
    }
    if (mysqli_query($yhendus, $paring)) {
        header('Location: index.php?success=3');
    }
}

?>
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Muuda/Lisa</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
  </head>
  <body>

        <div class="">
            <div class="d-flex justify-content-left">
             <h1>Administreerimine > Lisa/muuda asutus</h1>    
            </div>
           
            <div class="d-flex justify-content-center">
                
                <form action="" method="post">
            	<div class="row pt-3">
                    <div class="col-md-3 ">
                        <div class="mb-3">
                            <label for="name" class="form-label">Nimi</label>
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Aadress</label>
                        </div><div class="mb-3">
                            <label class="form-label">Tüüp</label>
                        </div>
                    </div>

                    <div class="col-md-9 ps-4">
                        <div class="mb-3">
                        <input type="text" name="nimi" id="nimi" value="<?php echo isset($nimi) ? $nimi : ''; ?>" required>
                        </div>
            			<div class="mb-3">
                        <input type="text" name="asukoht" id="asukoht" value="<?php echo isset($asukoht) ? $asukoht : ''; ?>" required>
                        </div>
                        <div class="mb-3">
                            <select class="form-select" name="Tuup" id="Tuup"><!--sellega ei tee midagi kuna algselt ei olnud tuupi ülesandes ning siis tuleks tabelisse luua uus väli jne -->
                                <option value="">Söögikoht</option>
                            </select>
                        </div>
                    </div>
                        
            	    <div class="d-flex justify-content-end">
            	    	<button type="submit" class="btn btn-primary m-1">Saada</button>
                        <a href="index.php" class="btn btn-primary m-1 ">Tagasi</a>
                    </div>
                </form>
            </div>
        </div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
  </body>
</html>
