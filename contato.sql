-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Tempo de geração: 02/12/2024 às 16:22
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `contato`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `contatos`
--

CREATE TABLE `contatos` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mensagem` text NOT NULL,
  `data_envio` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `contatos`
--

INSERT INTO `contatos` (`id`, `nome`, `email`, `mensagem`, `data_envio`) VALUES
(3, 'João Silva', 'joao.silva@email.com', 'Mensagem de teste 1', '2024-12-02 15:22:07'),
(4, 'Maria Oliveira', 'maria.oliveira@email.com', 'Mensagem de teste 2', '2024-12-02 15:22:07'),
(5, 'Pedro Santos', 'pedro.santos@email.com', 'Mensagem de teste 3', '2024-12-02 15:22:07'),
(6, 'Ana Souza', 'ana.souza@email.com', 'Mensagem de teste 4', '2024-12-02 15:22:07'),
(7, 'Carlos Pereira', 'carlos.pereira@email.com', 'Mensagem de teste 5', '2024-12-02 15:22:07'),
(8, 'Fernanda Lima', 'fernanda.lima@email.com', 'Mensagem de teste 6', '2024-12-02 15:22:07'),
(9, 'Roberto Almeida', 'roberto.almeida@email.com', 'Mensagem de teste 7', '2024-12-02 15:22:07'),
(10, 'Juliana Costa', 'juliana.costa@email.com', 'Mensagem de teste 8', '2024-12-02 15:22:07'),
(11, 'Ricardo Martins', 'ricardo.martins@email.com', 'Mensagem de teste 9', '2024-12-02 15:22:07'),
(12, 'Patricia Silva', 'patricia.silva@email.com', 'Mensagem de teste 10', '2024-12-02 15:22:07'),
(13, 'Eduardo Gomes', 'eduardo.gomes@email.com', 'Mensagem de teste 11', '2024-12-02 15:22:07'),
(14, 'Luana Rocha', 'luana.rocha@email.com', 'Mensagem de teste 12', '2024-12-02 15:22:07'),
(15, 'Tiago Souza', 'tiago.souza@email.com', 'Mensagem de teste 13', '2024-12-02 15:22:07'),
(16, 'Roberta Freitas', 'roberta.freitas@email.com', 'Mensagem de teste 14', '2024-12-02 15:22:07'),
(17, 'Marcos Oliveira', 'marcos.oliveira@email.com', 'Mensagem de teste 15', '2024-12-02 15:22:07'),
(18, 'Beatriz Martins', 'beatriz.martins@email.com', 'Mensagem de teste 16', '2024-12-02 15:22:07'),
(19, 'Vinícius Pereira', 'vinicius.pereira@email.com', 'Mensagem de teste 17', '2024-12-02 15:22:07'),
(20, 'Juliana Mendes', 'juliana.mendes@email.com', 'Mensagem de teste 18', '2024-12-02 15:22:07'),
(21, 'Felipe Costa', 'felipe.costa@email.com', 'Mensagem de teste 19', '2024-12-02 15:22:07'),
(22, 'Cláudia Rocha', 'claudia.rocha@email.com', 'Mensagem de teste 20', '2024-12-02 15:22:07');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `contatos`
--
ALTER TABLE `contatos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `contatos`
--
ALTER TABLE `contatos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
