<?php
include 'pdo.php';
/* REQUETE POUR LA CREATION DES VIGNETTES*/
$requeteCategory = $pdo->prepare(
    'SELECT *
     FROM travaux
     WHERE section = :sectionClick
     ORDER BY dateCrea DESC, idTravaux'
);
$requeteCategory->execute(
    [":sectionClick" => $_GET["section"]]
    );
$travaux = $requeteCategory->fetchAll( PDO::FETCH_ASSOC );



/* STRUCTURE DE CONTROLE POUR HEADERSECTION */
// Initialisation des variables, on indique un false au commencement
$previous = false;
$next = false;
// Tableau de référence, avec nos futurs strings qui se grefferont dans le lien
$sections = array ('Illustration' , 'Web' , 'Communication' , 'Video');
// Grâce à la fonction count, on compte le nombre de valeurs dans notre tableau et on stocke ça dans nbSections
$nbSections = count($sections);

// On établit la concordance entre la section cliquée par l'user et son index dans le tableau
$position = array_search($_GET['section'], $sections);




//Cette structure concerne categorie 1 et 2
if ($position > 0 && $position < $nbSections - 1) {
    $previous = $sections[$position - 1];
    $next = $sections[$position + 1];
}
//Celle ci concerne 0 (index 1)
elseif ($position == 0) {
    $previous == false;
    $next = $sections[$position + 1];
}
//Celle ci concerne 3 (index4)
elseif ($position == 3){
    $previous = $sections[$position - 1];
    $next == false;
}
//Celle ci les possibles autres dans l'absolu
else {
    $previous == false;
    $next == false;
}

include "category.phtml";
