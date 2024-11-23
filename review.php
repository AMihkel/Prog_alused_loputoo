<?php
include("config.php");



// kui saadetakse siia lehele siis peaks tal alati id olema olemas
if (isset($_GET['id'])) {
    $place_id = (int)$_GET['id'];

    // päring selle id-ga toidukoha kohta
    $query = "SELECT * FROM toidukohad WHERE id = $place_id";
    $result = mysqli_query($yhendus, $query);// siin saab mäkra mängida, edaspidi kasutan mysqli_real_escape_string mis on pmst sama

    if ($result && mysqli_num_rows($result) > 0) {// kontrollib kas vastav koht on andmebaasis olemas, kui keegi mäkra ei mängiks siis tervet seda osa ei oleks vaja
        $place = mysqli_fetch_assoc($result);
    } else {
        die("Place not found.");
    }
} else {
    die("No place selected.");
}

//pärin andmebaasist olemasolevaid arvustusi
$r_query = "SELECT name, review, rating FROM reviews WHERE place_id = $place_id LIMIT 10";
$r_result = mysqli_query($yhendus, $r_query);




if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $name = mysqli_real_escape_string($yhendus, $_POST['name']);
    $review = mysqli_real_escape_string($yhendus, $_POST['review']);
    $rating = (int)$_POST['rating'];



    // sisestab arvustuse andmebaasi
    $insert_query = "INSERT INTO reviews (place_id, name, review, rating) VALUES ($place_id, '$name', '$review', $rating)";
    if (mysqli_query($yhendus, $insert_query)) {// sellega teen kindlaks et arvustus on teele saadetud ning siis võib uuendada arvustuse nr ning suunata pealehele koos positiivse sõnumiga.
        
        // võibolla oleks kuidagi saanud ka esimese query kaudu teha, kuna teoreetiliselt see on teist korda sama asja otsimine andmebaasist, aga nii oli lihtsam.
        $select_query = "SELECT hinnatud, k_hinne FROM toidukohad WHERE id = $place_id";
        $select_result = mysqli_query($yhendus, $select_query);
        if ($select_result && mysqli_num_rows($select_result) > 0) {
            $row = mysqli_fetch_assoc($select_result);
            $current_review_count = $row['hinnatud'];
            $current_avg_rating = $row['k_hinne'];
            
            // arvutan uuend numbrid andmebaasi
            $new_review_count = $current_review_count + 1;
            $new_avg_rating = round((($current_avg_rating * $current_review_count) + $rating) / $new_review_count, 1);
            
            // Step 3: Update the hinnatud and k_hinne väljasid
            $update_query = "UPDATE toidukohad SET hinnatud = $new_review_count, k_hinne = $new_avg_rating WHERE id = $place_id";
            mysqli_query($yhendus, $update_query);
        }
        
        // Jay töötab :)
        header("Location: index.php?success=1");
        exit(); // jälle igasuguste mäkrade jaoks
    } else {
        echo "<p class='alert alert-danger'>Midagi läks valesti!!!</p>";//:(
    }
}
?>


  <!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Hinda kohta ><?php echo $place['nimi']; ?></title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
  </head>
  <body>
  <div class="container">
    <h1>Hinda kohta > <?php echo $place['nimi']; ?></h1>
    <form method="POST" action="">
        <div class="row">
            <!-- Left Column: Labels -->
            <div class="col-md-3">
                <div class="mb-3">
                    <label for="name" class="form-label">Nimi</label>
                </div>
                <div class="mb-3">
                    <label for="review" class="form-label pb-5">Kommentaar</label>
                </div>
                <div class="mb-3 pt-4">
                    <label for="rating" class="form-label">Hinnang</label>
                </div>
            </div>

            <!-- Right Column: Input Fields -->
            <div class="col-md-9">
                <div class="mb-3">
                    <input type="text" class="form-control" id="name" name="name" required>
                </div>
                <div class="mb-3">
                    <textarea class="form-control" id="review" name="review" rows="4" required></textarea>
                </div>
                <div class="mb-3">
                    <!-- kui t2pselt tahab teha nagu pildidl on siis peaks CSS-i kasutama, for me this is close enough -->
                     
                    <div class="star-ratin">
                    <input type="radio" id="star1" name="rating" value="1">
                        <label for="star1" class="star">&#9733;</label>
                        
                        <input type="radio" id="star2" name="rating" value="2">
                        <label for="star2" class="star">&#9733;</label>

                        <input type="radio" id="star3" name="rating" value="3">
                        <label for="star3" class="star">&#9733;</label>

                        <input type="radio" id="star4" name="rating" value="4">
                        <label for="star4" class="star">&#9733;</label>

                        <input type="radio" id="star5" name="rating" value="5">
                        <label for="star5" class="star">&#9733;</label>

                        <input type="radio" id="star6" name="rating" value="6">
                        <label for="star6" class="star">&#9733;</label>

                        <input type="radio" id="star7" name="rating" value="7">
                        <label for="star7" class="star">&#9733;</label>

                        <input type="radio" id="star8" name="rating" value="8">
                        <label for="star8" class="star">&#9733;</label>

                        <input type="radio" id="star9" name="rating" value="9">
                        <label for="star9" class="star">&#9733;</label>

                        <input type="radio" id="star10" name="rating" value="10">
                        <label for="star10" class="star">&#9733;</label>
                    </div>
                </div>
            </div>
        </div>
            </div>
        </div>
            <div class="d-flex justify-content-end">
            <button type="submit" class="btn btn-primary me-3">Saada</button>
            <a class="btn btn-primary me-3" href="index.php" role="button">Tagasi</a>
            </div>

        </form>
        <h2>Teised Hinnangud:</h2>
        <?php
        if ($r_result && mysqli_num_rows($r_result) > 0) {
            while ($r_row = mysqli_fetch_assoc($r_result)) {
                echo "<div>";
                echo "<p><strong>" . $r_row['name'] . "</strong> (" . $r_row['rating'] . "/5)</p>";
                echo "<p>" . $r_row['review'] . "</p>";
                echo "</div>";
            }
        } else {
            echo "<p>Arvustusi pole veel.</p>";
        }
        ?>

    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
  </body>
</html>
