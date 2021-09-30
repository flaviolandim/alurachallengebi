-- MySQL dump 10.13  Distrib 8.0.25, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: financeiro
-- ------------------------------------------------------
-- Server version	5.6.35

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `produtos`
--

DROP TABLE IF EXISTS `produtos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produtos` (
  `id_produto` bigint(20) NOT NULL DEFAULT '0',
  `categoria_produto` varchar(100) DEFAULT NULL,
  `preco` decimal(10,2) DEFAULT NULL,
  `custos` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id_produto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produtos`
--

LOCK TABLES `produtos` WRITE;
/*!40000 ALTER TABLE `produtos` DISABLE KEYS */;
INSERT INTO `produtos` VALUES (1,'agro_industria_e_comercio',15500.00,4650.00),(2,'alimentos',5800.00,1740.00),(3,'alimentos_e_bebidas',11900.00,3570.00),(4,'artes',8400.00,2520.00),(5,'artes_e_artesanato',9900.00,2970.00),(6,'artigos_de_festas',19800.00,5940.00),(7,'artigos_de_natal',10600.00,3180.00),(8,'audio',8200.00,2460.00),(9,'automotivo',10100.00,3030.00),(10,'bebes',15900.00,4770.00),(11,'bebidas',13100.00,3930.00),(12,'beleza_e_saude',8600.00,2580.00),(13,'brinquedos',13600.00,4080.00),(14,'cama_mesa_e_banho',17100.00,5130.00),(15,'casa_e_conforto',10800.00,3240.00),(16,'casa_e_construcao',17900.00,5370.00),(17,'cds_dvds_e_musicais',8400.00,2520.00),(18,'cine_e_foto',17700.00,5310.00),(19,'climatizacao',5200.00,1560.00),(20,'consoles_e_games',16800.00,5040.00),(21,'ferramentas_de_construcao',9500.00,2850.00),(22,'ferramentas',17200.00,5160.00),(23,'ferramentas_de_iluminacao',11700.00,3510.00),(24,'ferramentas_de_jardim',15500.00,4650.00),(25,'ferramentas_de_seguranca',8300.00,2490.00),(26,'dvds_blu_ray',8800.00,2640.00),(27,'eletrodomesticos',10000.00,3000.00),(28,'eletronicos',5700.00,1710.00),(29,'eletroportateis',9300.00,2790.00),(30,'esporte_e_lazer',18700.00,5610.00),(31,'fashion_bolsas_e_acessorios',19700.00,5910.00),(32,'fashion_calcados',17300.00,5190.00),(33,'fashion_esporte',17600.00,5280.00),(34,'fashion_roupa_feminina',19200.00,5760.00),(35,'fashion_roupa_infanto_e_juvenil',17800.00,5340.00),(36,'fashion_roupa_masculina',6600.00,1980.00),(37,'fashion_underwear_e_moda_praia',6900.00,2070.00),(38,'ferramentas_de_jardim',6500.00,1950.00),(39,'flores',13000.00,3900.00),(40,'fraldas_e_higiene',12000.00,3600.00),(41,'industria_comercio_e_negocios',16200.00,4860.00),(42,'informatica_acessorios',19000.00,5700.00),(43,'instrumentos_musicais',10500.00,3150.00),(44,'la_cuisine',9700.00,2910.00),(45,'livros_importados',5900.00,1770.00),(46,'livros_tecnicos',5500.00,1650.00),(47,'malas_acessorios',18600.00,5580.00),(48,'market_place',10500.00,3150.00),(49,'colchao_e_estofado',17900.00,5370.00),(50,'moveis_cozinha_area_de_servico_jantar_e_jardim',6900.00,2070.00),(51,'moveis_ de_decoracao',13600.00,4080.00),(52,'moveis_de_escritorio',11500.00,3450.00),(53,'moveis_do_quarto',5400.00,1620.00),(54,'moveis_da_sala',12900.00,3870.00),(55,'musica',8800.00,2640.00),(56,'papelaria',12100.00,3630.00),(57,'pcs',17600.00,5280.00),(58,'perfumaria',6300.00,1890.00),(59,'pet_shop',8000.00,2400.00),(60,'portateis_da_casa_forno_e_cafe',16800.00,5040.00),(61,'portateis_da_cozinha_e_preparadores_de_alimentos',7400.00,2220.00),(62,'relogios_e_presentes',5300.00,1590.00),(63,'seguros_e_servicos',12600.00,3780.00),(64,'sinalizacao_e_seguranca',13700.00,4110.00),(65,'tablets_impressao_e_imagem',17400.00,5220.00),(66,'telefonia',16300.00,4890.00),(67,'telefonia_fixa',19100.00,5730.00),(68,'utilidades_domesticas',16100.00,4830.00);
/*!40000 ALTER TABLE `produtos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-08-18  9:30:30
