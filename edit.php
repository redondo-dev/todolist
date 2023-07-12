<?php

    // connexion a la bdd
    $pdo = new PDO("mysql:host=localhost;dbname=boitedenuit", "root", "");


    if(isset($_GET["prenom"]) && isset($_GET["id"])){

        $id = htmlspecialchars($_GET["id"]);
        $GETprenom = htmlspecialchars($_GET["prenom"]);
    }
    


    if(isset($_POST["prenom"])){


        $prenom = htmlspecialchars($_POST["prenom"]);


        if($prenom !== ''){

            $edit = $pdo->prepare("UPDATE vip SET prenom = ? WHERE id = ?");
            $edit->execute([$prenom, $id]);


            header("Location: index.php?success=modification réussi !");

        }
        else{
            $error = "veuillez remplir les champs";
        }
    }



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
    <h1>Modifier</h1>

    <form action="" method="POST">
        <input type="text" placeholder="Entrez le prenom" name="prenom" value="<?php
            if(isset($_GET["prenom"])){
                echo htmlspecialchars($_GET["prenom"]);
            }

        ?>">
        <input type="submit" value="Modifier">
    </form>

    <div class='data'>
        <p><?php

            if(isset($_GET["prenom"])){
                echo htmlspecialchars($_GET["prenom"]);
            }
        
        
        ?></p>
    </div>
    
</body>
</html>