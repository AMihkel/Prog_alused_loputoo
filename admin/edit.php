<?php
include("../config.php");
	session_start();
	if (isset($_SESSION['tuvastamine'])) {


        if ($_GET['do'] && $_GET['do'] == 'del' && $_GET['id'] ){
		    $id = $_GET['id']; 
           // echo $id;
           $id = mysqli_real_escape_string($yhendus, $id);// vajalik sql injectioni v2ltimiseks
           //et kustutada nii toidukoha kui ka selle koha koik reviewed 2ra
           $deltoidukohad = "DELETE FROM toidukohad WHERE id = '$id'";
           if (mysqli_query($yhendus, $deltoidukohad)) {
            // kasutan DELETE CASCADE
            header("Location: index.php?success=2");
            exit();
        }
           //SEE OLI AALGNE LAHENDUS, LEIDSIN LIHTSAMA VARIANDI MIS KUSTUTAB AUTOMAATSELT TEISEST TABELIST SEOTUD READ 2RA: ON DELETE CASCADE kaotab kyll 2ra v6imaluse eristada mitu reviewd kustutati aga seda infot ei olnud otseselt vaja ka
        // $delreviews = "DELETE FROM reviews WHERE place_id = '$id'";
        //    if (mysqli_query($yhendus,$deltoidukohad)) {
        //         if (mysqli_query($yhendus, $delreviews) > 0) {
        //             header("Location: index.php?success=2");//Nii toidukoht kui ka arvustused on edukalt kustutatud
        //             exit();
        //         }//elif ei pannud kuna $id on juba puhastatud ning kui juba siia j6utakse siis peaks see igal juhul l2bi minema 
        //         header("Location: index.php?success=3");//oidukoht on edukalt kustutatud, arvustusi ei olnud
        //         exit();
        //    }//sama mis eelmisel if-il 


        
        }
        elseif ($_GET['do'] && $_GET['do'] == 'edit' && $_GET['id']) {
            header('Location: lisa.php?id='.$_GET['id']);
        }
        //see v2ldib et alati oleks olemas vajalikud nö muutujad kui sinna lehele minna suunan tagasi admini index lehele kuna kui ta ei ole admin siis siiani ta ei oleks saanud jouda kuna: if (isset($_SESSION['tuvastamine']))
        else {
            header('Location: lisa.php');
          exit();
        } 
    }
	//kui ei ole admin siis viib tagasi pealehele
    else {
        header('Location: ../index.php?success=10');
	  exit();
    }

	  

	
?>