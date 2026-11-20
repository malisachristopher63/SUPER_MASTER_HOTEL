CREATE TABLE `bookings` (
  `id` int(11) NOT NULL,
  `check_in` date NOT NULL,
  `check_out` date NOT NULL,
  `room_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `status` enum('pending','confirmed','canceled') NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp
) ;

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
);

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone_number` varchar(20) NOT NULL,
  `password` varchar(255) NOT NULL
);

CREATE TABLE `rooms` (
  `id` int(11) NOT NULL,
  `room_number` varchar(250) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `description` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `type` varchar(300) NOT NULL,
  `status` enum('ACTIVE','MAINTENANCE') NOT NULL DEFAULT 'ACTIVE'
) ;