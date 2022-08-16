-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 01-Dez-2020 às 15:07
-- Versão do servidor: 10.4.16-MariaDB
-- versão do PHP: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `engsoftware`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `cpf` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `endereco` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bairro` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `numero` int(15) DEFAULT NULL,
  `cidade` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `opcao` int(1) DEFAULT NULL,
  `profissao` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `descricao` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `formacao` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `moeda` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `preco` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `cpf`, `endereco`, `bairro`, `numero`, `cidade`, `password`, `remember_token`, `created_at`, `updated_at`, `opcao`, `profissao`, `descricao`, `formacao`, `moeda`, `preco`, `image`) VALUES
(10, 'Nadia Perereira da Silva', 'nadiaperereira@gmail.com', NULL, '819.023.718-23', 'Rua da Felicidade', 'Feliz', 761, 'Felicilândia', '$2y$10$PoFHtjRxfdAq0f25/8HXWup5BOrbkTW3UGeAGlasPd3H0eyQ5KIUq', NULL, '2020-12-01 15:22:15', '2020-12-01 15:22:15', 1, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 'Gabriela Silva', 'gabrielasilva@gmail.com', NULL, '128.793.127-98', NULL, NULL, NULL, NULL, '$2y$10$.9hlaA/aN/aUP.RwrTEYCevK22E6m.Pw38v.a2DmDkKMDnmwxTaey', NULL, '2020-12-01 15:24:09', '2020-12-01 15:24:09', 2, 'Design', 'MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM', 'Ensino Médio Completo', 'BRL', '115.00', NULL),
(12, 'Juliana Henrique', 'julianahenrique@gmail.com', NULL, '678.291.031-72', NULL, NULL, NULL, NULL, '$2y$10$eIaf5b.GNqHQWBvIXuFQJuXQRJ8mioQjXif0feF2ruCSE.JV2siPu', NULL, '2020-12-01 15:26:20', '2020-12-01 15:26:20', 2, 'Advogado', 'AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA', 'Ensino Médio Completo, Ensino Técnico em Advocacia', 'BRL', '300.00', NULL),
(13, 'Giovana Silva', 'giovanasilva@gmail.com', NULL, '123.891.293-78', NULL, NULL, NULL, NULL, '$2y$10$6XgTutjr0Z0ggrDzh7YS6O9J4dQgSl9fUsN5uVqWA.7hu8QewlGUa', NULL, '2020-12-01 15:30:27', '2020-12-01 15:30:27', 2, 'Design', 'ASDASDASDASDASDASDASDASDASDASDASDASDASD', 'Ensino Médio Completo', 'BRL', '90.00', NULL),
(14, 'Gabriela Henrique', 'gabrielahenrique@gmail.com', NULL, '178.293.812-39', NULL, NULL, NULL, NULL, '$2y$10$Q7id0xdDnjYGszh/sqNGnOC54brQ5PCz4c3aEgQebwxpnwsUfJ9z6', NULL, '2020-12-01 15:31:59', '2020-12-01 15:31:59', 2, 'Advogado', 'ASDASDASDASDAS', 'Ensino Médio Completo, Ensino Técnico em Advocacia', 'BRL', '150.00', NULL),
(15, 'Sérgio Henrique de Oliveira', 'sergiohenrique1001@gmail.com', NULL, '478.574.518-51', 'Rua Maria Guerreiro Zorzeto', 'Planalto Mirim', 116, 'Mogi Mirim', '$2y$10$.Cu.j7H.CsQhYQZixOKae.T7GHehSXh0iruQxtpx/2VP.yeHrfd5q', NULL, '2020-12-01 15:36:17', '2020-12-01 15:36:17', 1, NULL, NULL, NULL, NULL, NULL, NULL),
(16, 'Sérgio Henrique', 'sergiohenrique1002@gmail.com', NULL, '546.548.798-41', NULL, NULL, NULL, NULL, '$2y$10$mqxXqx9EBzr.pZbvMfqhwOSMqPJdKRGno7ZX2UlUgMwsw3Fr5xJRG', NULL, '2020-12-01 16:04:18', '2020-12-01 16:04:18', 2, 'Pedreiro', 'AKSDKKASKDASKDKASKDKASKDKASKDKASKDASKDKASD', 'Ensino Médio Completo', 'BRL', '150.00', NULL);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Índices para tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
