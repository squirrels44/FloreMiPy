use floremipi;

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Export de données de la table floremipi.adress : ~14 rows (environ)


INSERT INTO `adress` (`Id`, `Location`, `ZipCode`, `City`) VALUES
    (1, '2,Place de la canebière', '13000', 'Marseille'),
    (2, '4,Rue de la broussaille', '69000', 'Lyon'),
    (3, '8,Chemin de Rasteau', '75456', 'Paris'),
    (4, '10,Place de la Gondolle', '31000', 'Toulouse'),
    (5, '84,Impasse de la cheminee', '34000', 'Montpellier'),
    (6, '123,Allee du general Leclerc', '31400', 'Toulouse'),
    (7, '35,Rue des 36 ponts', '31400', 'Toulouse'),
    (8, '1,Rue louis Merlino', '13014', 'Marseille');


INSERT INTO `article` (`Id`, `Name`, `Description`, `Category`, `Imgsrc`, `QuantityInStock`) VALUES
    (1, 'Câdre en boule', 'Super cadre de Noël avec des boules de Noël.', 'Arbres', 'cadre_en_boule.jpg', 10),
    (2, 'Sapin', 'À Noël, optez pour le sapin naturel Nobilis d\'une hauteur de 100/150 cm ! Décoré selon vos envies, il trouvera sa place chez vous avec son beau feuillage gris-bleu.', 'Arbres', 'Sapin.jpg', 10),
    (3, 'Epinette bleue', 'Variété de conifère nain, de forme conique compacte, pouvant atteindre 3 m de hauteur. Feuillage bleu lumineux. De faible développement, il convient à un petit jardin ou à une culture en bac.', 'Arbres', 'Epinette_bleue.jpg', 10),
    (4, 'Chêne', 'Arbre à la cime régulière pyramidale, à la végétation dense. Feuillage persistant, vert foncé, lisse dessus, duveteux dessous. Fleurs jaunes en chatons, en mai. Glands de 2 à 3 cm réunis par 2 ou 3.', 'Arbres', 'Chene.jpg', 10),
    (5, 'Erable argenté', 'Incroyable, cet Érable d\'exception, prêt à planter, vous offrira un panache de couleur à l\'automne ! Il sera livré chez vous par camion grue sans frais supplémentaires en région parisienne.', 'Arbres', 'Erable_argente.jpg', 10),
    (6, 'Alisier torminal', 'L\'Alisier torminal est un arbre appartenant au genre des sorbiers, de la famille des Rosacées. Il est relativement rare et vit de manière dispersée dans la forêt.', 'Rosacees', 'Alisier_torminal.jpg', 10),
    (7, 'Poirier', 'Variété ancienne très productive appréciée pour ses gros fruits d\'été. Chair juteuse, bien blanche, fondante et très sucrée.', 'Fruits', 'Poirier.jpg', 10),
    (8, 'Catalpa', 'Arbre à cime globuleuse, applatie. Feuillage caduc, vert clair. Fleurs rose pâle strié de jaune avec la gorge tâcheté de violet foncé. Fruits en longues gousses pendantes, vertes.', 'Arbres', 'Catalpa.jpg', 10),
    (9, 'Pommier', 'Variété colonnaire de pommier, \'Versailles\' offre avec générosité de savoureuses pommes d\'automne, croquantes et juteuses.', 'Fruits', 'Pommier.jpg', 10),
    (10, 'Génévrier', 'Un "genévrier de Hollywood\' qui intrigue et charme par son étrange port. À découvrir !', 'Arbustes', 'Genevrier.jpg', 10),
    (11, 'Abricotier rustique', 'Cet abricotier à une floraison abondante étalée tout au long du printemps, qui permet aux fleurs d´échapper aux gelées. Les fruits sont de très bonne qualité.', 'Fruits', 'Abricotier.jpg', 10),
    (82, 'Cactus', 'Faciles à cultiver et décoratives, ces plantes, appelées cactées, cactus ou plantes grasses, vivent longtemps à la maison. La plupart d\'entre elles vous surprendront par de magnifiques floraisons.', 'Cactus', 'Cactus.jpg', 12);


INSERT INTO `articleinprogress` (`Id`, `Quantity`, `StartDate`, `ReleaseDate`, `IdArticle`) VALUES
    (1, 5, '2016-03-10', '2016-03-10', 1);


INSERT INTO `customer` (`Id`, `Name`, `FirstName`, `Phone`, `Email`, `IdAdress`, `Password`, `Login`) VALUES
    (1, 'Sansom', 'Cyrille', '(999)999-9999', 'Sansom.Luc@mail.com', 14, 'bob', 'sancy'),
    (2, 'Tremblay', 'Dollard', '(888)888-8888', 'Tremblay.Dollard@mail.com', 2, 'momo', 'tredo'),
    (3, 'Bô', 'Lin', '(777)777-7777', 'Bo.Lin@mail.com', 3, 'mimi', 'bolin'),
    (4, 'Leconte', 'Jean', '(666)666-6666', 'Leconte.Jean@mail.com', 4, 'mumu', 'leje'),
    (5, 'Alaoui', 'Hafed', '(555)555-5555', 'Alaoui.hafed@mail.com', 5, 'mama', 'alha'),
    (6, 'Leconte', 'Marie', '(666)666-6666', 'Leconte.marie@mail.com', 6, 'moumou', 'lema'),
    (7, 'Lecoq', 'Simon', '(444)444-4419', 'Lecoq.simon@mail.com', 7, 'toto', 'lesi'),
    (8, 'Tremblay', 'Dollard', '(333)333-3333', 'Tremblay.Dollard@mail.com', 8, 'tata', 'tredol');


INSERT INTO `price` (`Id`, `IdArticle`, `Value`, `Date`) VALUES
    (2, 2, 12.99, '2013-11-01'),
    (3, 3, 25.99, '2013-11-01'),
    (4, 4, 22.99, '2013-11-01'),
    (5, 5, 15.99, '2013-11-01'),
    (6, 6, 10.99, '2013-11-01'),
    (7, 7, 26.99, '2013-11-01'),
    (8, 8, 25.99, '2013-11-01'),
    (9, 9, 25.99, '2013-11-01'),
    (10, 10, 15.99, '2013-11-01'),
    (11, 11, 21.90, '2013-11-01'),
    (12, 82, 10.99, '2016-03-22'),
    (13, 1, 24.99, '2016-04-11');


INSERT INTO `version` (`id`, `version`) VALUES
    (1, 10);



DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
