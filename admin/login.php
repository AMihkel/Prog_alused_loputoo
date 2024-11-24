<?php
	session_start();
	if (isset($_SESSION['tuvastamine'])) {
	  header('Location: index.php');
	  exit();
	  }

	if (!empty($_POST['login']) && !empty($_POST['pass'])) {
		$login = $_POST['login'];
		$pass = $_POST['pass'];
		if ($login=='admin' && $pass=='admin') {
			$_SESSION['tuvastamine'] = 'misiganes';
			header('Location: index.php');
		}
		else {
			$error = 1;
		}
	}
?>

<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Logi sisse</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
  </head>
  <body>

  <?php 
  if (!empty($error)){
            echo ' <div class="alert alert-danger" role="alert">
				   <p> Vale kasutajanimi või parool.</p>
            	   </div>';
	}
  ?>

  <div class="d-flex justify-content-center">
    <div>
        <h1>Logi sisse</h1>
        <form action="" method="post">
		<div class="row pt-3">
            <div class="col-md-3 ">
                <div class="mb-3">
                    <label class="form-label">Kasutajanimi</label>
                </div>
                <div class="mb-3">
                    <label class="form-label pb-5">Parool</label>
                </div>
            </div>

            
            <div class="col-md-9 ps-4">
                <div class="mb-3">
                    <input type="text" name="login" placeholder="Sisesta oma kasutajanimi" required>
                </div>
				<div class="mb-3">
				<input type="password" name="pass" placeholder="Sisesta oma parool" required>
                </div>
            </div>
        </div>
		<div class="d-flex justify-content-end">
			<button type="submit" class="btn btn-primary ">Login</button>
		</div>
            
        </form>
    </div>
</div>



    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
  </body>
</html>






