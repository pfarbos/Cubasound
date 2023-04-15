# Cubasound
Transformez votre moniteur en "sound responsive screen" 

_______________________________________________________________________________________________________________________________________________________________________________
Description:

Ce projet est basé sur ProcessingCubes (https://github.com/samuellapointe/ProcessingCubes), un travail fantastique de Mr. Samuel Lapointe.
Démo youtube : https://www.youtube.com/watch?v=gHpxRv4MBBA&t=90s

Il s'agira ici d'une adaptation du projet original de Mr. Samuel Lapointe dans un objectif final similaire mais dans un contexte d'utilisation légèrement différent.

Initialement, ce programme utilise la librairie Minim en Java afin de charger une musique stockée localement sur votre machine. 
Il utilise ensuite l'analyseur de spectre FFT pour créer une visualisation en temps réel des fréquences sonores de cette même musique.
Le spectre sonore est alors divisé en trois "zones": basses, moyennes et hautes fréquences. 
Le programme calcule des "scores" pour chacune de ces zones, en analysant la puissance des fréquences dans chaque zone.
Une animation est alors crée , utilisant des cubes ainsi que des murs bougeant et se transformant en fonction des 
scores calculés pour les différentes zones de fréquences. 
Plus les scores sont élevés, plus les cubes et les murs bougent et changent rapidement. 
La couleur de fond change également en fonction des scores calculés pour chaque zone de fréquences.

Pour faire simple,ce programme permet de visualiser le spectre sonore d'une musique en temps réel, en utilisant des formes 
géométriques et des moyens graphiques pour rendre la visualisation plus attrayante.

C'est en voyant le potentiel et l'originalité de ce projet qu'un autre cas d'utilisation plus spécifique m'est venu en tête.
Une utilitation artistique et musicale. 
Un groupe de musique pourrait jouer sur scène avec derrière lui un grand écran connecté à un ordinateur éxécutant le programme mais cette fois-ci, l'entrée audio que prendrait le programme ne serait pas un fichier .mp3 comme sur la version originale de Mr. Samuel Lapointe mais plûtôt le flux audio d'un microphone disposé près des instruments ainsi que des hauts-parleurs de la scène donnant ainsi lieu à un concert plus époustouflant grâce à un écran "sound responsive".


Installation:

Pour utliser correctement ce script, il est nécéssaire de posseder une version à jour de Processing Java (https://processing.org/download)


Utilisation:

-Pour utiliser le programme en mode enregistrement (réagit avec le l'entrée du microphone), il est nécéssaire d'utiliser le logiciel de bouclage audio VB-Audio Virtual Cable
pour créer une boucle audio virtuelle afin de router l'entrée du flux audio du microphone de votre ordinateur vers le code Processing. 
L'utilisation de ce mode nécessite de paramétrer correctement les flux entrée/sortie depuis les paramètres windows en utilisant comme entrée audio la carte son physique de l'ordinateur et comme sortie la carte son virtuelle VB-Audio. 

-Si vous souhaitez utiliser le programme en mode lecture (réagit avec la musique diffusée sur la machine (sortie des hauts-parleurs)) afin de visualiser le spectre de sortie des haut-parleurs en temps réel, il est nécéssaire d'utiliser les paramètres stéréo mix de votre machine en allant dans 
Paramètres > Système > Son 
Avancé > Autres paramètres Audio 
Enregistrement > Stereo Mix > Propriétés
Cochez la case 'Ecouter ce périphérique' et sélectionnez la boucle audio virtuelle (CABLE INPUT VB-AUDIO VIRTUAL CABLE) comme périphérique d'entrée.

Ainsi le flux audio sera routé à la fois sur vos hauts-parleurs physiques mais également sur vos hauts-parleurs virtuels (carte son virtuelle).

Si vous ne faites pas cela, aucun son ne sortira de votre machine mais l'analyseur de spectre fonctionnera tout de même car le flux audio sera quand même routé vers le programme. 

Si vous ne possédez pas de carte "stéréo mix", vous pouvez utiliser le logiciel gratuit et opensource AudioRouter (https://leowinterde.github.io/audio-router/) pour dupliquer le son de sortie des hauts parleurs physiques sur le haut-parleur virtuel (CABLE INPUT VB-AUDIO VIRTUAL CABLE)

Si vous avez des questions ou des commentaires sur ce projet, n'hésitez pas à me contacter (paulin.farbos@gmail.com).
Merci pour l'intérêt que vous portez à ce projet !


/!\Attention

Veillez à correctement paramétrer les flux entrée/sortie AVANT de démarrer le programme. Dans le cas contraire des problèmes pourraient survenir. (pas de son, analyseur de spectre non fonctionnel ...)

Le fichier auto.ps1 est un script PowerShell permettant simplement de paramétrer l'entrée et la sortie audio de manière plus intuitive et rapide. Il n'est pas nécéssaire.


