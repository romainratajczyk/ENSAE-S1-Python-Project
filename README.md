# Projet Python pour la Data Science
 Auteurs : *Isaline JOUVE, Romain RATAJCZYK, Vincent VASYLCHENKO*  

# Sujet :
<div align="justify">
Les élections municipales de 2020 ont marqué une forte progression d’Europe Écologie Les Verts (EELV) dans plusieurs grandes villes françaises, avec un certain nombre de particularités : crise sanitaire liée à la Covid-19, premières municipales pour le pouvoir exécutif et son parti, et un niveau d’abstention historiquement élevé (55 % au premier tour, 58 % au second).

Ce projet vise à analyser les résultats des municipales de 2014 et 2020 afin d’examiner l’évolution du vote écologiste et d’évaluer s’il existe un lien avec des dynamiques socio-démographiques, notamment la gentrification. L’hypothèse de départ est que les villes déjà très gentrifiées présentent une stabilité dans leur vote, tandis que les communes en cours de gentrification pourraient connaître une progression plus marquée du vote en faveur d’EELV (portée par l’arrivée de populations et par une image renvoyée plus sensibles aux enjeux écologistes).
Nous nous sommes également demandé si les résultats ne seraient pas le fait du repositionnement d’un vote de gauche vers EELV, portée par leur percée aux élections européennes de 2019.

L’étude se concentre sur les communes de plus de 3 500 habitants, seuil à partir duquel les nuances politiques sont renseignées. Les données mobilisées incluent les résultats électoraux de 2014 et 2020 (data.gouv.fr) ainsi que des indicateurs socio-démographiques tels que la catégorie socio-professionnelle, le niveau d’éducation ou encore l’emploi.

# Problématique : 
Dans quelle mesure peut-on établir une corrélation entre la progression du vote pour le bloc gauche et écologiste dans les communes françaises de plus de 3 500 habitants et l’évolution de leurs caractéristiques socio-démographiques, notamment liées à la gentrification ?

# Modèle utilisé : 

Le projet articule deux approches complémentaires pour traiter la problématique de la gentrification et du vote : 
Approche Économétrique :

*Utilisation de modèles de Régression Linéaire Multiple (MCO) via la librairie statsmodels sur les données municipales et présidentielles.

Approche Machine Learning (Exploration) :

*Random Forest Regressor : Utilisé pour capter des non-linéarités et des effets de seuil (par exemple, l'impact de la densité qui peut différer selon la taille de la ville).


# Exécution du projet : 


# Données utilisées :
projet repose sur le croisement de bases de données massives issues de la statistique publique :

    Données Électorales (Ministère de l'Intérieur / data.gouv.fr) : Résultats des élections municipales de 2014 et 2020 par commune.

    Données Socio-Économiques (INSEE) :

        Filosofi : Revenus fiscaux localisés et taux de pauvreté (millésimes 2013/2019).

        Recensement de la Population : Structure par diplôme et catégories socio-professionnelles (focus sur la part des cadres).

        Données géographiques : Utilisation des codes communes (COG) pour assurer la fusion exacte entre les sources.

