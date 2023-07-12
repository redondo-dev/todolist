<?php

$id = htmlspecialchars($_GET["id"]);

// connexion base de données
$pdo = new PDO("mysql:host=localhost;dbname=boitedenuit", "root", "");

// on supprime
$delete = $pdo->prepare("DELETE FROM vip WHERE id = ?");
$delete->execute([$id]);


// rediriger vers la page principal
header("Location: index.php?success=suppression réussi");


