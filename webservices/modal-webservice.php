<?php

include '../pdo.php';
/* REQUETE POUR LA CREATION DES VIGNETTES*/
$requeteModal = $pdo->prepare(
    'SELECT *
     FROM travaux
     WHERE idTravaux = ?'
);
$requeteModal->execute([$_POST['id']]);
$modalSql = $requeteModal->fetch( PDO::FETCH_ASSOC );

include 'modal-webserviceView.phtml';
