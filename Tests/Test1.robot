*** Settings ***
Documentation   Authentification Utilisateur
Resource        ../PageObject/LoginPage.resource
Variables       LoginPage.py


*** Test Cases ***
En Tant qu'utilisateur je peux me connecter au site
    [Documentation]    C'est Test permet d'asserter La Login successful
    Ouvrir Le Navigateur
    Saisie Identifiant    ${userName}    ${password}
    Asserter Que La Login Effectuer Avec Success

En Tant qu'utilisateur je saisis Un Identifient incorrecte
    [Documentation]    C'est Test permet d'asserter L'identifient incorrecte
    Ouvrir Le Navigateur
    Saisie Identifiant    ${usernameIncorrecte}    ${password}
    Asserter L'affichage De Message D'erreur

En Tant qu'utilisateur je saisis Un mode de passe incorrecte
    [Documentation]    C'est Test permet d'asserter Le mode de passe incorrecte
    Ouvrir Le Navigateur
    Saisie Identifiant    ${userName}    ${passwordIncorrecte}
    Asserter L'affichage De Message D'erreur
