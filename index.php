<?php
    // connexion a la bdd
    $pdo = new PDO("mysql:host=localhost;dbname=boitedenuit", 'root', '');



    // si dans POST il y a la clef prenom alors ont le stock dans une variable
    if(isset($_POST["prenom"])){

        $prenom = htmlspecialchars($_POST["prenom"]);

        if($prenom !== ''){
            
            $insert = $pdo->prepare("INSERT INTO vip(prenom) VALUES(?)");
            $insert->execute([$prenom]);

            $success = "Ajouter avec succés !";

        }else{

            $error = "veuillez remplir les champs !";

        }

    }



    // récupéré les données dans la base de donnée
    $select = $pdo->prepare("SELECT * FROM vip");
    $select->execute();

    $data = $select->fetchAll();




?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>

    <h1>TODOLIST</h1>

    <?php

        if(isset($error)){
            echo "<p style='color:red'>$error</p>";
        }

        if(isset($success)){
            echo "<p style='color:green'>$success</p>";
        }
    ?>

    <form action="" method="POST">
        <input type="text" placeholder="Entrez le prenom" name="prenom">
        <input type="submit" value="enregistrer">
    </form>


    <?php

        if(isset($_GET["success"])){

            echo "<p style='color:green'>" . htmlspecialchars($_GET["success"]) . "</p>"; 
        }

    ?>
    
    <div class="alldata">

        
        <?php

            foreach($data as $response){

                echo "<div class='data'>
                            <p>". $response["prenom"] ."</p>
                            <a href='edit.php?id=". $response["id"]."&prenom=".$response["prenom"]."'>modifier</a>
                            <a href='delete.php?id=". $response["id"] ."'>supprimer</a>
                        </div>";

            }

        ?>
    


    </div>
    
    
</body>
</html>