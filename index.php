<?php

include 'pdo.php';

// 2 - On prépare la requête
$requeteHomePage = $pdo->prepare(
	'SELECT *
     FROM category
     ORDER BY idSection'
);

// Demande à PDO d'envoyer la requête à MySQL pour exécution.
$requeteHomePage->execute();

/* La méthode fetch permet les récupérer les infos d'une ligne de résultat (ici : une commande)
   et de passer le pointeur à la ligne suivante
 */

 $category = $requeteHomePage->fetchAll( PDO::FETCH_ASSOC );

 // var_dump($orders);

include 'index.phtml';
