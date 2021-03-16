create database if not exists `Alugueis_Apto_BH`;
use `Alugueis_Apto_BH`;
-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: alugueis_apto_bh
-- ------------------------------------------------------
-- Server version	8.0.21

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
-- Table structure for table `apartamentos`
--

DROP TABLE IF EXISTS `apartamentos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `apartamentos` (
  `COD` int NOT NULL AUTO_INCREMENT,
  `Valor` decimal(5,3) NOT NULL,
  `IPTU` varchar(10) NOT NULL DEFAULT 'incluso',
  `Condominio` int unsigned NOT NULL,
  `Tamanho` varchar(10) NOT NULL,
  `Quartos` varchar(10) NOT NULL,
  `banheiros` int unsigned NOT NULL,
  `Pet` varchar(20) DEFAULT 'Aceita Pet',
  `Vagas` varchar(10) DEFAULT '1 vaga',
  `CEP` varchar(9) NOT NULL,
  `Rua` varchar(30) NOT NULL,
  `Bairro` varchar(30) NOT NULL,
  `descricao` text,
  `Locado` enum('S','N') DEFAULT 'N',
  PRIMARY KEY (`COD`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `apartamentos`
--

LOCK TABLES `apartamentos` WRITE;
/*!40000 ALTER TABLE `apartamentos` DISABLE KEYS */;
INSERT INTO `apartamentos` VALUES (1,1.000,'incluso',67,'35m²','1',1,'Aceita Pet','1 vaga','30410-140','Rua Cuiabá','Prado','Amplo apartamento, claro e arejado, no melhor ponto do Prado!','N'),(2,3.017,'83',400,'70m²','2',3,'Não aceita Pet','2 vagas','30431-128','Rua General Andrade Neves','Grajaú','Aconchegante apartamento para alugar com 2 quartos, sendo 2 suítes, e 3 banheiros no total. Este apartamento fica situado no 2º andar. O condomínio fica localizado em Rua General Andrade Neves no bairro Grajaú em Belo Horizonte. É bem localizado, próximo a pontos de interesse de Grajaú, tais como Faculdade Cotemig, \nFaculdade São Camilo (FASC), Hospital Santana, Hospital SOS, Centro Universitário Newton Paiva e Hospital da Criança.','S'),(3,1.594,'94',385,'55m²','2',1,'Aceita Pet','Sem vaga','30190-000','Avenida Augusto de Lima','Centro','Apartamento aconchegante em localização muito privilegiada no centro da cidade. com \njanelas grandes, chão de taco e quartos espaçosos.','N'),(4,1.609,'65',429,'67m²','2',1,'Aceita Pet','1 vaga','30190-110','Rua Araguari','Barro Preto','Aconchegante apartamento para alugar com 2 quartos e 1 banheiro no total. Este apartamento fica situado no 4º andar. O condomínio fica localizado em Rua Araguari no bairro Barro Preto em Belo Horizonte. É bem localizado, próximo a pontos de interesse de Barro Preto, tais como Mercado Central de Belo Horizonte, Hospital Universitário São José, Teatro Topázio, \nTeatro Santo Agostinho, Faculdade de Tecnologia Senai Belo Horizonte e Estação Estaçao Lagoinha..','N'),(5,1.698,'29',250,'53m²','2',1,'Aceita Pet','1 vaga','31035-590','Rua Coronel Praes','Sagrada Família','Estacionamento rotativo. Apartamento aconchegante com boa iluminação natural por ter vista livre. Todo mobiliado.','S'),(6,1.934,'95',420,'100m²','3',2,'Aceita Pet','1 vaga','30431-111','Rua Cianita','Grajaú','Aconchegante apartamento para alugar com 3 quartos, sendo 1 suíte, e 2 banheiros no total. Este apartamento fica situado no 1º andar. O condomínio fica localizado em Rua Cianita no bairro Grajaú em Belo Horizonte. É bem localizado, próximo a pontos de interesse de Grajaú, tais como Faculdade Cotemig, Hospital Santana, Hospital SOS, \nCentro Universitário Newton Paiva, Faculdade São Camilo (FASC) e Hospital da Criança.','S'),(7,2.492,'16',500,'100m²','3',2,'Não aceita Pet','1 vaga','30310-510','Rua Caratinga','Anchieta','Aconchegante apartamento para alugar com 3 quartos, sendo 1 suíte, e 2 banheiros no total. Este apartamento fica situado no 1º andar. O condomínio fica localizado em Rua Cianita no bairro Grajaú em Belo Horizonte. É bem localizado, próximo a pontos de interesse de Grajaú, tais como Faculdade Cotemig, Hospital Santana, Hospital SOS, \nCentro Universitário Newton Paiva, Faculdade São Camilo (FASC) e Hospital da Criança.','S'),(8,2.787,'85',450,'108m²','3',2,'Aceita Pet','1 vaga','30431-018','Rua Canaã','Barroca','Apartamento antigo em excelente estado, agradável e reformado. Janelas grandes em alumínio com todas as partes móveis. Cômodos espaçosos, armários embutidos e piso em taco. Boa localização com saídas fáceis para Avenidas Amazonas, Raja Gabaglia, Silva Lobo, Barão Homem de Melo e Contorno. Local tranquilo, arborizado e com todo tipo de comércio como farmácias, restaurantes, padaria, supermercado, açougue ou sacolão, tudo a pé. \nCozinha americana e área de serviço em granito e fórmica.','N'),(9,2.063,'89',200,'85m²','2',3,'Aceita Pet','2 Vagas','30421-480','Rua Lindolfo de Azevedo','Jardim América','Amplo apartamento para alugar com 2 quartos, sendo 1 suíte, e 2 banheiros no total. Este apartamento fica situado no 2º andar. O condomínio fica localizado em Rua Gonçalo Laço no bairro Nova Esperança em Belo Horizonte. É bem localizado, próximo a pontos de interesse de Nova Esperança, tais como Faculdade Cimo (FAC), \nParque Ecológico do Bairro Caiçara, Shopping Del Rey e Faculdade Minas Gerais (FAMIG).','N'),(10,1.807,'107',108,'100m²','2',2,'Aceita Pet','2 Vagas','31230-350','Rua Gonçalo Laço','Nova Esperança','Amplo apartamento para alugar com 2 quartos, sendo 1 suíte, e 2 banheiros no total. Este apartamento fica situado no 2º andar. O condomínio fica localizado em Rua Gonçalo Laço no bairro Nova Esperança em Belo Horizonte. É bem localizado, próximo a pontos de interesse de Nova Esperança, tais como Faculdade Cimo (FAC), Parque Ecológico do Bairro Caiçara, Shopping Del Rey e Faculdade Minas Gerais (FAMIG).\n\n','N');
/*!40000 ALTER TABLE `apartamentos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'alugueis_apto_bh'
--

--
-- Dumping routines for database 'alugueis_apto_bh'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-15 22:45:20
