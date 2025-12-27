# Python pour la Data Science : Analyse des Déterminants Socio-Économiques du Vote Municipal
 Auteurs : *Isaline JOUVE, Romain RATAJCZYK, Vincent VASYLCHENKO*  

# Sujet :
<div align="justify">
Les élections municipales de 2020 ont marqué une forte progression d’Europe Écologie Les Verts (EELV) dans plusieurs grandes villes françaises, avec un certain nombre de particularités : crise sanitaire liée à la Covid-19, premières municipales pour le pouvoir exécutif et son parti, et un niveau d’abstention historiquement élevé (55 % au premier tour, 58 % au second).

Ce projet vise à analyser les résultats des municipales de 2014 et 2020 afin d’examiner l’évolution du vote écologiste et d’évaluer s’il existe un lien avec des dynamiques socio-démographiques, notamment la gentrification. L’hypothèse de départ est que les villes déjà très gentrifiées présentent une stabilité dans leur vote, tandis que les communes en cours de gentrification pourraient connaître une progression plus marquée du vote en faveur d’EELV (portée par l’arrivée de populations et par une image renvoyée plus sensibles aux enjeux écologistes).
Nous nous sommes également demandé si les résultats ne seraient pas le fait du repositionnement d’un vote de gauche vers EELV, portée par leur percée aux élections européennes de 2019.

L’étude se concentre sur les communes de plus de 3 500 habitants, seuil à partir duquel les nuances politiques sont renseignées. Les données mobilisées incluent les résultats électoraux de 2014 et 2020 (data.gouv.fr) ainsi que des indicateurs socio-démographiques tels que la catégorie socio-professionnelle, le niveau d’éducation ou encore l’emploi.

# Problématique : 
> Dans quelle mesure peut-on établir une corrélation entre la progression du vote pour le bloc gauche et écologiste dans les communes françaises de plus de 3 500 habitants et l’évolution de leurs caractéristiques socio-démographiques, notamment liées à la gentrification ?

# Modèle utilisé : 

Le projet articule deux approches complémentaires pour traiter la problématique de la gentrification et du vote : 
Approche Économétrique :

* Utilisation de modèles de Régression Linéaire Multiple (MCO) via la librairie statsmodels sur les données municipales et présidentielles.
* : Nous analysons l'évolution du vote en fonction de l'évolution des variables socio-économiques. Cette approche en "première différence" permet de neutraliser les effets fixes invariants propres à chaque commune.
* Analyse de la significativité des coefficients (p-values), examen de la multicolinéarité (Condition Number) et diagnostic des résidus.

Approche Machine Learning (Exploration) :

* Random Forest Regressor : Utilisé pour capter des non-linéarités et des effets de seuil (par exemple, l'impact de la densité qui peut différer selon la taille de la ville).
* ACP (Analyse en Composantes Principales) : Pour visualiser l'espace sociologique des communes et identifier les variables les plus corrélées à la dynamique électorale via le cercle des corrélations.

# Exécution du projet : 
Pour l'exécution du projet, il faut avoir installé les dépendances (`pip install -r requirements.txt`). Ensuite, il suffit d'exécuter successivement les cellules des notebooks dans cet ordre : 
1. **[Preparation des données](data_preparation.ipynb)** : Ce notebook récupère les sources brutes et génère le fichier de données consolidé.
2. **[Analyse](Rapport_analyse.ipynb)** : Ce notebook contient le rapport final, les visualisations et les modèles.

# Données utilisées :

Le projet repose sur le croisement de plusieurs bases de données issues de la statistique publique française. L'unité de base est la commune (code COG).

* **[Données Électorales (Ministère de l'Intérieur / data.gouv.fr)](https://www.data.gouv.fr/)** :

  * [Résultats des élections municipales de 2014](https://www.data.gouv.fr/storage/f/2014-03-25T16-06-23/muni-2014-resultats-com-1000-et-plus-t1.txt) et [de 2020](https://www.data.gouv.fr/datasets/elections-municipales-2020-resultats-1er-tour) : Scores par listes et nuances politiques pour le calcul du bloc de gauche et écologiste (restreint pour 2014 aux communes de plus de 1000 habitants).

  * [Données des élections présidentielles 2017](https://www.data.gouv.fr/datasets/election-presidentielle-des-23-avril-et-7-mai-2017-resultats-du-1er-tour-1) et [2022](https://www.data.gouv.fr/datasets/election-presidentielle-des-10-et-24-avril-2022-resultats-definitifs-du-1er-tour) : Utilisées dans le cadre de l'exploration ML pour comparer les dynamiques locales et nationales.

* **[Données Socio-Économiques (INSEE)](https://www.insee.fr/) accessibles sur [data.gouv.fr](https://www.data.gouv.fr/)** :

  * [Dispositif Filosofi (Revenus)](https://www.insee.fr/fr/metadonnees/source/serie/s1172) : Données sur les revenus et les taux de pauvreté localisés à l'échelle communale pour les millésimes 2013, 2016 et 2019[]().

  * [Recensement de la Population (RP)]() : Exploitation des bases "Population" et "Diplômes" pour les années 2014, 2017, 2020 et 2022. Ces fichiers permettent de suivre l'évolution de la part des cadres (CS3) et des niveaux d'éducation par commune.

  * [Code Officiel Géographique (COG)]((https://www.data.gouv.fr/datasets/code-officiel-geographique-cog)) : Utilisation des [tables de correspondance des codes communes]() pour assurer une fusion exacte des sources malgré les fusions de communes survenues entre 2014 et 2020.

Il faut encore corriger certains liens (pour données socio-économiques)
