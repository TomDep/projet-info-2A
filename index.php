<html>

<head>
    <meta charset="utf8" />
    <!-- Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Handlee&family=Muli:ital,wght@0,400;0,800;1,700&display=swap" rel="stylesheet">

    <!-- OpenLayers style -->
    <link rel="stylesheet" href="libraries/openlayers/ol.css" type="text/css">

    <!-- JQuery and OpenLayers -->
    <script src="libraries/openlayers/ol.js"></script>
    <script src="https://code.jquery.com/jquery-2.2.3.min.js"></script>

    <!-- Popup style & script -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

    <!-- Main style -->
    <link rel="stylesheet" href="main.css" type="text/css" />

    <title>Sortir au Mans</title>
</head>

<body>
    <header>

        <h1><strong>Découvrir le Mans</strong> ... Autre<span class="underlined">mans</span></h1>

        <p>"Sortir au Mans" est une carte intéractive avec différents lieux qui peuvent être intéressants à découvrir.
            <br>
            Vous n'avez plus qu'à choisir où aller !
        </p>

    </header>

    <section class="informations-container">

<?php 
 
try {
    $bdd = new PDO('mysql:host=localhost;dbname=projet_info;charset=utf8', 'root', '');
} catch (Exception $e) {
    die('Erreur : ' . $e->getMessage());
}
if(isset($_GET["site-id"])) {
    $id = $_GET["site-id"];
    $request = 'SELECT * FROM sites WHERE id=' . $id;
    $response = $bdd->query($request);
    while ($data = $response->fetch()) {
        $foundSomething = true;    
        // Get individual hours and images url
        $hours = [];
        $images = [];
        
        $temp_str = "";
        foreach(str_split($data['hours']) as $c) {
            if($c == "\n") {
                $hours[] = $temp_str;
                $temp_str = "";
            } else {
                $temp_str = $temp_str . $c;
            }
        }
        
        if($temp_str != "" && $temp_str != "\n") {
            $hours[] = $temp_str;
        }
        
        
        $temp_str = "";
        foreach(str_split($data['images']) as $c) {
            if($c == "\n") {
                $images[] = $temp_str;
                $temp_str = "";
            } else {
                $temp_str = $temp_str . $c;
            }
        }
        
        
        if($temp_str != "" && $temp_str != "\n") {
            $images[] = $temp_str;
        }
        
        // Echo everything
        echo '<div class="info">';
        
        echo '<div class="see-map-container"><a class="see-map all-around" href=#map>Descendre à la carte</a></div>';

        echo '<div class="title"><h1><span class="all-around">' . $data['name'] . '</span></h1></div>';

        echo '<div class="practical-container">';
        echo '<div class="practical">';
        echo '<h3><span class="underlined">Informations pratiques</span></h3>';
        echo '<h4>Addresse :</h4>';
        echo '<p>' . $data['address'] . '</p>';
        
        if($data['hours'] != "") {
            echo '<h4>Horaires</h4>';
            echo '<ul>';
            foreach($hours as $e) {
                echo '<li>' . $e . '</li>';
            }
            echo '</ul>';
        }
        echo '</div></div>';
        
        echo '<div class="description content">';
        echo '<h3><span class="underlined">Description</span></h3>';
        echo '<p>' . $data["description"] . '</p>';
        echo '</div>';
        
        
        if($data['commentary'] != "") {
            echo '<div class="commentary content">';
            echo '<h3><span class="underlined">Notre commentaire</span></h3>';
            echo '<p>' . $data['commentary'] . '</p>';
            echo '</div>';
        }
        
        if($data['images'] != "") {
            echo '<div class="photo">';
            echo '<h3><span class="underlined">Quelques photos du lieu</span></h3>';
            echo '<div class="photo-container">';
            foreach($images as $imageUrl) {
                echo '<img src="images/' . $imageUrl . '" >';
            }
            echo '</div>';
            echo '</div>';
        }
        
        
        echo '</div>';
    }
} else {?>
    
    <div class=default>
        <h2>Naviguez sur la <span class="underlined">carte</span> et cliquez sur le marqueur de votre choix. </h2>
        <hp>
            Vous aurez alors accès à toutes les informations relatives à cet endroit.
            <br>
            Vous pouvez vous aider de la barre de navigation à droite pour descendre et monter sur la page.
        </p>
    </div>
    <?php
}

?>
    </section>

    <section id="map-container">
        <div class="legend-container">
            <div class="legend">
                <h1><span class="underlined">Légende</span></h1>

                <ul>
                    <li>Culture</li>
                    <li>Photo</li>
                    <li>Chill</li>
                    <li>Loisirs</li>
                    <li>Soirée</li>
                    <li>Balade</li>
                </ul>
            </div>
        </div>

        <div id="map" class="map">
            <div id="popup"></div>
        </div>

        
    </section>

   

    <footer>

        <p>
            <a href="#" class="all-around">Revenir en haut</a>
        </p>

        <p>Site réalisé par Baptiste Boulanger et Tom de Pasquale pour un projet en 2e année à l'ENSIM
            <br>
            Le code source est accessible <a href="https://github.com/">ici</a>
        </p>

        

    </footer>

    <script src="scripts/marker.js"></script>

<?php
    echo '<script>';

    $response = $bdd->query('SELECT * FROM sites ORDER BY latitude ASC');
    while ($data = $response->fetch()) {

        $type = $data['type'];
        switch($type) {
            case "Soirée":
                // Red color
                $color = "[223, 66, 55]";
            break;
            case "Culture":
                // Blue
                $color = "[64, 91, 176]";
            break;
            case "Photo":
                // Gray
                $color = "[]";
            break;
            case "Chill":
                // Yellow
                $color = "[243, 202, 64]";
            break;
            case "Loisirs":
                // Purple
                $color = "[165, 36, 127]";
            break;
            case "Balade":
                // Green
                $color = "[67, 176, 49]";
            break;
        }

        echo 'addMarker([' . $data['longitude'] . ',' . $data['latitude'] . '], "' . $data['name'] . '", "' . $data['id'] . '", ' . $color .');';
    }

    echo '</script>';

?>

    <script src="scripts/map.js"></script>

</body>

</html>
