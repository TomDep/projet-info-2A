<html>

<head>
    <title>Outil pour edition de la base de donnée</title>
    <style>
        form {
            display: flex;
            flex-direction: column;
            
            width: 800px;
            margin: auto;
        }

        h1, h2 {
            text-align: center;
        }

        input, textarea {
            margin-bottom: 20px;
        }
    </style>
</head>

<body>
    <h1>Outil pour edition de la base de donnée</h1>
    <hr>

    <p>Les éléments qui DOIVENT être rempli sont :</p>
    <ul>
        <li>Nom du lieu</li>
        <li>Description</li>
        <li>Commentaire</li>
        <li>Adresse</li>
    </ul>

    <p>
    Pour les images il faut indiquer le nom du fichier (dans le dossier images) en incluant son extansion (.jpg, .png).
        <br>
    Sautez une ligne après chaque nom.
        <br>
    Le nombre d'image DOIT être entre 2 et 5 (inclus).
    </p>

    <hr> 
        
    <h2>Formulaire</h2>

    <form action="add_to_database.php" method="post">
        
        <label>Nom du lieu</label>
        <input type="text" placeholder="ex : Le Mulligan's Pub" name="name">

        <label>Description</label>
        <textarea name="description"></textarea>

        <label>Commentaire</label>
        <textarea name="commentary"></textarea>

        <label>Adresse</label>
        <input type="text" placeholder="ex : 44 Rue du Dr Leroy, 72000 Le Mans" name="address">

        <label>Horaires (sautez une ligne entre chaque horaires)</label>
        <textarea name="hours"></textarea>

        <label>Images (sautez une ligne entre chaque nom)</label>
        <textarea name="images"></textarea>

        <label>Latitude</label>
        <input type="text" name=latitude>
        
        <label>Longitude</label>
        <input type="text" name=longitude>

        <label>Type de lieu</label>
        <select name="type">
            <option value="Culture">Culture</option>
            <option value="Photo">Photo</option>
            <option value="Chill">Chill</option>
            <option value="Loisirs">Loisirs</option>
            <option value="Soirée">Soirée</option>
            <option value="Balade">Balade</option>
        </select>

        <input type="submit" value="Ajouter un nouveau site">
    </form>

    <hr>

</body>

</html>