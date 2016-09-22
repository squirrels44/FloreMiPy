USE floremipi;

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Export de données de la table floremipi.adress : ~14 rows (environ)
DELETE FROM `adress`;
-- Export de données de la table floremipi.article : ~12 rows (environ)
DELETE FROM `article`;
-- Export de données de la table floremipi.articleinprogress : ~0 rows (environ)
DELETE FROM `articleinprogress`;
-- Export de données de la table floremipi.customer : ~11 rows (environ)
DELETE FROM `customer`;
-- Export de données de la table floremipi.price : ~16 rows (environ)
DELETE FROM `price`;
-- Export de données de la table floremipi.version : ~0 rows (environ)
DELETE FROM `version`;

-- Export de la structure de déclencheur floremipi. Trg_deleteArticle
DROP TRIGGER IF EXISTS `Trg_deleteArticle`;

SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `Trg_deleteArticle` BEFORE DELETE ON `article` FOR EACH ROW BEGIN

DELETE from articleinprogress where articleinprogress.IdArticle = OLD.Id;
DELETE from price where price.IdArticle = OLD.Id;

END//

-- Export de la structure de table floremipi. adress
DROP TABLE IF EXISTS `adress`;
-- Export de la structure de table floremipi. article
DROP TABLE IF EXISTS `article`;
-- Export de la structure de table floremipi. articleinprogress
DROP TABLE IF EXISTS `articleinprogress`;
-- Export de la structure de table floremipi. customer
DROP TABLE IF EXISTS `customer`;
-- Export de la structure de table floremipi. price
DROP TABLE IF EXISTS `price`;
-- Export de la structure de table floremipi. version
DROP TABLE IF EXISTS `version`;




DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

-- Export de la structure de la base pour floremipi
DROP DATABASE IF EXISTS `floremipi`;