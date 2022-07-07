
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";



-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `sno` int(3) NOT NULL,
  `sender` text NOT NULL,
  `receiver` text NOT NULL,
  `balance` int(8) NOT NULL,
  `datetime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(3) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(30) NOT NULL,
  `balance` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `balance`) VALUES
(1, 'Ahmed Abo Sayed', 'Ahmed@gmail.com', 5000),
(2, 'Yousef Hassan', 'Yousef62@gmail.com', 3500),
(3, 'Shreef Rashed', 'Shreef.sh@gmail.com', 400),
(4, 'Amr Mohamed', 'Amr.a55@gmail.com', 5000),
(5, 'Shahd Ashraf', 'Shahd@gmail.com', 4200),
(6, 'Kareem Hassan', 'kareem@gmail.com', 1200),
(7, 'Karas Magdy', 'Karas@gmail.com', 5300),
(8, 'Mena Essa', 'Mena.essa@gmail.com', 1000),
(9, 'Osama Mohamed', 'Osama@gmail.com', 3200),
(10, 'Samer Soliman', 'Samer@gmail.com', 5020);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `sno` int(3) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT;
COMMIT;


