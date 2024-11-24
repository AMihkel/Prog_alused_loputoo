<?php

//KOMMENTAARIDE KUSTUTAMINE EI KUSTUTA HINNANGUID!!!!!
include("../config.php");
session_start();


if (!isset($_SESSION['tuvastamine'])) {
    header('Location: ../index.php?success=10');
    exit();
}

// Check if the 'id' of the review to delete is provided in the URL
if (isset($_GET['rev_id'])) {
    $review_id = (int)$_GET['rev_id'];
    $place_id = $_GET['id'];

    // Check if the review exists in the database
    $query = "SELECT * FROM reviews WHERE id = $review_id";
    $result = mysqli_query($yhendus, $query);

    if ($result && mysqli_num_rows($result) > 0) {
        // Proceed to delete the review
        $delete_query = "DELETE FROM reviews WHERE id = $review_id";
        if (mysqli_query($yhendus, $delete_query)) {
            // kui arvustus on kustutatud
            header("Location: ../review.php?id=" . $place_id . "&success=r_del");
            exit();
        }
    }
}
?>