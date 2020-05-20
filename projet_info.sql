-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  mer. 13 mai 2020 à 15:19
-- Version du serveur :  10.4.10-MariaDB
-- Version de PHP :  7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `projet_info`
--

-- --------------------------------------------------------

--
-- Structure de la table `sites`
--

DROP TABLE IF EXISTS `sites`;
CREATE TABLE IF NOT EXISTS `sites` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` char(255) NOT NULL,
  `description` text NOT NULL,
  `commentary` text NOT NULL,
  `images` text NOT NULL,
  `address` varchar(255) NOT NULL,
  `hours` text NOT NULL,
  `latitude` float(10,5) NOT NULL,
  `longitude` float(10,5) NOT NULL,
  `type` char(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `sites`
--

INSERT INTO `sites` (`id`, `name`, `description`, `commentary`, `images`, `address`, `hours`, `latitude`, `longitude`, `type`) VALUES
(1, 'Mulligan\'s Pub', 'C\'est un très bon bar ouvert en soirée.\r\nParfait pour passer un bon moment entre amis.', 'Celui là on le recommande absolument !', '', '44 Rue du Dr Leroy, 72000 Le Mans', '15h à 2h du matin (du mardi au samedi)\r\n16h à 1h du matin (dimanche et lundi)', 48.00179, 0.19670, 'Soirée'),
(4, 'Musée automobile des 24 Heures du Mans', 'À travers 140 véhicules, l’Automobile Club de l’Ouest vous raconte l’épopée de l’automobile dans la Sarthe et le succès de son épreuve internationale.\r\n\r\nBentley, Ferrari, Jaguar, Ford, Porsche, Matra, Audi … tous les grands noms y sont représentés par leurs modèles mythiques qui immergent le visiteur dans la plus grande course d’endurance au monde. 350m² d’expositions temporaires viennent compléter ce parcours thématisé qui peut se poursuivre par la visite du célèbre circuit des 24 Heures du Mans.', 'Si vous êtes fan de voitures et des 24h c\'est un endroit à visiter !', '', '9 Place Luigi Chinetti, 72100 LE MANS', 'Du 1er octobre au 30 Avril : tous les jours de 10h à 18h\r\nDu 1er Mai au 30 Septembre : tous les jours de 10h à 19h', 47.95614, 0.20748, 'Culture'),
(5, 'EVE Scène Universitaire', 'Eve-Scène universitaire accueille du théâtre, de la danse et de la musique destinés aux étudiants, mais pas seulement. Tous les publics sont invités à venir voir des spectacles sur le campus du Mans.', 'Seulement 4€ pour les étudiants et du contenu de qualité ! L\'endroit parfait pour un concert avec ses amis ou pour découvrir une pièce de théâtre. ', '', 'Avenue Olivier Messiaen, 72000 Le Mans', 'Du lundi au vendredi: de 9h30 à 12h30 et de 14h à 18h', 48.01747, 0.16116, 'Culture'),
(6, 'Les Saulnières', 'Les Saulnières est une salle de spectacle située au Nord de la ville du Mans. Baptisée \"maison des loisirs et de la culture\", elle n\'est pas une simple maison de quartier mais accueille des artistes de renommée nationale et internationale.', 'Des potes à nous y ont déjà joué #MoonJut', '', '239 Avenue Rhin et Danube, 72100 Le Mans', 'Du lundi après-midi au vendredi de 09h00 à 12h30 & de 14h00 à 17h00', 48.01992, 0.18234, 'Culture'),
(7, 'Carré Plantagenêt', 'Le Musée d\'archéologie et d\'histoire du Maine, ou officiellement Musée Jean-Claude-Boulard Carré Plantagenêt, est un musée situé dans la ville du Mans, dans le quartier Saint-Nicolas, proche du secteur centre.', 'Pour ceux qui veulent en apprendre un peu plus sur l\'histoire du Mans, c\'est un bon endroit où vous rendre.', '', '2 Rue Claude Blondeau, 72100 Le Mans', '', 48.00711, 0.19811, 'Culture'),
(8, 'Musée de Tessé', 'Le musée de Tessé est le musée des beaux-arts de la ville du Mans. Il propose de nombreuses visites guidées sur divers thèmes et se situe juste en marge du cadre naturel des quinconces des Jacobins et du parc de Tessé.', 'Un musée surtout pour les amateurs d\'art et ceux en quête de découverte.', '', '2 Avenue de Paderborn, 72100 Le Mans', '#Covid-19', 48.01029, 0.20355, 'Culture'),
(9, 'Le Musée Vert', 'Muséum d’histoire naturelle du Mans, le musée Vert rassemble aujourd’hui 450000 spécimens scientifiques. Une mise en scène attractive permet de présenter la faune, la flore et la géologie locale et d’aborder des thèmes d’actualité comme la biodiversité de la région. ', 'Si vous voulez en apprendre plus sur la faune et la flore de la région c\'est l\'endroit parfait. Ça peut plaire aux enfants aussi !', '', 'Rue d\'Alembert, 72100 Le Mans', '#Covid-19', 47.98668, 0.20811, 'Culture'),
(10, 'Les Cinéastes', 'Un petit cinéma, avec des tarifs intéressant pour les étudiants. Il est possible sur leur site de louer un film que vous souhaitez regarder mais qui n\'est plus à l\'affiche.', 'Un petit cinéma sympa qui propose de bons films.', '', '42 Place des Comtes du Maine, 72000 Le Mans ', 'Veuillez consulter les horaires des séances sur le site les-cineastes.fr', 48.00482, 0.20031, 'Culture'),
(11, 'Le SPOT', 'Le SPOT est l’un des plus grands skateparks couverts de France, géré intégralement par la ville du Mans, qui accueille les pratiques du skateboard, roller, BMX et trottinettes freestyle.', 'Si vous faites du skate foncez-y !', '', '5 Rue Louis Harel de la Noë, 72000 Le Mans', 'ouvert l\'après-midi (voir sur lespot.fr pour plus de détails)', 48.01710, 0.15028, 'Loisirs'),
(12, 'SUAPS', 'La pratique sportive au cœur de votre réussite et une équipe à votre écoute : pour progresser et apprendre,\r\npour prendre plaisir,\r\npour comprendre et anticiper,\r\npour avoir confiance en soi,\r\npour gérer ses émotions,\r\npour rencontrer et échanger,\r\npour votre santé et bien être...', 'Pour toutes activités sportives sur le campus universitaire avec un encadrant c\'est la qu\'il faut aller ! ', '', '2 Boulevard Paul d\'Estourn de Constant, 72000 Le Mans', 'Bâtiments toujours ouvert mais pour savoir l\'horaire de votre sport, regardez sur le site.', 48.01673, 0.16653, 'Loisirs'),
(13, 'Iles aux sports', 'Un espace sportif avec ses équipements. ', 'Un lieux pour faire du street workout', '', '4 Rue Paul Doumer, 72100 Le Mans', 'Toujours ouvert. ', 47.98771, 0.23561, 'Culture'),
(14, 'Jump XL', 'Les sessions de Free Jumping sont la garantie d’un agréable moment sur trampolines. La particularité du Free Jumping c’est que tu peux jumper où tu veux, quand tu veux. ', 'Parfait pour un bon moment de défoulement. Cependant cela reste un peu cher.', '', '5 Rue Thomas Edison, 72000 Le Mans ', '#Covid-19', 48.02487, 0.17979, 'Loisirs'),
(15, 'Cinémas CGR', 'Avant-premières, événements et espaces privatisables dans une chaîne de cinémas multiplexes grand public.', 'Un cinéma chill avec un tarif unique de 6,50€ pour tous le monde, 6€ pour ceux du matin.', '', '11 Rue du Port, 72000 Le Mans', 'Pour les horaires des séances regardez sur le site du CGR Le Mans Colisée.', 48.00267, 0.19427, 'Loisirs'),
(16, 'Pathé', 'Chaîne de multiplexes avec une programmation de sorties nationales, avant-premières et séances spéciales.', 'Un cinéma avec de grandes salles, assez cool pour allez à plusieurs et à proximité des bars pour finir la soirée.', '', '3 Place des Jacobins, 72100 Le Mans', 'Pour les horaires des séances regardez sur le site du Pathé du Mans.', 48.00735, 0.19975, 'Loisirs'),
(17, 'Piscine des Ardriers', 'Particulièrement calme, la piscine des Ardriers, dotée d\'un bassin d\'activités et d\'une pataugeoire, est idéale pour la détente et les loisirs en famille ou entre amis. L\'établissement est aussi propice à la pratique sportive, de la familiarisation au perfectionnement. ', 'L\'eau est chaude et il n\'y a pas trop de monde. C\'est parfait pour nager en soirée.', '', 'Rue du Vieux Loup, 72000 Le Mans ', 'Ouvert l\'après-midi (voir <a href=\"http://www.lemans.fr/dynamique/les-activites/les-piscines/la-piscine-des-ardriers/\">ici</a> pour plus de précisions)', 48.00268, 0.17441, 'Loisirs'),
(18, 'Speed Park', 'Complexe de loisirs avec karting, bowling, lazer game, restaurant convivial sur place et accueil de célébrations.', 'Un peu chère mais bon pour un moment cool entre potes.', '', '1 Rue de Villeneuve, 72650 Saint-Saturnin', 'LUNDI/MARDI(Hors laser)	18h à 00h\r\nMERCREDI	14h à 00h\r\nJEUDI	        17h à 01h\r\nVENDREDI	17h à 02h\r\nSAMEDI	        14h à 03h\r\nDIMANCHE	14h à 23h', 48.05228, 0.18318, 'Loisirs'),
(19, 'CityGlace', 'La patinoire du Mans permet au plus grand nombre de profiter des joies de la glisse ! Venez nombreux en famille ou entre amis, vous amuser, vous détendre et bouger ! La patinoire, c\'est la sortie idéale pour partager d’agréables moments.', 'Parfait pour passer un bon moment entre amis. Une bonne ambiance !', '', 'Rue Louis Harel de la Noë, 72000 Le Mans, France', 'Ouvert de 14h à 17h\r\nvoir <a href=\"https://www.cityglace.com/horaires-ouverture-patinoire-le-mans.html\">ici</a> pour plus de détails.', 48.01679, 0.15198, 'Loisirs'),
(20, 'Papéa Parc', 'Papéa Parc, anciennement Papéa City, est un parc d\'attractions français situé à Yvré-l\'Évêque dans le département de la Sarthe.', 'Ils vont faire faillite. Allez-y vite!', '', 'Lieu-Dit Neptune, 72530 Yvré-l\'Évêque', 'Basse saison - Parc : 10h30-18h / Attractions : 11h-18h\r\nHaute saison - Parc : 10h-18h30 / Attractions : 10h30-18h30', 48.01420, 0.26640, 'Chill'),
(21, 'Place des Jacobins', 'Un bon point de départ pour une balade en ville.', 'Très belle vue de la cathédrale ! ', '', 'Avenue de Paderborn, 72000 Le Mans, France', '-', 48.00813, 0.19936, 'Balade'),
(22, 'Arche de la Nature', 'Le domaine de l\'Arche de la Nature, géré par la communauté urbaine Le Mans Métropole, offre aux visiteurs un vaste espace naturel de 500 hectares.', 'Petit endroit cool pour se balader et apprendre 2-3 trucs.', '', '51 Rue de l\'Estérel, 72100 Le Mans', 'lundi	Fermé\r\nreste de la semaine	10:00–18:00', 47.99420, 0.23647, 'Balade'),
(23, 'Parc Théodore Monod', 'DescriptionLe parc Théodore Monod est un jardin public situé au nord-ouest de la ville du Mans. Il est étendu sur 2,1 hectares, avec 4 500 m² de pelouse. Il fut réalisé en 2001, et fut ouvert en avril 2002.', 'Si tu veux te poser tranquille au soleil en été.', '', '6 Rue Marceau, 72100 Le Mans', 'Ouvert de 9h à 18h45 toute la semaine', 48.01040, 0.17941, 'Chill'),
(24, 'Île aux Planches', 'L\'île aux planches est un parc urbain à plusieurs niveaux situé au Mans.', 'Pour chill et se poser l\'été au Soleil.', '', '2 Rue Ampère, 72100 Le Mans', 'Ouvert de 9h à 19h45 toute la semaine', 47.99979, 0.18865, 'Chill'),
(25, 'Les Quais', 'L\'endroit parfait pour se poser en soirée l\'été.', 'Il y a beaucoup de monde l\'été. C\'est là qu\'on sera le soir quand il fait beau.', '', 'Jardins des Tanneries, Quai Louis Blanc, 72000 Le Mans', 'ferme à minuit', 48.00853, 0.19435, 'Soirée'),
(26, 'Le Lézard', 'Bar <span class=\"barre\">de gauche</span> très sympa qui sert du très bon.', 'C\'est l\'endroit ou se retrouver le soir pour boire un verre avec les copains. Commandez une cervoise !', '', '8 rue de la barillerie 72000 Le Mans', '12:00 - 2h00', 48.00633, 0.19813, 'Soirée'),
(27, 'Guet à Pintes', 'Un bar très sympathique pour boire un verre avec les amis. ', 'On aime, on recommande !', '', '14 rue du Cornet 72100, Le Mans', '17:00 - 01:00', 48.00489, 0.19552, 'Soirée'),
(28, 'Macallan', 'Bar servant beaucoup de variété de bière. Bar dansant.', 'Bar cool pour se poser et danser.', '', '7 Rue du Port, 72100 Le Mans', '#Covid-19', 48.00301, 0.19469, 'Soirée');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
