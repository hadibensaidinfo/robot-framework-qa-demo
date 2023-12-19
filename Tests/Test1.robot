*** Settings ***
Resource        ../PageObject/LoginPage.resource
Variables       LoginPage.py


*** Test Cases ***
En Tant qu'utilisateur je peux me connecter au site
    [Documentation]    C'est Test permet d'asserter La Login succueful
    Ouvrir Le Navigateur
    Saisie Identifiant    ${userName}    ${password}
    Asserter Que La Login Effectuer Avec Success
