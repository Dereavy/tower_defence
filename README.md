Réalisation d’un Tower Defense avec plusieurs IA différentes
Vous allez vous mettre en équipes de 3 ou 4 personnes et travailler comme si vous étiez un studio indépendant pendant 3 semaines pour réaliser un jeu de Tower Defense en utilisant le projet abordé pendant les 2 séances précédentes comme base.
Objectifs
Minimum un ennemi avec un comportement unique par membre de l’équipe. Vous pouvez inclure les comportements vus dans la formation en plus des vôtres (aller directement à la base, aller à la base en évitant les tours.
Créer un gameplay amusant et intéressant. Ne perdez pas de vue cet objectif, parfois un comportement simple suffit pour capter l’attention du joueur.
Apprendre à travailler en équipe : s’entraider, répartir les tâches, avoir une vision partagée.
Pendant la dernière séance (30 Avril) chaque équipe présentera pendant 20 minutes son jeu, et les projets seront mis à disposition sur GitHub pour qu’on puisse essayer nous-même, et voir l’approche utilisée par chaque groupe.
La présentation
La séance sera enregistrée.
Présentez rapidement la vision globale de votre projet. Sur quel aspect du gameplay avez-vous mis l’accent ? Avez-vous pensé à un thème pour votre jeu ? Un cadre, peut être même une petite histoire ?
Chaque membre de l’équipe devra parler de son rôle au sein du projet.
Quelles sont les difficultés rencontrées, comment les avez-vous surmontées ?
Si vous aviez plus de temps, qu’est-ce que vous aurez aimé ajouter de plus ? Quelles améliorations apporteriez-vous ?
Est-ce que l’expérience vous a plu ? Pensez-vous continuer avec ce projet, ou d’autres projets de jeu à l’avenir ? (Vous pouvez être honnêtes, je ne vous donnerai pas de mauvaises notes si vous dîtes que le développement de jeu, ce n’est pas pour vous, ou que le projet ne vous inspire pas trop !)
Quelques captures d’écran et/ou des démonstrations en direct via le partage d’écran pour illustrer vos propos, ça ne fait pas de mal !
Conseils
Désignez un membre du groupe « admin ». Celui-ci sera chargé d’héberger le projet sur GitHub et d’inviter les autres en tant que collaborateurs. En cas de désaccord, l’avis de l’admin permettra de trancher. Souvent on arrive à trouver un consensus dans une équipe, mais parfois c’est utile d’avoir un lead pour résoudre des questions où tout le monde n’est pas d’accord. Ceci-dit, optez plutôt pour une résolution qui convient le plus possible à tous, ce n’est pas un rôle de « dictateur » non plus.
Mettez vous d’accord sur les éléments qui seront modifiés par chaque membre de l’équipe, c’est beaucoup plus facile de résoudre les merge sur git quand on ne modifie pas le même fichier.
Faîtes des commit souvent (et n’oubliez pas de push, sinon vos modifications ne seront présentes que sur votre copie locale !), cela facilite aussi les merge, et permet de revenir en arrière avec plus de précision, si nécessaire.
Même si chacun est chargé de concevoir et d’implémenter une IA individuellement, vous avez tout à fait le droit de vous entraider (c’est même encouragé). Pensez à la méthode « rubber duck » https://fr.wikipedia.org/wiki/M%C3%A9thode_du_canard_en_plastique .
Pratiquez le « code review ». C’est-à-dire examiner le code des autres pour pouvoir suggérer des modifications ou trouver des bugs. Comme il s’agit d’un projet de développement relativement rapide, utilisez surtout cet outil pour le code qui ne fonctionne pas, ou qui présente des problèmes.
On a vu que dans certains cas on a besoin de changer le comportement en cours de route, par exemple une IA qui veut attaquer les tours ne peut le faire que s’il existe des tours. Un ennemi qui reste sur place jusqu’à-ce que le joueur construise des tours, ce n’est pas très drôle. Pensez au concept d’automate fini ou « Finite State Machine » en Anglais que je vous ai présenté rapidement. Si vous avez besoin d’aide pour implémenter ce genre de système, n’hésitez pas à me demander, mais en général une implémentation très simple à base de « if » peut suffire quand on n’a que 2 ou 3 états à gérer.
Vous pouvez facilement créer d’autres types de tour et de projectile, en plus des ennemis, en suivant les modèles présents dans le projet de base.
Les interfaces peuvent prendre beaucoup de temps de développement, si vous avez des idées qui obligent à fortement modifier l’interface visuelle, ne les implémentez pas à la dernière minute, et prévoyez du temps en dehors des cours pour peaufiner la présentation.
En élargissant de façon un peu plus générale cette idée : l’estimation de la difficulté d’une tâche est une compétence importante. Avant de vous lancer dans une idée qui a l’air attractive, essayez de jauger combien de temps cela peut prendre, et prévoyez le double de votre estimation pour l’implémenter. Il vaut mieux avoir une idée simple qui fonctionne, qu’une idée complexe qu’on n’a pas eu le temps de terminer, ou qui présente des bugs majeurs.
Prévoyez du temps de « playtest », c’est-à-dire d’essayer votre jeu du point de vue du joueur. Vous allez trouver non seulement des bugs ou des erreurs de gameplay (par exemple un jeu impossible à gagner), mais aussi jauger l’engagement généré par votre création. L’idéal c’est de présenter un challenge, mais pas insurmontable. Il faut que le joueur soit à l’aise pour prendre en main le jeu avant d’être confronté à une difficulté trop grande.
Concentrez-vous sur le gameplay, c’est l’élément le plus important ! Ne vous occupez des éléments visuels et du « polish » qu’une fois vous avez des mécanismes de jeu et des comportements d’IA qui vous plaisent.
Bonus
Trouvez un nom cool pour votre jeu !
Vous pouvez importer des graphismes différents si vous avez envie de changer de thème, ou améliorer l’aspect visuel. Vous avez quelques packs dans le dossier « tower defense resources », et vous pouvez regarder dans les liens en dessous pour trouver d’autres images libres de droits. Je vous demande d’éviter les ressources payantes ou protégées. Bien sûr, vous pouvez aussi créer vos propres images, mais encore une fois, pensez au temps supplémentaire qu’il faudra prévoir, le pixel art, c’est long !
Liens
Le projet de base sur GitHub : https://github.com/sebovzeoueb/formation-ia-tower-defense
La documentation Godot : https://docs.godotengine.org/en/stable/
Images libres de droits : 
https://opengameart.org/ 
https://itch.io/game-assets/free 
https://www.gamedevmarket.net/category/2d/?type=free 
https://craftpix.net/freebies/ 
