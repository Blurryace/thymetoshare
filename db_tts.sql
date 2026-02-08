-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 08, 2026 at 11:18 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_tts`
--

-- --------------------------------------------------------

--
-- Table structure for table `favorites`
--

CREATE TABLE `favorites` (
  `user_id` int(11) NOT NULL,
  `recipe_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `favorites`
--

INSERT INTO `favorites` (`user_id`, `recipe_id`) VALUES
(1, 10),
(1, 11);

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `profile_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT 'default_avatar.png'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `profiles`
--

INSERT INTO `profiles` (`profile_id`, `user_id`, `image`) VALUES
(1, 1, 'uploads/1770545388_1770473576_anarabang.png'),
(2, 2, 'default_avatar.png'),
(3, 3, 'uploads/1770484523_550631431_24669421346059187_4036488562644018203_n.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `recipes`
--

CREATE TABLE `recipes` (
  `recipe_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `featured_image` varchar(255) DEFAULT NULL,
  `excerpt` varchar(255) DEFAULT NULL,
  `about` text DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL,
  `prep_time` int(11) DEFAULT NULL,
  `cooking_time` int(11) DEFAULT NULL,
  `servings` int(11) DEFAULT NULL,
  `ingredients` text DEFAULT NULL,
  `instructions` text DEFAULT NULL,
  `date_posted` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `recipes`
--

INSERT INTO `recipes` (`recipe_id`, `user_id`, `title`, `featured_image`, `excerpt`, `about`, `category`, `prep_time`, `cooking_time`, `servings`, `ingredients`, `instructions`, `date_posted`, `status`) VALUES
(10, 1, 'Chicken Adobo', 'uploads/chickenadobo.jpg', 'The unofficial national dish of the Philippines. Chicken is simmered in a tangy and savory blend of soy sauce, vinegar, and garlic until tender.', 'Filipino Chicken Adobo is hands down one of the most iconic dishes in the Philippines — and for good reason. It’s savory, slightly tangy, garlicky, and full of bold flavors that go perfectly with a mountain of warm white rice. Whether you grew up eating it or you’re just discovering Filipino cuisine, this comforting classic is sure to win your heart (and your taste buds). This is the Easiest way to cook Filipino Chicken Adobo Recipe.', 'Any', 10, 40, 4, '1 kg chicken pieces (bone-in)\r\n1/2 cup soy sauce\r\n1/2 cup white vinegar\r\n1 head garlic, crushed\r\n1 tsp whole peppercorns\r\n3 dried bay leaves\r\n1 tbsp oil\r\n1 tsp sugar (optional)', '1. Combine chicken, soy sauce, and garlic in a bowl. Marinate for at least 30 minutes.\r\n2. Heat oil in a pot. Pan-fry chicken pieces until browned (optional but recommended).\r\n3. Pour in the remaining marinade, vinegar, peppercorns, and bay leaves.\r\n4. Bring to a boil without stirring.\r\n5. Lower heat, cover, and simmer for 30 minutes or until meat is tender.\r\n6. Serve hot with white rice.\r\n', '2026-02-07 16:08:29', 1),
(11, 1, 'Pork Sinigang (Sinigang na Baboy)', 'uploads/sinigangnababoy.jpg', 'A classic sour soup made with pork belly and tamarind, loaded with crisp vegetables.', 'The story of Pork Sinigang (Sinigang na Baboy) is deeply rooted in Filipino culture and history. It is a dish that has evolved over generations, with families adding their own twists by incorporating different vegetables and souring agents.', 'Any', 15, 50, 5, '500g pork belly, cubed\r\n1 pack tamarind soup mix (sinigang mix)\r\n1 onion, quartered\r\n2 tomatoes, quartered\r\n1 radish, sliced\r\n1 eggplant, sliced\r\n1 bunch kangkong (water spinach)\r\n2 green chili peppers (siling haba)\r\nFish sauce (patis) to taste', '1. Boil water in a pot. Add onions and tomatoes.\r\n2. Add pork and simmer for 30–40 minutes until tender.\r\n3. Add the tamarind mix and stir.\r\n4. Add radish and eggplant. Cook for 3 minutes.\r\n5. Add kangkong and green chilies. Turn off heat and keep covered for 2 minutes.\r\n6. Season with fish sauce and serve.\r\n', '2026-02-07 16:13:56', 1),
(20, 3, 'Bistek Tagalog (Beef Steak)', 'uploads/beefsteak.webp', 'Thin slices of beef marinated in citrus and soy sauce, topped with onion rings.', 'Bistek Tagalog, or Filipino Beef Steak, is a beloved comfort food that embodies the Philippines\' rich history of cultural fusion, blending Spanish, Chinese, and local influences. The dish is a testament to Filipino resourcefulness, transforming simple, often tougher cuts of beef into a tender, savory, and tangy meal. ', 'Any', 30, 20, 4, '500g beef sirloin, thinly sliced\r\n1/4 cup soy sauce\r\n4 pieces calamansi (juice extracted) or 1 lemon\r\n2 large onions, sliced into rings\r\nGarlic, minced\r\nPepper\r\nOil', '1. Marinate beef in soy sauce, calamansi juice, garlic, and pepper for 30 minutes.\r\n2. Pan-fry beef slices in oil until browned. Remove and set aside.\r\n3. In the same pan, sauté half of the onions until soft.\r\n4. Pour in the marinade and bring to a simmer.\r\n5. Return the beef to the pan.\r\n6. Top with fresh onion rings and cook for 1 more minute. Serve.\r\n', '2026-02-08 08:42:01', 1),
(21, 3, 'Chicken Tinola', 'uploads/chickentinola.jpg', 'A soothing ginger-based chicken soup with green papaya and chili leaves.', 'Chicken Tinola (Tinolang Manok) is a classic Filipino ginger-based chicken soup, deeply rooted in indigenous culture and immortalized in Jose Rizal’s 19th-century novel, Noli Me Tangere. It signifies comfort,home, and Filipino identity, typically featuring chicken, ginger, sayote or papaya, and moringa (malunggay). ', 'Any', 15, 35, 4, '500g chicken pieces\r\n1 thumb-sized ginger, sliced thinly\r\n1 onion, chopped\r\n2 cloves garlic, minced\r\n1 small green papaya or sayote, wedges\r\n1 bunch chili leaves (dahon ng sili) or malunggay\r\nFish sauce (patis)', '1. Sauté garlic, onion, and ginger until fragrant.\r\n2. Add chicken and cook until it turns white.\r\n3. Season with fish sauce and pour in water (approx 4-5 cups). Boil.\r\n4. Simmer for 20 minutes.\r\n5. Add papaya/sayote and cook until soft.\r\n6. Add leaves and turn off heat. Cover to let leaves steam.\r\n', '2026-02-08 08:52:03', 1),
(22, 3, 'Leche Flan (Filipino Crème Caramel)', 'uploads/lecheflan.jpg', 'A rich, creamy custard topped with caramel syrup, usually steamed in oval llanera molds. ', 'Leche flan is a beloved Filipino dessert, serving as a staple at fiestas, holidays (especially Christmas), and family gatherings. It is a rich, creamy steamed custard topped with a soft caramel sauce, directly descended from the Spanish flan de leche (milk flan). ', 'Dessert', 15, 35, 5, 'For the Caramel:\r\n1 cup sugar\r\n1/4 cup water (optional, helps slow down crystallization) \r\nFor the Custard:\r\n10 large egg yolks\r\n1 can (390g) condensed milk\r\n1 can (370ml) evaporated milk\r\n1 tsp vanilla extract', '1. Melt 1 cup of sugar directly in the llanera (mold) over low heat until golden brown, then swirl to coat the bottom and let it harden.\r\n2. In a large bowl, gently whisk 10 egg yolks, 1 can of condensed milk, 1 cup of evaporated milk, and 1 teaspoon of vanilla extract until well combined, avoiding excessive bubbles.\r\n3. Strain the custard mixture at least twice through a fine-mesh sieve into the caramel-lined mold to ensure a smooth, silky texture.\r\n4. Cover each llanera tightly with aluminum foil to prevent moisture from dripping into the custard while steaming.\r\n5. Steam over medium-low heat for 30–45 minutes, or until the custard is set and a knife inserted in the center comes out clean.\r\n6. Allow the flan to cool completely at room temperature, then refrigerate for at least 4 hours before running a knife around the edges and inverting it onto a platter. ', '2026-02-08 09:01:24', 1),
(24, 3, 'Halo-Halo', 'uploads/halohalo.webp', 'Halo-halo is a vibrant, colorful, and refreshing dessert, especially popular in the Philippines during hot weather.', 'It is traditionally served in a tall, clear glass to showcase its various layers and textures, featuring a sweet and creamy profile. The experience of eating it involves using a long spoon to mix all the ingredients together, hence its name, before enjoying the blend of flavors and temperatures.', 'Dessert', 10, 0, 3, 'Shaved ice\r\nEvaporated milk\r\nSweetened red beans, white beans or garbanzo beans\r\nSweetened jackfruit (langka) strips\r\nCoconut strips (macapuno)\r\nPalm fruit (kaong)\r\nSweetened saba banana slices\r\nUbe halaya (purple yam jam)\r\nLeche flan\r\nUbe ice cream\r\nCrispy rice (pinipig), optional', '1. Layer the sweetened beans, jackfruit, coconut strips, palm fruit, and sweetened banana slices in a tall glass.\r\n2. Add shaved ice, packing it slightly.\r\n3. Pour evaporated milk over the ice.\r\n4. Top with a scoop of ube ice cream and a slice of leche flan.\r\n5. Garnish with pinipig (if using) and serve with a long spoon. Remember to mix all the components together before eating.', '2026-02-08 09:28:25', 1),
(25, 1, 'Hotsilog', 'uploads/hotsilog.jpg', 'Hotsilog is a quintessential Filipino breakfast plate. The name is a portmanteau of its three main components: Hotdog, Sinangag (garlic fried rice), and itLog (fried egg).', 'Originally served as a quick breakfast or a reliable \"hangover cure\" at roadside eateries (carinderias), the variety expanded from the classic Tapsilog (beef jerky) to include Hotsilog, which quickly became a favorite for kids and students due to its bright red color and sweet-savory flavor.', 'Breakfast', 5, 20, 2, 'Hotdogs: 2–3 pieces of Filipino-style red hotdogs (which are sweeter and juicier than Western varieties).\r\nRice: 1 cup of day-old garlic fried rice (sinangag).\r\nEgg: 1–2 eggs, usually cooked sunny-side up.\r\nExtras: Cooking oil, salt, and water for boiling the hotdogs.\r\nGarnish/Sides: Sliced tomatoes, atchara (pickled papaya), and banana ketchup for dipping. \r\n', '1. Prep the Hotdogs: Score the sides of the hotdogs with light diagonal slits.\r\n2. Boil & Fry: Place hotdogs in a pan with a little water and oil. Boil until the water evaporates, then let them fry in the remaining oil for 1–2 minutes until the skin is slightly crisp.\r\n3. Fry the Egg: In the same pan (or a new one), fry the eggs to your preference—sunny-side up with a runny yolk is traditional.\r\n4. Sauté the Rice: Use garlic-infused oil to stir-fry day-old rice until heated through and fragrant.\r\n5. Arrange the garlic rice, fried eggs, and hotdogs on a single plate.', '2026-02-08 09:43:39', 1),
(26, 1, 'Mango Shake', 'uploads/mangoshake.webp', 'A mango shake is a thick, tropical beverage traditionally made by blending ripe mangoes with milk and a sweetener. Often called the \"King of Fruits,\" mangoes provide a luscious, velvety texture that recharges the body on hot summer days.', 'In many households, the arrival of mango season is a celebrated event. One popular story traces the simple mango milkshake back to old Indian-Zoroastrian cookbooks like Jamva Chaloji, where humble mixtures of organic milk and fruit were crafted as \"elixirs\" to soothe the heat. ', 'Drink', 10, 0, 3, '2 large ripe mangoes \r\n2 cups chilled whole milk \r\n1–2 tablespoons sugar or honey\r\n1 cup of Ice cubes for a chilled, slushy consistency', '1. Peel the mangoes, remove the stone, and chop the flesh into chunks.\r\n2. Combine mango chunks and sweetener in a high-speed blender until smooth to ensure no fiber remains.\r\n3. Pour in the chilled milk and ice cubes.\r\n4. Blend on high until creamy and frothy.\r\n5. Pour into tall glasses and garnish with fresh mango slices.', '2026-02-08 10:08:14', 1),
(27, 1, 'Club Sandwich', 'uploads/clubhousesandwich.webp', 'The club sandwich, also known as a clubhouse sandwich, is a double-decker American classic characterized by its three layers of toasted bread and specific stacking order.', 'The sandwich likely originated in late 19th-century New York social clubs. The two most popular claims are from the Union Club of New York City (referenced as early as 1889) and the Saratoga Club-House in Saratoga Springs (1894).', 'Lunch', 10, 10, 1, '3 slices of white bread, toasted\r\n2–3 tbsp mayonnaise\r\n2–3 slices of cooked turkey or chicken breast\r\n2–3 strips of crispy cooked bacon\r\n2 slices of tomato\r\n1–2 leaves of lettuce (typically iceberg or romaine)\r\n1 slice of cheddar cheese (optional, common in modern versions)\r\nSalt and black pepper to taste ', '1. Toast the bread until golden. Spread a layer of mayonnaise on one side of each slice.\r\n2. On the bottom slice, place a leaf of lettuce, tomato slices (seasoned with salt and pepper), and the turkey or chicken.\r\n3. Place the second slice of toast on top. Spread more mayonnaise on its top side.\r\n4. Layer on the crispy bacon and optional cheese (some recipes also add more lettuce/tomato here).\r\n5. Place the third slice of toast on top, mayonnaise side down.\r\n6. Insert four toothpicks into the centers of what will be your four triangles (one in each quadrant). Use a serrated knife to cut the sandwich diagonally twice, forming four triangular pieces.', '2026-02-08 10:17:18', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `password` varchar(255) NOT NULL,
  `is_staff` tinyint(1) DEFAULT 0,
  `is_active` tinyint(1) DEFAULT 1,
  `date_joined` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `first_name`, `last_name`, `email`, `password`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'Aiko', 'Ana', 'Rabang', 'anacristintin@gmail.com', '$2y$10$97.KUfWHTrhmbtLNs0jDt.jfkQEg0OChPwXkxHvWuLhCQZ3I1aqSC', 0, 1, '2026-02-06 15:40:48'),
(2, 'kanye', 'ye', 'kan', 'admin234@gmail.com', '$2y$10$MdJuEfuBtkGcPAbzPRXJVuQSVyXAfD3Bt9l/vEbwGy6.3UVy/Q6cm', 1, 1, '2026-02-06 16:02:32'),
(3, 'jiem', 'jm', 'Garduce', 'johnmatthewgarduce77@gmail.com', '$2y$10$MAX4kjx76bQfpXrWC3FSXOiN/3w4gNXPG7c4CE6fetidlaCOyIOfO', 0, 1, '2026-02-07 15:47:01');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `favorites`
--
ALTER TABLE `favorites`
  ADD PRIMARY KEY (`user_id`,`recipe_id`),
  ADD KEY `recipe_id` (`recipe_id`);

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`profile_id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `recipes`
--
ALTER TABLE `recipes`
  ADD PRIMARY KEY (`recipe_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `profile_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `recipes`
--
ALTER TABLE `recipes`
  MODIFY `recipe_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `favorites`
--
ALTER TABLE `favorites`
  ADD CONSTRAINT `favorites_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `favorites_ibfk_2` FOREIGN KEY (`recipe_id`) REFERENCES `recipes` (`recipe_id`) ON DELETE CASCADE;

--
-- Constraints for table `profiles`
--
ALTER TABLE `profiles`
  ADD CONSTRAINT `profiles_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `recipes`
--
ALTER TABLE `recipes`
  ADD CONSTRAINT `recipes_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
