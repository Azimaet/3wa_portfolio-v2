'use strict'

/*******************************************************
****************  POP UP FINAL**************************
*******************************************************/

var modal = document.getElementById("contactPopUp");

function ouvrePopUp(){
    modal.style.display = "block";
}

function closePopUp(){
    modal.style.display = "none";
}

function retourWindow(event){
    if (event.target == modalContact) {
        modal.style.display = "none";
    }
}

//On lance le script une fois que le DOM est complètement chargé
$(function()
{
    console.clear();
    console.log("Le DOM est bien chargé");
    //ecouteurs fonctions POPUP
    $('.btcontact').on("click", ouvrePopUp); // à faire en dernier
    $('.close').on("click", closePopUp); // à faire en dernier
    $(window).on("click", retourWindow); // à faire en dernier
});
