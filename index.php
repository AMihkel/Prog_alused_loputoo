<?php 
include("config.php");
?>
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Hinda kogemust</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
  </head>
  <body> 
    <?php
    // Initialize variables
    $search_query = "";
    $limit = 10; // mitu rida lehel
    $offset = 0;
    // annan sortimisele kohe v22rtused, kuna kui neil v22rtusi alguses ei ole ja tahab sortima hakkata siis osad asjad saavad v22rtuse aga osad ei saa.
    $sort_by = isset($_GET['sort_by']) ? $_GET['sort_by'] : 'nimi'; // Default sort
    $order = isset($_GET['order']) && ($_GET['order'] == 'desc') ? 'desc' : 'asc'; // Default sort 

    //kui review lehelt tuleb tagasi ja on success siis ytleb, et tagasiside on saadetud
    if (isset($_GET['success']) && $_GET['success'] == 1) {
        echo "<div class='alert alert-success'>Sinu tagasiside on edukalt saadetud</div>";
    }

    // et teha kindlaks mis lehel praegu ollakse
    if (isset($_GET['next'])) {
        $offset = (int)$_GET['next'];
    } elseif (isset($_GET['prev'])) {
        $offset = max((int)$_GET['prev'] - $limit, 0); // et v2ltida negatiivseid numbreid
    }

    // kui on s olemas siis kasutatakse otsingut
    if (!empty($_GET["s"])) {
        $search_query = mysqli_real_escape_string($yhendus, $_GET["s"]);// see on p6him6tteliselt sama mis mysqli_query aga mysqli_real_escape_string pidi olema turvalisem kuna siis ei saa kasutada SQL injectionti
        $paring = "SELECT * FROM toidukohad WHERE nimi LIKE '%$search_query%' ORDER BY $sort_by $order LIMIT $offset, $limit";// ei ole üks ühele otsing, vaid otsitakse kõike nimesid mille sees on otsitav fraas. Samuti piiran mitu tulemust korraga näidatakse ning selle jaoks on vaja teada mis lehel hetkel ollakse
    } else {
        // siis kui ei otsita midagi selle päring
        $paring = "SELECT * FROM toidukohad ORDER BY $sort_by $order LIMIT $offset, $limit";
        }

    $valjund = mysqli_query($yhendus, $paring);
    ?>
    
    <div class="container">
        <!-- Pealkiri ja otsing -->
        <div class="d-flex align-items-center justify-content-between mb-3">
            <h1 class="me-3">Valige asutus mida hinnata</h1>
            <form class="d-flex" method="get" action="">
                <input class="form-control me-2" type="text" name="s" placeholder="Otsi asutust">
                <button class="btn btn-primary" type="submit">Otsi</button>
            </form>
        </div>

        <!-- tulemused -->
        <table class="table table-sm">
            <thead>
                <tr><!--kuna ylessandes on kirj et nendega peab sortima saama siis peaksid nad olema nupud ning kui sinna peale vajutada muudab ta vastavalt aadressi mille j2rgi tahetakse sortida -->
                <th><a href="?sort_by=nimi&order=<?php echo ($sort_by == 'nimi' && $order == 'asc') ? 'desc' : 'asc'; ?>">nimi</a></th>
                <th><a href="?sort_by=asukoht&order=<?php echo ($sort_by == 'asukoht' && $order == 'asc') ? 'desc' : 'asc'; ?>">asukoht</a></th>
                <th><a href="?sort_by=k_hinne&order=<?php echo ($sort_by == 'k_hinne' && $order == 'asc') ? 'desc' : 'asc'; ?>">keskmine hinne</a></th>
                <th><a href="?sort_by=hinnatud&order=<?php echo ($sort_by == 'hinnatud' && $order == 'asc') ? 'desc' : 'asc'; ?>">hinnatud</a></th>
                </tr>
            </thead>
            <tbody>
    <?php
    if ($valjund && mysqli_num_rows($valjund) > 0) {// kontrollib et oleks midagi kuvada, kui ei ole siis läheb else ja annab vea teate.
        while ($rida = mysqli_fetch_assoc($valjund)) {
    ?>
    <tr>
        <td>
            <a href="review.php?id=<?php echo $rida['id']; ?>">
                <?php echo $rida['nimi']; ?>
            </a><!-- link mis suunab selle id-ga preview lehele -->
        </td>
        <td><?php echo $rida['asukoht']; ?></td>
        <td><?php echo $rida['k_hinne']; ?></td>
        <td><?php echo $rida['hinnatud']; ?></td>
    </tr>
    <?php
        }
    } else {
        echo "<tr><td colspan='4'>Tulemusi ei ole</td></tr>";
    }
    ?>
</tbody>

        </table>

        <!-- edasi tagais nupud -->
        <div class="d-flex justify-content-end">
            <?php if ($offset > 0): ?>
                <a href="?prev=<?php echo $offset; ?>&s=<?php echo $search_query; ?>&sort_by=<?php echo $sort_by; ?>&order=<?php echo $order; ?>" class="me-3">&lt; Eelmised</a>
            <?php else: ?>
                <span></span>
            <?php endif; ?>
            <?php if ($valjund && mysqli_num_rows($valjund) == $limit): ?>
                <a href="?next=<?php echo $offset + $limit; ?>&s=<?php echo $search_query; ?>&sort_by=<?php echo $sort_by; ?>&order=<?php echo $order; ?>" class="me-3">Järgmised &gt;</a>
            <?php endif; ?>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
  </body>
</html>
