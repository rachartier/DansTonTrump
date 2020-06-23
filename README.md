--

# DansTonTrump

## Description du sujet

Ce projet permet de visualiser les meilleurs citations de Donald Trump et de pouvoir en personnaliser avec le nom de votre choix ! 

Il se décompose en 4 pages:

- Page d'accueil:
- Personalized Quotes: Citation personnalisé avec en entrée un champ de texte.
- Random Quotes: Une citation au hasard
- Last Quotes: Les toutes dernières citations de DT ! Petit veinard.

## Points techniques abordés

### Un master dynamique

- Un pullDownMenu qui permet d'accéder aux différentes vue disponibles de l'application

### Des requêtes à l'API Web WhatDoesTrumpThink

- Requêtes à l'API et parse du JSON renvoyé.
- Visible dans la classe *RestAPI* pour l'appel reseau, et *QuoteManager* pour
le lien à l'API. 
- Parse du JSON visible dans la classe *QuoteBuilder*

## Fonctionnalités à ne pas râter lors des tests

- La fonctionnalité *Personalized Quote* qui permet de compléter une fameuse citation de Donald Trump avec le nom de votre choix!

## Bugs connus

* RAS (pour l'instant)


## Auteurs

### Clément ALLAVENA

- 50%
- QML: toutes les pages, et un peu de C++ aussi (pour la liaison)
- Auto-Évaluation: je nous mettrais 15.

### Raphaël CHARTIER

- 50%
- Tout le C++, et un peu de QML (pour la liaison et amélioration de la vue)
- QML: La page *Detail*, QuoteDisplay et Title
- Auto-Évaluation: 


[Vue de l'application](doc/DTTmockupPDF.pdf)

