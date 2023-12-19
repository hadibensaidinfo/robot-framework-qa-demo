*** Settings ***
Documentation       Communs

Library             SeleniumLibrary    implicit_wait=5s
Variables           Localisateur/LoginPage.py


*** Keywords ***
Ouvrir Le Navigateur
    [Documentation]    Cette Keyword permet d'ouvrir le navigateur et vérifier que L'url est ouvert
    Open Browser    url=https://${remote_url}    browser=${browser}
    Wait Until Element Is Visible    class:orangehrm-login-slot

Saisie Identifiant
    [Documentation]    Cette Keyword permet de remplir le champs d'identifient
    ...    userName(String): C'est variable possède le valeur d'email
    ...    password(String): C'est variable possède le valeur de mot de passe
    [Arguments]    ${userName}    ${password}
    Saisir L'Email    ${userName}
    Saisir Le Mot De Passe    ${password}
    Click Element    ${boutonDeLogin}

Asserter Que La Login Effectuer Avec Success
    [Documentation]    Cette Keyword permet de vérifier que l'utilisateur est bien connecté
    Location Should Be    https://${remote_url}/web/index.php/dashboard/index
    Wait Until Element Is Visible    ${menuSideBar}    error=Le Menu n'est pas affiché
    Wait Until Element Is Visible    ${cardUser}    error=L'utilisateur n'est pas connecté

Saisir L'Email
    [Documentation]    Cette Keyword permet de remplir le champs Email
    ...    userName(String): C'est variable possède le valeur d'email
    [Arguments]    ${userName}
    Input Text    ${champsDeIdentifiernt}    ${userName}

Saisir Le Mot De Passe
    [Documentation]    Cette Keyword permet de remplir le champs Mot de passe
    ...    password(String): C'est variable possède le valeur de mot de passe
    [Arguments]    ${password}
    Input Password    ${ChampsDeModeDePasse}    ${password}
