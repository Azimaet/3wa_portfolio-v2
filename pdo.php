<?php
/* #REQUETE DES CATEGORIES
// 1 - On déclare un nouvel objet PDO (adresse de la base de donnée) AVEC EN DBNAME notre base de données */
/*local -> */ $pdo = new PDO('mysql:host=localhost;dbname=portfoliov2', 'root', '');
//online -> $pdo = new PDO('mysql:host=db695866653.db.1and1.com;dbname=db695866653','dbo695866653','Szergimba44300!');
// encodage en utf8
$pdo->exec('SET NAMES UTF8');
