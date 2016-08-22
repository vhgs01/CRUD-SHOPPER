-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 22-Ago-2016 às 01:57
-- Versão do servidor: 10.1.13-MariaDB
-- PHP Version: 5.6.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shopperdb`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `cartao_cliente`
--

CREATE TABLE `cartao_cliente` (
  `idCartao` smallint(5) NOT NULL,
  `numeroCartao` int(19) NOT NULL,
  `cvv` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `cliente`
--

CREATE TABLE `cliente` (
  `idCliente` smallint(5) NOT NULL,
  `idEndereco` smallint(5) NOT NULL,
  `idCartao` smallint(5) NOT NULL,
  `nome` varchar(150) NOT NULL,
  `telefone` int(11) NOT NULL,
  `email` varchar(75) NOT NULL,
  `dataNascimento` date NOT NULL,
  `empresa` varchar(75) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `endereco`
--

CREATE TABLE `endereco` (
  `idEndereco` smallint(5) NOT NULL,
  `endereco` varchar(150) NOT NULL,
  `cidade` varchar(50) NOT NULL,
  `cep` int(8) NOT NULL,
  `pais` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cartao_cliente`
--
ALTER TABLE `cartao_cliente`
  ADD PRIMARY KEY (`idCartao`),
  ADD UNIQUE KEY `numeroCartao` (`numeroCartao`),
  ADD UNIQUE KEY `cvv` (`cvv`);

--
-- Indexes for table `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`idCliente`),
  ADD KEY `FK_Endereco` (`idEndereco`),
  ADD KEY `FK_Cartao_Cliente` (`idCartao`);

--
-- Indexes for table `endereco`
--
ALTER TABLE `endereco`
  ADD PRIMARY KEY (`idEndereco`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cartao_cliente`
--
ALTER TABLE `cartao_cliente`
  MODIFY `idCartao` smallint(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cliente`
--
ALTER TABLE `cliente`
  MODIFY `idCliente` smallint(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `endereco`
--
ALTER TABLE `endereco`
  MODIFY `idEndereco` smallint(5) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `cliente`
--
ALTER TABLE `cliente`
  ADD CONSTRAINT `FK_Cartao_Cliente` FOREIGN KEY (`idCartao`) REFERENCES `cartao_cliente` (`idCartao`),
  ADD CONSTRAINT `FK_Endereco` FOREIGN KEY (`idEndereco`) REFERENCES `endereco` (`idEndereco`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
