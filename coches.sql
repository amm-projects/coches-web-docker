-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 14-12-2025 a las 16:28:02
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `coches`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cars`
--

CREATE TABLE `cars` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `marca` varchar(255) NOT NULL,
  `modelo` varchar(255) NOT NULL,
  `anio` int(11) NOT NULL,
  `kilometraje` int(11) DEFAULT NULL,
  `potencia` int(11) DEFAULT NULL,
  `cilindrada` int(11) DEFAULT NULL,
  `combustible` varchar(255) DEFAULT NULL,
  `transmision` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `tipo` varchar(255) DEFAULT NULL,
  `estado` varchar(255) DEFAULT NULL,
  `ubicacion` varchar(255) DEFAULT NULL,
  `descripcion` text DEFAULT NULL,
  `num_puertas` int(11) DEFAULT NULL,
  `num_asientos` int(11) DEFAULT NULL,
  `precio` decimal(10,2) NOT NULL,
  `imagen` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `propietario` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `cars`
--

INSERT INTO `cars` (`id`, `marca`, `modelo`, `anio`, `kilometraje`, `potencia`, `cilindrada`, `combustible`, `transmision`, `color`, `tipo`, `estado`, `ubicacion`, `descripcion`, `num_puertas`, `num_asientos`, `precio`, `imagen`, `created_at`, `updated_at`, `propietario`) VALUES
(1, 'Toyota', 'Corolla', 2020, 15000, 132, 1800, 'Gasolina', 'Automática', 'Blanco', 'Sedán', 'KM 0', 'Madrid', 'Toyota Corolla 2020 en excelente estado, único dueño, mantenimiento al día.', 4, 5, 18500.00, 'images/cars/D3fG7hJ1kL6pQ0rT5vN2bC8sM4wY9xAaZeUo.webp', '2025-12-14 14:25:38', '2025-12-14 14:25:38', 1),
(2, 'Ford', 'Focus', 2020, 20000, 150, 2000, 'Diésel', 'Manual', 'Azul', 'Hatchback', 'Segunda Mano', 'Barcelona', 'Ford Focus 2020, bien cuidado, ideal para ciudad y carretera.', 5, 5, 14500.50, 'images/cars/M4kH8pQ1tYvL6xW3sN9bR0jF2gC5zA7uDqEoX.webp', '2025-12-14 14:25:38', '2025-12-14 14:25:38', 2),
(3, 'Tesla', 'Model 3', 2022, 5000, 283, 0, 'Eléctrico (EV)', 'Automática', 'blanco', 'Sedán', 'Nuevo', 'Valencia', 'Tesla Model 3 2022, nuevo, con todas las características de última generación.', 4, 5, 38999.99, 'images/cars/Z8xC2vB5nM1qW4eR7tY3uI0oP6aS9dFjKhlG.webp', '2025-12-14 14:25:38', '2025-12-14 14:25:38', 3),
(4, 'BMW', 'Serie 3', 2019, 30000, 255, 2000, 'Gasolina', 'Automática', 'blanco', 'Sedán', 'KM 0', 'Sevilla', 'BMW Serie 3 2019, deportivo y elegante, perfecto para quienes buscan rendimiento y estilo.', 4, 5, 27500.00, 'images/cars/aD9Kf3VbX7zLqT1yP6mH4cJ8rN0wGvR5sQ2eFZ.webp', '2025-12-14 14:25:38', '2025-12-14 14:25:38', 4),
(5, 'Kia', 'Sportage', 2021, 10000, 181, 1600, 'Gasolina', 'Automática', 'Rojo', 'SUV', 'Segunda Mano', 'Bilbao', 'Kia Sportage 2021, espacioso y cómodo, ideal para familias y aventuras.', 5, 5, 22000.00, 'images/cars/F1rV8yZ3cN5mH2tJ6wP9kX0qL4bG7sAeDdUo.webp', '2025-12-14 14:25:38', '2025-12-14 14:25:38', 5),
(6, 'Audi', 'A4', 2018, 40000, 190, 2000, 'Gasolina', 'Automática', 'Negro', 'Sedán', 'KM 0', 'Zaragoza', 'Audi A4 2018, elegante y potente, perfecto para viajes largos.', 4, 5, 21000.00, 'images/cars/G7kL2aP9fWq8HjV4xZs1N6rTbYdQ0CmXvF3wAeK.webp', '2025-12-14 14:25:38', '2025-12-14 14:25:38', 6),
(7, 'Volkswagen', 'Golf', 2017, 50000, 115, 1600, 'Diésel', 'Manual', 'Gris', 'Hatchback', 'Segunda Mano', 'Granada', 'Volkswagen Golf 2017, económico y fiable, ideal para ciudad.', 5, 5, 13500.00, 'images/cars/yP6kH2wR9sL4vT7mJ1cF0bG3nQ8zAeXdUoEe.webp', '2025-12-14 14:25:38', '2025-12-14 14:25:38', 7),
(8, 'Mercedes-Benz', 'Clase C', 2021, 8000, 204, 2000, 'Gasolina', 'Automática', 'Plateado', 'Sedán', 'Nuevo', 'Valencia', 'Mercedes-Benz Clase C 2021, lujo y tecnología de última generación.', 4, 5, 42000.00, 'images/cars/X6hN2pT7wL9vR1fC5kY4sQ8mB0jG3zAaUdEe.webp', '2025-12-14 14:25:38', '2025-12-14 14:25:38', 8),
(9, 'Renault', 'Clio', 2016, 60000, 90, 1200, 'Gasolina', 'Manual', 'Amarillo', 'Hatchback', 'KM 0', 'Alicante', 'Renault Clio 2016, compacto y práctico, perfecto para jóvenes.', 5, 5, 8900.00, 'images/cars/L5kJ9vN2pQ4xH7sT1fG6bR0cM3wY8zAeDdUo.webp', '2025-12-14 14:25:38', '2025-12-14 14:25:38', 9),
(10, 'Peugeot', '3008', 2019, 25000, 130, 1500, 'Diésel', 'Automática', 'Verde', 'SUV', 'Segunda Mano', 'Santander', 'Peugeot 3008 2019, SUV moderno y espacioso, ideal para familias.', 5, 5, 23500.00, 'images/cars/qW3rE7tY1uI9oP2aS4dF6gH8jK0lZ5xCvBnM.webp', '2025-12-14 14:25:38', '2025-12-14 14:25:38', 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(111, '0001_01_01_000000_create_users_table', 1),
(112, '0001_01_01_000001_create_cache_table', 1),
(113, '0001_01_01_000002_create_jobs_table', 1),
(114, '2025_07_18_203514_create_cars_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('dzUxmJiBpCiCfF0lYjWnLwKUOfHnm9WXkCwQzVI2', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTlVnUDBzZWJBUEhRZ2NpempqM05IQ3ZkZElSMk9wdTRGQ0xxUFpJdCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTk5NToiaHR0cDovL2xvY2FsaG9zdDo4MDAwL2NhcnM/QWJhcnRoPSZBY2NpZGVudGFkbz0mQWN1cmE9JkFsZmElMjBSb21lbz0mQXN0b24lMjBNYXJ0aW49JkF1ZGk9JkF2ZXJpYWRvJTIwJTJGJTIwTm8lMjBvcGVyYXRpdm89JkJNVz0mQllEPSZCZW50bGV5PSZCdWdhdHRpPSZCdWljaz0mQ1VQUkE9JkNhZGlsbGFjPSZDYW1wZXI9JkNlcnRpZmljYWRvJTIwJTI4Q1BPJTIwLSUyMENlcnRpZmllZCUyMFByZS1Pd25lZCUyOT0mQ2hhbmdhbj0mQ2hldnJvbGV0PSZDaHJ5c2xlcj0mQ2l0cm8lQzMlQUJuPSZDbCVDMyVBMXNpY289JkNvY2hlJTIwZGUlMjBsdWpvPSZDb2NoZSUyMGVjb24lQzMlQjNtaWNvPSZDb21lcmNpYWwlMjBsaWdlcm89JkNvbnZlcnRpYmxlJTIwJTJGJTIwQ2FicmlvPSZDb3VwJUMzJUE5PSZDcm9zc292ZXI9JkRTJTIwQXV0b21vYmlsZXM9JkRhY2lhPSZEYWloYXRzdT0mRGUlMjBjb2xlY2NpJUMzJUIzbj0mRGUlMjBkZW1vc3RyYWNpJUMzJUIzbiUyMCUyOERlbW8lMjk9JkRlcG9ydGl2bz0mRGklQzMlQTlzZWw9JkRvZGdlPSZFbCVDMyVBOWN0cmljbyUyMCUyOEVWJTI5PUVsJUMzJUE5Y3RyaWNvJTIwJTI4RVYlMjkmRmFtaWxpYXIlMjAlMkYlMjBTdGF0aW9uJTIwV2Fnb249JkZlcnJhcmk9JkZpYXQ9JkZvcmQ9JkdMUD0mR01DPSZHTkM9Jkdhc29saW5hPSZHZWVseT0mR2VuZXNpcz0mR3JlYXQlMjBXYWxsPSZIYXRjaGJhY2s9JkhhdmFsPSZIaWRyJUMzJUIzZ2VubyUyMCUyOEZDRVYlMjk9Jkhpc3Bhbm8lMjBTdWl6YT0mSG9uZGE9JkhvbmdxaT0mSHl1bmRhaT0mSCVDMyVBRGJyaWRvPSZIJUMzJUFEYnJpZG8lMjBlbmNodWZhYmxlJTIwJTI4UEhFViUyOT0mSW1wb3J0YWRvPSZJbmZpbml0aT0mSmFndWFyPSZKZWVwPSZLTSUyMDA9JktpYT0mS29lbmlnc2VnZz0mTGFtYm9yZ2hpbmk9JkxhbmNpYT0mTGFuZCUyMFJvdmVyPSZMZXh1cz0mTGluY29sbj0mTG90dXM9Jkx5bmslMjAlMjYlMjBDbz0mTUc9Jk1haGluZHJhPSZNYXJ1dGklMjBTdXp1a2k9Jk1hc2VyYXRpPSZNYXliYWNoPSZNYXpkYT0mTWNMYXJlbj0mTWVyY2VkZXMtQmVuej0mTWljcm9jb2NoZT0mTWluaT0mTWl0c3ViaXNoaT0mTW9ub3ZvbHVtZW4lMjAlMkYlMjBNUFY9Jk5pbz0mTmlzc2FuPSZOdWV2bz0mT3BlbD0mUGFnYW5pPSZQYXJhJTIwZGVzcGllY2U9JlBlcm9kdWE9JlBldWdlb3Q9JlBpY2stdXA9JlBvbGVzdGFyPSZQb3JzY2hlPSZQcm90b249JlJhbT0mUmVhY29uZGljaW9uYWRvJTIwJTJGJTIwUmVzdGF1cmFkbz0mUmVuYXVsdD0mUmltYWM9JlJvYWRzdGVyPSZSb2xscy1Sb3ljZT0mU0VBVD0mU1VWPSZTYWFiPSZTYWx2YW1lbnRvJTIwJTJGJTIwU2luaWVzdHJhZG8lMjAlMjhTYWx2YWdlJTI5PSZTZWQlQzMlQTFuPSZTZWdtZW50byUyMEElMjAlMjh1cmJhbm9zJTI5PSZTZWdtZW50byUyMEIlMjAlMjh1dGlsaXRhcmlvcyUyOT0mU2VnbWVudG8lMjBDJTIwJTI4Y29tcGFjdG9zJTI5PSZTZWdtZW50byUyMEQlMjAlMjhiZXJsaW5hcyUyMG1lZGlhbmFzJTI5PSZTZWdtZW50byUyMEUlMjAlMjhiZXJsaW5hcyUyMGdyYW5kZXMlMjk9JlNlZ21lbnRvJTIwRiUyMCUyOGx1am8lMjk9JlNlZ21lbnRvJTIwSiUyMCUyOFNVViUyOT0mU2VndW5kYSUyMG1hbm89JlNlbWludWV2bz0mU2tvZGE9JlNtYXJ0PSZTdWJhcnU9JlN1cGVyZGVwb3J0aXZvPSZTdXp1a2k9JlRhdGE9JlRlc2xhPSZUb2RvdGVycmVubyUyMDR4ND0mVG9nZz0mVG95b3RhPSZWYW49JlZlaCVDMyVBRGN1bG8lMjBkZSUyMGVtcHJlc2ElMjAlMkYlMjBmbG90YT0mVmVoJUMzJUFEY3VsbyUyMGRlJTIwbGVhc2luZz0mVmVoJUMzJUFEY3VsbyUyMGRlJTIwcmVudGluZz0mVmVoJUMzJUFEY3VsbyUyMGVtYmFyZ2FkbyUyMCUyRiUyMHN1YmFzdGE9JlZlaCVDMyVBRGN1bG8lMjBleC1yZW50YWwlMjAlMjhkZSUyMGFscXVpbGVyJTI5PSZWaW5GYXN0PSZWb2xrc3dhZ2VuPSZWb2x2bz0mWHBlbmc9JlplZWtyPSZwcmVjaW9fbWF4PTEwMDAwMDAmcHJlY2lvX21pbj0wIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1765726047);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `saldo` decimal(10,2) NOT NULL DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `saldo`) VALUES
(1, 'Mr. Sherwood Schuster', 'keaton.dickinson@example.com', '2025-12-14 14:25:37', '$2y$12$UNlTBpc2KCf3POaBHBpKtON0IlxmsgxUEusUnQ.1U3LOnklHIneI6', 'EsqJYAOfkl', '2025-12-14 14:25:38', '2025-12-14 14:25:38', 28804.01),
(2, 'Kiara Cartwright', 'bwisoky@example.com', '2025-12-14 14:25:38', '$2y$12$UNlTBpc2KCf3POaBHBpKtON0IlxmsgxUEusUnQ.1U3LOnklHIneI6', 'KUokHKFetI', '2025-12-14 14:25:38', '2025-12-14 14:25:38', 68005.31),
(3, 'Silas Pfeffer', 'dale62@example.net', '2025-12-14 14:25:38', '$2y$12$UNlTBpc2KCf3POaBHBpKtON0IlxmsgxUEusUnQ.1U3LOnklHIneI6', 'sUAkeAi3kg', '2025-12-14 14:25:38', '2025-12-14 14:25:38', 17159.59),
(4, 'Colt Hodkiewicz', 'renee30@example.com', '2025-12-14 14:25:38', '$2y$12$UNlTBpc2KCf3POaBHBpKtON0IlxmsgxUEusUnQ.1U3LOnklHIneI6', 'FX7pBP8r1u', '2025-12-14 14:25:38', '2025-12-14 14:25:38', 78605.89),
(5, 'Miss Earline Stark PhD', 'beverly.wilkinson@example.net', '2025-12-14 14:25:38', '$2y$12$UNlTBpc2KCf3POaBHBpKtON0IlxmsgxUEusUnQ.1U3LOnklHIneI6', 'LIzMTPJaTo', '2025-12-14 14:25:38', '2025-12-14 14:25:38', 7366.06),
(6, 'Ms. Fatima Tremblay', 'matilda.jaskolski@example.org', '2025-12-14 14:25:38', '$2y$12$UNlTBpc2KCf3POaBHBpKtON0IlxmsgxUEusUnQ.1U3LOnklHIneI6', 'qo7qT1YtHI', '2025-12-14 14:25:38', '2025-12-14 14:25:38', 70698.48),
(7, 'Mr. Jonatan Altenwerth Sr.', 'meta62@example.net', '2025-12-14 14:25:38', '$2y$12$UNlTBpc2KCf3POaBHBpKtON0IlxmsgxUEusUnQ.1U3LOnklHIneI6', 'FuLpXQDeVb', '2025-12-14 14:25:38', '2025-12-14 14:25:38', 81770.03),
(8, 'Emma Gleichner', 'stamm.hugh@example.org', '2025-12-14 14:25:38', '$2y$12$UNlTBpc2KCf3POaBHBpKtON0IlxmsgxUEusUnQ.1U3LOnklHIneI6', 'gAetaNv485', '2025-12-14 14:25:38', '2025-12-14 14:25:38', 90630.23),
(9, 'Elton Cole', 'deon50@example.net', '2025-12-14 14:25:38', '$2y$12$UNlTBpc2KCf3POaBHBpKtON0IlxmsgxUEusUnQ.1U3LOnklHIneI6', 'HZpj3ejVS6', '2025-12-14 14:25:38', '2025-12-14 14:25:38', 5416.78),
(10, 'Justine McClure', 'alvah.simonis@example.org', '2025-12-14 14:25:38', '$2y$12$UNlTBpc2KCf3POaBHBpKtON0IlxmsgxUEusUnQ.1U3LOnklHIneI6', 'mLYMk4zOc1', '2025-12-14 14:25:38', '2025-12-14 14:25:38', 22893.55);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indices de la tabla `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indices de la tabla `cars`
--
ALTER TABLE `cars`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cars_propietario_foreign` (`propietario`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indices de la tabla `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indices de la tabla `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cars`
--
ALTER TABLE `cars`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `cars`
--
ALTER TABLE `cars`
  ADD CONSTRAINT `cars_propietario_foreign` FOREIGN KEY (`propietario`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
