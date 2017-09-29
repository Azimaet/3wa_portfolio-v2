'use strict'

/*******************************************************
*******************  AJAX   ****************************
*******************************************************/
function ajaxGenerationModal(reponseHtml)
{
    // La réponse HTTP contient du HTML que l'on insère donc dans la page.
    $('#myModal').html(reponseHtml);
}
/*******************************************************
******************  EVENTS    **************************
*******************************************************/

function onClickGenerer(){
    var index = $(this).data("index");
    $.post('webservices/modal-webservice.php', {id: index}, ajaxGenerationModal); //essayer en chaine de requete
}

/*******************************************************
****************  POP UP FINAL**************************
*******************************************************/

var modal = document.getElementById("myModal");

function ouvrePopUp(){
    modal.style.display = "block";
}

function closePopUp(){
    modal.style.display = "none";
}

function retourWindow(event){
    if (event.target == modal) {
        modal.style.display = "none";
    }
}

//On lance le script une fois que le DOM est complètement chargé
$(function()
{
    console.clear();
    $('.vignette').on("click", onClickGenerer);
        $('.close').on("click", closePopUp); // à faire en dernier
    //ecouteurs fonctions POPUP
    $('.vignette').on("click", ouvrePopUp); // à faire en dernier
    $(window).on("click", retourWindow); // à faire en dernier
});
