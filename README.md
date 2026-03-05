# game_of_life
Enzo-cbm/game_of_life

README - Game of Life (Scilab)

Description
-----------
Ce script Scilab implémente une version du "Game of Life" (automate cellulaire de Conway) sur une grille carrée n×n.
La grille est initialisée aléatoirement (0/1), puis mise à jour sur rep itérations selon les règles classiques
en comptant les voisins (8-voisinage) et en affichant l’évolution à l’écran.

Fichier principal
-----------------
- g_o_f.sci  (contient la fonction g_o_f)

Fonction
--------
[mat] = g_o_f(n, rep)

Entrées :
- n   : taille de la grille (n x n)
- rep : nombre d’itérations (générations) à simuler

Sortie :
- mat : matrice finale (0 = cellule morte, 1 = cellule vivante)

Principe
--------
1) Création d’une matrice n×n aléatoire de 0/1.
2) Pour chaque itération :
   - calcul du nombre de voisins vivants pour chaque cellule
   - application des règles :
       * naissance : une cellule devient vivante si elle a exactement 3 voisins
       * survie   : une cellule vivante reste vivante si elle a exactement 2 voisins
       * mort     : sinon elle devient morte
   - affichage de la matrice avec Matplot, puis pause courte

Affichage
---------
- L’affichage utilise Matplot(mat*4) pour visualiser les cellules.
- Une couleur verte est ajoutée via addcolor(name2rgb('green')/255).
- Le script efface la fenêtre graphique à chaque itération (clf) puis redessine.

Exécution (exemple)
-------------------
Dans Scilab :

1) Charger le fichier (si tu l’as sauvegardé en g_o_f.sci) :
   exec("g_o_f.sci", -1);

2) Lancer une simulation :
   g_o_f(80, 300);

Remarques
---------
- Le code traite les bords de la matrice avec des cas particuliers (coins + bords + intérieur).
- Le délai sleep(230) contrôle la vitesse de l’animation (à ajuster selon la machine).
- La condition d’initialisation est aléatoire : deux exécutions peuvent produire des comportements très différents.

Améliorations possibles
-----------------------
- Simplifier le calcul des voisins (padding, convolution, ou boucles plus compactes).
- Ajouter un mode "bords périodiques" (tore) pour éviter les nombreux cas particuliers.
- Permettre de choisir la densité initiale (probabilité d’avoir une cellule vivante).
- Ajouter une option pour sauvegarder l’animation (images) ou mesurer des statistiques (densité, périodes, etc.).
