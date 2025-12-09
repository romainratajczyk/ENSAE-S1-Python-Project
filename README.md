# Projet Python pour la Data Science
 Auteurs : *Isaline JOUVE, Romain RATAJCZYK, Vincent VASYLCHENKO*  

# Sujet :
<div align="justify">
Les élections municipales de 2020 ont marqué une forte progression d’Europe Écologie Les Verts (EELV) dans plusieurs grandes villes françaises, avec un certain nombre de particularités : crise sanitaire liée à la Covid-19, premières municipales pour le pouvoir exécutif et son parti, et un niveau d’abstention historiquement élevé (55 % au premier tour, 58 % au second).

Ce projet vise à analyser les résultats des municipales de 2014 et 2020 afin d’examiner l’évolution du vote écologiste et d’évaluer s’il existe un lien avec des dynamiques socio-démographiques, notamment la gentrification. L’hypothèse de départ est que les villes déjà très gentrifiées présentent une stabilité dans leur vote, tandis que les communes en cours de gentrification pourraient connaître une progression plus marquée du vote en faveur d’EELV (portée par l’arrivée de populations et par une image renvoyée plus sensibles aux enjeux écologistes).
Nous nous sommes également demandé si les résultats ne seraient pas le fait du repositionnement d’un vote de gauche vers EELV, portée par leur percée aux élections européennes de 2019.

L’étude se concentre sur les communes de plus de 3 500 habitants, seuil à partir duquel les nuances politiques sont renseignées. Les données mobilisées incluent les résultats électoraux de 2014 et 2020 (data.gouv.fr) ainsi que des indicateurs socio-démographiques tels que la catégorie socio-professionnelle, le niveau d’éducation ou encore l’emploi.

# Problématique : 
Dans quelle mesure peut-on établir une corrélation entre la progression du vote écologiste dans les communes françaises de plus de 3 500 habitants et l’évolution de leurs caractéristiques socio-démographiques, notamment liées à la gentrification ?

# Modèle utilisé : 

# Données utilisées :
- [Ministère de l'intérieur](https://www.data.gouv.fr/pages/donnees-des-elections-et-referendums/) (Base de Données sur les élections et référendums en France), on s'intéresse aux bases de résultats des élections de 2014 et 2020.
- [Meteonet](https://meteonet.umr-cnrm.fr/), données météo fournies par Météo France toutes les 6 minutes pour 532 stations dans le quart Sud-Est de la France.
- [Base de données sur les communes françaises](https://www.data.gouv.fr/fr/datasets/communes-de-france-base-des-codes-postaux/), contenant notamment leurs coordonnées GPS.
- [Base de données Geojson des forêts françaises](https://transcode.geo.data.gouv.fr/services/5e2a1f74fa4268bc255efbc3/feature-types/ms:PARC_PUBL_FR?format=GeoJSON&projection=WGS84)

