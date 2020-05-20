<?php
 
try {
    $bdd = new PDO('mysql:host=localhost;dbname=projet_info;charset=utf8', 'root', '');


    $req = $bdd->prepare('INSERT INTO sites(name, description, commentary, images, address, hours, latitude, longitude, type) VALUES(:name, :description, :commentary, :images, :address, :hours, :latitude, :longitude, :type)');
    $req->execute(array(
        'name' => $_POST["name"],
        'description' => $_POST["description"],
        'commentary' => $_POST["commentary"],
        'images' => $_POST["images"],
        'address' => $_POST["address"],
        'hours' => $_POST["hours"],
        'latitude' => $_POST["latitude"],
        'longitude' => $_POST["longitude"],
        'type' => $_POST["type"]
        ));
        
    echo '<p>Le lieu a bien été ajouté à la base de données. Cliquez <a href="add.php">ici</a> pour revenir à l\'outil</p>';
} catch (Exception $e) {
    die('Erreur : ' . $e->getMessage());
}
 ?>