# P3SwiftGame


## intégration bonus

// Intro : </br>
J’ai souhaité focaliser mon bonus sur la classe Giant, qui se veut résistante mais qui inflige peu de dégâts.
Il faut percevoir ce bouclier comme des charges électriques qui s’accumulent quand le Géant va toucher son adversaire.

// Description : </br>
Celui-ci va donc causer des dommages (initiés à 9 sur son arme « HandFight ») et charger son bouclier de foudre. Trois charges devront être accumulées pour pouvoir libérer l’énergie contenue par les charges électriques. Une fois les trois charges cumulées, le Géant fera trois fois les dégâts de l’arme qu’il porte (s’il a eu le coffre GiftWeapon, cette arme sera bien prise en compte).

// Intégration : </br>
class Giant : </br>

- Ajout d’une variable lightingShield initialisée à 0 qui correspond aux charges du bouclier de foudre.
 - Override de la fonction attack() qui était dans la classe mère Character et utile aux autres classes (exceptée celle du mage car il n’attaque pas).









Celle-ci contient des conditions : </br>

Cas 1 ) </br>
Le géant a cumulé 3 charges et il cible un mage porteur d’un bouclier : </br>
-  lightningShield est remis à zéro
-  une annonce est faite pour  signaler que le Géant consomme ses 3 charges et va faire 3 fois les                 dégâts de l’arme portée.
- les dégâts de l’arme portée sont multipliés par 3 et il est soustrait 5 points de dégâts dû à                    l’absorption du bouclier du mage. Cette valeur est soustraite à la vie de la cible.     - une annonce est faite pour annoncer les dégâts totaux/absorbés.

Il n’y a pas de nouvelle charge de foudre sur cette partie par soucis de cohérence.

Cas 2 ) </br>
Le géant cible un mage dont le bouclier est activé :
- attaque classique, le bouclier absorbe les dégats de l’arme à raison de 5 points de dégâts.
- lightningShield  :  une charge à son bouclier est ajoutée

Cas 3 )</br>
Le géant a cumulé 3 charges :
-  lightningShield est remis à zéro
-  une annonce est faite pour  signaler que le Géant consomme ses 3 charges et va faire 3 fois les                 dégâts de l’arme portée.
- les dégâts de l’arme portée sont multipliés par 3. Cette valeur est soustraite à la vie de la cible.     - une annonce est faite pour annoncer les dégâts totaux/absorbés.

Il n’y a pas de nouvelle charge de foudre sur cette partie par soucis de cohérence.

Cas 4 )</br>
Attaque classique : le géant est en train de construire ses charges :
- les dommages de l’arme portée sont soustraits à la vie du personnage
- une charge est ajoutée à lightningShield
- le Géant est averti de son cotât de charges.







// conclusion :
Avant d’intégrer le code : il me semblait évident de mettre ça sur papier pour y réfléchir. Au début de l’intégration je n’avais pas pris en compte le bouclier du mage ce qui m’a valu deux conditions en plus alors que j’aurais peut être pu simplement ignorer le bouclier du mage, par exemple quand le mage se voit attribué son bouclier le prévenir que celui ci n’absorbe pas les dégâts d’électricité (foudre). Finalement j’ai passé plus de temps pour que toutes les conditions fonctionnent correctement.
J’ai bien aimé intégré ce nouveau sort ! Je commence à bien aimer et à comprendre le fonctionnement entre les objets et comment s’en servir, au début le jeu me semblait très restreint alors que maintenant il y a beaucoup d’amélioration envisageables !
Pendant ce projet j’ai appris aussi deux choses :
il faut documenter son code (déjà pour soi ; j’ai déjà réussi à me perdre) ça semble pas du tout approprié au début mais si on demande de l’aide où qu’on doit donner un coup de pouce c’est pas facile de se repérer. 
Il faut faire des tests, en ce qui me concerne c’était surtout des prints pour vérifier les valeurs.

