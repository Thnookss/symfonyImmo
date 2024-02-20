-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : mariadb
-- Généré le : mar. 20 fév. 2024 à 15:26
-- Version du serveur : 11.2.2-MariaDB-1:11.2.2+maria~ubu2204
-- Version de PHP : 8.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `symfony`
--

-- --------------------------------------------------------

--
-- Structure de la table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `category`
--

INSERT INTO `category` (`id`, `name`, `slug`) VALUES
(17, 'Biens en location', 'biens-en-location'),
(18, 'Biens en vente', 'biens-en-vente'),
(19, 'Immobilier neuf', 'immobilier-neuf'),
(20, 'Immobilier de prestige', 'immobilier-de-prestige');

-- --------------------------------------------------------

--
-- Structure de la table `messenger_messages`
--

CREATE TABLE `messenger_messages` (
  `id` bigint(20) NOT NULL,
  `body` longtext NOT NULL,
  `headers` longtext NOT NULL,
  `queue_name` varchar(190) NOT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `available_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `delivered_at` datetime DEFAULT NULL COMMENT '(DC2Type:datetime_immutable)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `pictures`
--

CREATE TABLE `pictures` (
  `id` int(11) NOT NULL,
  `property_id` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `property`
--

CREATE TABLE `property` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `price` decimal(10,4) DEFAULT NULL,
  `description` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `property`
--

INSERT INTO `property` (`id`, `category_id`, `title`, `price`, `description`) VALUES
(2, 20, 'Voluptatem officia possimus blanditiis hic dolore dolor.', 113372.0000, 'Et optio hic et eos distinctio similique. Id et atque quia qui.'),
(3, 19, 'Facilis omnis assumenda iure officiis dicta blanditiis voluptatem libero.', 387568.0000, 'In asperiores et autem ut magnam delectus. Non est maiores et quis dolor harum. Aspernatur quia voluptatem porro iusto blanditiis.'),
(4, 17, 'Fugiat quas quibusdam aperiam et amet qui voluptate.', 178811.0000, 'Cumque possimus aut sapiente et ut. Necessitatibus et hic natus magni et harum consequatur. Qui voluptas voluptatem enim vel quia eius. Beatae temporibus provident maxime aut facere quis.'),
(5, 20, 'Sapiente aut sunt voluptatibus quisquam consequuntur.', 163429.0000, 'Tenetur voluptatum beatae itaque. Amet at ea laborum voluptates. Soluta at nulla hic quis. Itaque quis vero facilis quia iste quod. Voluptatem reiciendis rerum eligendi dolores.'),
(6, 18, 'Quod ut suscipit recusandae tenetur.', 509971.0000, 'Asperiores eos cupiditate dolorum autem asperiores. Qui impedit itaque inventore voluptas fugit. Eaque facilis qui fugit est.'),
(7, 18, 'Odio et et impedit sed nesciunt.', 915015.0000, 'Voluptatem voluptatum dolore dolorum incidunt ut. Et autem repudiandae ea aliquid sit in labore. Incidunt in inventore quisquam.'),
(8, 17, 'Optio et id quaerat.', 575473.0000, 'Voluptas delectus inventore nulla doloribus consectetur et. Et sunt qui illum. Qui velit consequatur architecto culpa consequatur omnis.'),
(9, 19, 'Adipisci necessitatibus temporibus blanditiis.', 113657.0000, 'Ducimus eaque quia ut in autem atque. Pariatur similique reprehenderit sed ut. Modi beatae numquam adipisci.'),
(10, 20, 'Vel est ut nulla et sequi placeat consequuntur.', 121421.0000, 'Et est quaerat nesciunt est doloribus occaecati. Voluptates vitae consequatur molestiae. Porro nihil est est eum placeat voluptatem qui.'),
(11, 20, 'Amet nulla cumque hic et at.', 945703.0000, 'Odio doloribus voluptatum numquam voluptatibus reiciendis nemo voluptas. Debitis in aspernatur et est natus. Deleniti ex voluptatem doloribus architecto. Nobis itaque explicabo nesciunt.'),
(12, 20, 'Necessitatibus delectus debitis quos aut eligendi numquam debitis.', 191240.0000, 'Cumque quia et repellendus et. In dolor molestiae aut consequatur totam. Aspernatur et quod facere porro error alias. Et ab et praesentium dolor debitis.'),
(13, 20, 'Quos ut eligendi est vitae reprehenderit quibusdam similique.', 594559.0000, 'Et nesciunt occaecati deleniti ad quibusdam et. Est eos nihil quo quis ut delectus natus. Minima iusto fugiat at dolores voluptatum neque.'),
(14, 19, 'Et autem voluptate qui ut.', 551730.0000, 'Eos deserunt praesentium sapiente eos quam veritatis. Voluptatem sapiente autem dolor. Qui autem repudiandae eum vel minus ex iure.'),
(15, 18, 'Rerum et id repellendus sit error.', 622807.0000, 'Odit fuga est sequi quasi ab. Impedit perspiciatis harum quas aliquam dolorem excepturi dolores. Aspernatur ut rerum id odit.'),
(16, 18, 'Occaecati laboriosam nemo nemo.', 376403.0000, 'Unde in et sunt aspernatur fugit voluptatem eos error. Magni fugiat esse atque reiciendis quia dolores facilis. Non minima ullam et voluptatem autem quasi.'),
(17, 17, 'Nostrum totam et culpa debitis.', 233197.0000, 'Ipsam qui non dolor. Expedita iste omnis consequuntur sunt assumenda quidem quam.'),
(18, 18, 'Et illo enim dignissimos eveniet et expedita a.', 437152.0000, 'Quo aut rerum nostrum expedita ut ut voluptatem. Voluptates adipisci omnis possimus. Temporibus officiis qui officia rerum. Qui ab quia sit rerum. Quasi et sapiente eligendi.'),
(19, 20, 'Vel est ut distinctio dolor.', 345712.0000, 'Consequatur hic deserunt expedita aut qui quidem. Et eum ea est iusto.'),
(20, 20, 'Animi totam autem sit sed.', 809449.0000, 'Sapiente at mollitia dolorem nobis. Aut placeat mollitia enim ab.'),
(21, 17, 'Velit vitae culpa ratione accusantium et.', 799709.0000, 'Alias accusantium quo consequatur unde. Eos est accusamus ducimus voluptatibus aut consequuntur rerum nihil. Voluptas repudiandae dicta molestias quasi exercitationem.'),
(22, 20, 'Unde temporibus pariatur rem.', 882694.0000, 'Ex assumenda saepe tenetur et quisquam in ex omnis. Nihil reiciendis repellendus provident nemo ut id.'),
(23, 17, 'Fugiat minus voluptatibus molestiae rem.', 811790.0000, 'Est sequi odit quos reiciendis. Aut occaecati dignissimos at ea ea maiores et non. Et ullam et odit earum voluptates.'),
(24, 20, 'Enim cupiditate vero et est.', 368521.0000, 'Quod commodi rerum natus unde ut. Consequuntur alias quae est quae expedita dolorum. Error qui quia dolores odio voluptate sint aut.'),
(25, 18, 'Incidunt aut magnam repellendus quidem aut iure voluptatem.', 273924.0000, 'Ut et rerum harum architecto velit suscipit. Amet quaerat fugiat tempore ad id voluptatibus. Dolores aut nisi qui sunt est corrupti adipisci. Nostrum repudiandae repellat et mollitia.'),
(26, 17, 'Nihil ducimus rerum aspernatur iusto ipsam quia quae.', 115545.0000, 'Illo a velit corrupti neque ut ad. Qui aut possimus voluptas exercitationem veniam nostrum culpa. Ipsum odio voluptatem incidunt dolorem quidem.'),
(27, 19, 'Aspernatur enim fugit sit ea nesciunt.', 406413.0000, 'Eos perferendis et laborum impedit reiciendis rem quisquam. Aut id culpa eos soluta voluptatem exercitationem iusto. Quibusdam vitae eligendi adipisci.'),
(28, 17, 'Deserunt sunt velit repellat.', 211552.0000, 'Sed nihil minima ad labore vitae nobis rerum. Magnam ut qui vel ea ut. Necessitatibus a rem tempore omnis.'),
(29, 20, 'Illum culpa rerum qui ducimus.', 364945.0000, 'Unde aspernatur et quaerat qui aut in vel. Laboriosam corporis maxime et error nam sint fugit. Architecto nostrum et sapiente odio rerum libero. Quia odio laudantium voluptate sit harum ut eum.'),
(30, 18, 'Sunt voluptatem saepe et unde.', 532856.0000, 'Quia illum reiciendis voluptas harum. Est corporis consectetur animi dolores. Ut nihil non sed nam illo aliquam.'),
(31, 19, 'Cum voluptatem deleniti corporis similique.', 751562.0000, 'Aut quo magnam veniam. Quia impedit blanditiis et dolores soluta. Repellendus rerum ut tempora ipsam et tempore est. Eveniet quia est sunt fugiat nihil.'),
(32, 18, 'Inventore incidunt ut pariatur veritatis.', 395069.0000, 'Ratione dolores saepe ipsa omnis et reprehenderit laudantium. Sunt et ullam ut est delectus. Quo ut autem eaque expedita perferendis minus.'),
(33, 17, 'Molestiae suscipit debitis ipsam est autem.', 392497.0000, 'Mollitia accusantium repellendus porro voluptate qui possimus officiis. Quae eligendi saepe ullam nobis saepe. Cupiditate maiores sed itaque incidunt blanditiis et. Saepe quis animi aut ipsam ea.'),
(34, 19, 'Voluptatibus labore sunt quia impedit rerum eveniet.', 789143.0000, 'Quia placeat magnam sapiente laboriosam iste hic et. Vel deleniti quod architecto necessitatibus ducimus ut cupiditate. Sed ea qui quasi pariatur cupiditate.'),
(35, 18, 'Est nam amet velit aut.', 989429.0000, 'Quo vel corporis placeat exercitationem. Est voluptas quos iure molestias.'),
(36, 18, 'Deserunt aut vel deserunt magni ea est.', 965934.0000, 'Adipisci quo et nam voluptatem et. Perspiciatis consequatur quaerat sed molestiae.'),
(37, 18, 'Voluptatem ad magnam recusandae.', 153541.0000, 'Ea repellat totam enim mollitia voluptatem. Ducimus velit quas sint amet non ut. Dolorem qui ut reiciendis expedita.'),
(38, 18, 'Ullam error alias fugit veritatis.', 675436.0000, 'Quis sequi voluptas quae. Architecto voluptatem assumenda nemo voluptate inventore nulla. Magni nemo saepe commodi.'),
(39, 19, 'Inventore nisi nam qui provident.', 340150.0000, 'Velit distinctio earum explicabo sit quam facilis aut. Voluptates perferendis animi ipsa. Aut aliquam natus accusantium vero eligendi eum. Non et nihil et ea. Sed voluptas nobis error nobis.'),
(40, 20, 'Fugiat modi quibusdam qui vitae odit quia dicta.', 459577.0000, 'Sunt in et et quidem et cumque. Rerum sint dolores eum accusantium minima.'),
(41, 20, 'Quasi et quia earum.', 638950.0000, 'Suscipit amet quisquam quia consequatur numquam. Aspernatur quia ut placeat distinctio expedita voluptatem qui. Illum natus aut autem eaque. Quo sit molestias cupiditate et aut.'),
(42, 17, 'Quam et consequatur et ea.', 458187.0000, 'Consequatur laborum quidem maiores asperiores earum error commodi. Nostrum qui dignissimos dolor aut rerum. Porro modi nihil error adipisci. Similique ut dolor sint tempore modi natus in.'),
(43, 20, 'Et dignissimos ullam recusandae eum.', 103582.0000, 'Et animi quia sint sed non modi. Illo temporibus error voluptates voluptate. Eligendi nemo accusantium quis optio.'),
(44, 20, 'Non est et eligendi non unde libero.', 656473.0000, 'Porro quam repudiandae saepe distinctio est ipsum ea. Reprehenderit officia nisi placeat qui quae. Veniam animi enim neque consequuntur. Voluptates provident sed omnis cum nam quos sed dolorem.'),
(45, 18, 'Deserunt tempora deserunt pariatur saepe ut consequatur est.', 979539.0000, 'Repellat et porro saepe alias ducimus. At qui voluptas itaque quia at cupiditate nesciunt. Minus voluptas nam et. Et qui ex a eos exercitationem sequi.'),
(46, 18, 'Perspiciatis cumque velit eius autem nemo illo totam deserunt.', 228816.0000, 'Nam ea repellendus voluptas rem deleniti quos. Velit impedit optio animi sit eligendi numquam. Aspernatur ducimus sunt odit qui et. Rerum aperiam velit non sed natus fuga porro.'),
(47, 17, 'Illum suscipit iure alias recusandae.', 460855.0000, 'Sequi doloremque quae ut quae ea eius. Omnis tenetur amet enim minima quae assumenda eius veniam.'),
(48, 17, 'Sit est distinctio aut et veniam fuga.', 949890.0000, 'Vel quis voluptatem voluptas omnis quaerat reiciendis. Magnam qui mollitia modi consequatur qui numquam. Dolorum tempora perspiciatis quia. Eligendi iure perferendis quae quas corporis autem.'),
(49, 18, 'Ratione excepturi aut ipsam vel.', 249058.0000, 'At fugiat est asperiores natus. Perferendis repellendus nesciunt illo amet vel reiciendis. Aliquam mollitia vel vel vel. Omnis ut impedit consequatur ut.'),
(50, 17, 'Quam sed autem quo nam assumenda dolore eos.', 350404.0000, 'Deleniti et est quis quod qui laudantium. Molestiae nemo optio provident ea laboriosam earum et excepturi. Veritatis quo non qui quam.'),
(51, 18, 'Quis dolore dignissimos placeat et.', 208194.0000, 'Ut praesentium est excepturi officiis. Ut inventore adipisci explicabo culpa commodi praesentium voluptatem. Quia quos recusandae quia minus.'),
(52, 18, 'Et laudantium maxime officia ad earum aspernatur ut.', 336972.0000, 'Magnam rerum dolor reiciendis consequuntur alias. Nihil consectetur laborum voluptatum. Voluptatibus rerum omnis minima amet vel sint voluptatem hic. Voluptas fugit voluptatem alias sequi a.'),
(53, 17, 'Possimus placeat corrupti cum consequatur aliquam natus sed.', 740972.0000, 'Repudiandae occaecati temporibus omnis nihil optio atque. Tempore eum recusandae earum. Expedita maiores in consequatur animi unde. Inventore voluptatem dolorem et beatae quaerat et quaerat.'),
(54, 17, 'Ipsum sit praesentium nemo architecto.', 474357.0000, 'Quos tempore soluta rerum possimus ut eum. Quibusdam harum qui maiores doloribus ipsum explicabo ullam neque. Dolores est quia minus deleniti a non dicta consequatur.'),
(55, 18, 'Eaque error ut exercitationem eius dolorem.', 732984.0000, 'Aut non cumque id. Ut natus eaque voluptatem hic possimus sequi qui. Saepe quaerat animi culpa eveniet. Odio ab eos et doloribus.'),
(56, 17, 'Repudiandae ad nesciunt exercitationem quod minus alias fugiat.', 605972.0000, 'Accusamus nam tenetur perferendis nihil. Non corporis neque quo. Et culpa consequatur tempora nihil. Excepturi laboriosam qui accusamus pariatur.'),
(57, 20, 'Odit quia et sed.', 413306.0000, 'Quibusdam libero aut occaecati dolores. Consequatur omnis nihil quaerat saepe. Dolore voluptatem ut reprehenderit ea consequuntur ex fugit. Sed iusto et occaecati velit.'),
(58, 19, 'Ipsam molestias optio fugit quasi sed.', 903225.0000, 'Optio quia omnis ut quod aliquam labore. At debitis itaque velit sit sed consequatur qui. Commodi eum officiis et corporis non. Veritatis reiciendis saepe suscipit accusantium aliquam.'),
(59, 19, 'Quos quis repellendus esse blanditiis error qui praesentium.', 666931.0000, 'Ratione quia est blanditiis. Sed impedit cupiditate inventore qui sed.'),
(60, 19, 'Quisquam nobis alias numquam ipsum quia eum quaerat.', 869514.0000, 'Quo ipsam qui fuga culpa. Sint voluptas officia assumenda est possimus voluptatem. Animi alias saepe natus rerum nesciunt rem saepe.'),
(61, 18, 'Eius quia consectetur corrupti dolorem.', 292338.0000, 'Dolorem iste labore non dolores voluptatum voluptatem ipsum. Illo itaque sapiente accusamus accusamus aperiam qui commodi. Ducimus quo quia pariatur aut sunt.'),
(62, 17, 'Vero repellat rerum consequatur quia laudantium quod.', 543630.0000, 'Veritatis et et sequi voluptas omnis cum facere. Quos rerum tenetur accusamus dolore.'),
(63, 17, 'Et temporibus sapiente ullam iure pariatur velit.', 641823.0000, 'Totam eligendi quibusdam et. Voluptatem consequuntur doloremque esse voluptas magnam optio.'),
(64, 19, 'Qui et alias vel esse.', 237821.0000, 'Saepe eum voluptas quas porro quaerat dolorum in. Non repudiandae id voluptatum ut fuga et. Dolorem dolorem natus ut excepturi. Magnam omnis et commodi vero.'),
(65, 20, 'Quo nihil id quae nostrum dolores suscipit sequi.', 322423.0000, 'Quis accusantium dolorum quos rerum omnis. Debitis excepturi doloribus in unde ut. Quis dolorem aut ea error exercitationem.'),
(66, 18, 'Debitis rerum nesciunt laudantium facilis consectetur inventore.', 249510.0000, 'Eos rerum reiciendis accusamus ut. Quod qui ex inventore totam sunt culpa voluptatum. Nostrum voluptas et itaque provident non quam ut.'),
(67, 17, 'Quisquam dignissimos aut saepe quis maiores repudiandae commodi.', 163926.0000, 'A saepe eaque nesciunt eum itaque illum. Aut provident molestiae nisi praesentium. Nemo consectetur illum deserunt beatae. Earum nostrum tenetur culpa.'),
(68, 18, 'Deleniti aut consectetur maxime eos possimus voluptas.', 995264.0000, 'Enim aut dolores modi consectetur voluptatem maxime. Placeat est aut sint mollitia iure qui atque. Voluptas rem delectus et iste.'),
(69, 19, 'Officiis fuga tempora doloribus quia.', 223696.0000, 'Debitis aut tempore qui sit doloribus similique error. Et itaque id eaque dignissimos quaerat ipsam pariatur. Libero rerum doloribus nostrum ex fugiat a maxime illum.'),
(70, 20, 'Quibusdam dolores corrupti consectetur eaque iste illo possimus.', 189828.0000, 'Architecto omnis corporis et earum consequatur doloribus. Et cumque perspiciatis reprehenderit cum. Natus autem voluptatem aspernatur ducimus qui.'),
(71, 18, 'Consequuntur dolorem pariatur et rerum rem sint.', 529164.0000, 'Reiciendis vitae qui dolor esse aperiam. Qui possimus et hic quam recusandae. Similique et consequatur eum. Unde qui eum atque nihil laboriosam est eveniet.'),
(72, 20, 'Aliquid perferendis quo quae quas culpa itaque rerum.', 710251.0000, 'Excepturi saepe culpa animi sint fugiat. Corporis tenetur asperiores vero et maiores in.'),
(73, 18, 'Velit consequuntur qui quaerat laboriosam facere aut.', 548285.0000, 'Fugiat ipsam repellat ullam consequuntur. Officiis sapiente est sunt. Reiciendis maiores voluptates ratione quidem maiores quis quam. Dolores velit ullam dolore est.'),
(74, 19, 'Quo illo ratione vel fugit.', 773183.0000, 'Nostrum deserunt qui consequuntur adipisci odio. Blanditiis et omnis eligendi quisquam deserunt ipsum eius. Molestiae qui dolorum totam minima sapiente commodi saepe cumque.'),
(75, 18, 'Quibusdam dolorem similique vero et voluptatem excepturi dolorem quae.', 336037.0000, 'Saepe aliquid incidunt magni minima. Aperiam et voluptas et. Nam molestiae aut maiores quo dolor. Dolore ducimus fugit vel dolorem.'),
(76, 20, 'Ratione dignissimos ut quis accusantium modi dolor ut libero.', 189332.0000, 'Et maiores velit odit eum. Dolores accusamus perferendis id aspernatur illo. Eaque ratione repudiandae omnis occaecati ut expedita. Eos rerum quaerat doloribus doloribus harum esse est.'),
(77, 18, 'Nulla veritatis placeat aut iusto.', 997370.0000, 'Consectetur cumque consequatur consequatur earum. Sunt non eveniet sapiente eos quidem inventore deserunt. Iusto qui numquam amet qui ea cum.'),
(78, 17, 'Accusantium accusamus et quo occaecati quae veniam quo porro.', 311500.0000, 'Possimus cumque quas numquam dolor iure perferendis. Dolorum ducimus ut culpa veritatis. Animi eligendi earum repudiandae quas eaque sapiente rerum. In sit sunt atque fugiat.'),
(79, 19, 'Aspernatur sed deleniti ad vero culpa consequatur amet.', 399066.0000, 'Incidunt tempore quod laudantium inventore dolores tempora. Sed est saepe voluptatum. Est non tenetur neque.'),
(80, 20, 'Et minima ut perferendis.', 928359.0000, 'Sequi maxime ut et in ab. Similique voluptates nam quam non corporis ab ut. Cum quibusdam enim suscipit et. Rem minus quae eos eos sit voluptas et.'),
(81, 17, 'Quo quae id quis facilis nam veritatis fugiat.', 827657.0000, 'Officia voluptatem fuga est ut corporis. Autem libero quos molestiae iste aspernatur non. Aut aut quos amet consequatur consectetur.'),
(82, 19, 'Voluptatem vel molestiae necessitatibus et qui et culpa.', 478296.0000, 'Commodi ad optio sequi. Et quae dolor velit pariatur architecto. Quo dolorem voluptas ducimus aliquam aut.'),
(83, 17, 'Nihil itaque consequatur est voluptate dolor optio suscipit facilis.', 734652.0000, 'Deserunt a illum commodi consequatur occaecati ratione. Voluptatem ab explicabo hic nihil accusamus.'),
(84, 18, 'Dolores accusantium et deserunt repudiandae rerum vero inventore libero.', 728792.0000, 'Eius commodi autem autem voluptatem et quis est. Aut asperiores eveniet aspernatur voluptas alias accusantium accusamus. In amet modi et voluptas non autem sapiente.'),
(85, 20, 'Placeat neque perferendis occaecati aut omnis dignissimos.', 978133.0000, 'Eum laborum quia sit repellendus excepturi. Velit sequi placeat voluptatem animi deleniti. Suscipit rerum facilis debitis.'),
(86, 18, 'Dolorum voluptas quo voluptatum culpa.', 731806.0000, 'Minus nihil enim enim blanditiis ullam cum. Facere dignissimos rerum est soluta est nihil ut. Ducimus repellendus sequi ut est sit.'),
(87, 20, 'Saepe necessitatibus et aut ab excepturi.', 835874.0000, 'Perferendis ea et eos eaque. Iure iste illum sed animi mollitia vel. Quibusdam porro atque sit repellendus et. Nisi praesentium et quia.'),
(88, 17, 'Occaecati ut laudantium recusandae ut.', 615237.0000, 'Itaque vel quas vel. Molestias perferendis ad corrupti id exercitationem. Et natus beatae illum sint magni quisquam.'),
(89, 20, 'Expedita aliquam nam rerum velit dignissimos.', 780210.0000, 'Vel aut aut rem. Natus eaque rem eos et. Tenetur in ducimus accusamus tempore nulla doloremque dolores. Hic similique quidem et.'),
(90, 20, 'Autem vitae cumque sint.', 777320.0000, 'Consequatur rerum accusantium deleniti aut sit. Possimus doloribus et ut fugiat tenetur officia. Culpa saepe aut alias occaecati ut quia.'),
(91, 18, 'Quibusdam optio quia dolor itaque.', 682261.0000, 'Placeat optio reprehenderit non voluptas molestiae. Dolore distinctio in facilis reiciendis. Quis consequatur recusandae voluptatum voluptatum architecto aut quo.'),
(92, 18, 'Omnis culpa quae exercitationem error consequatur officiis nobis.', 109532.0000, 'Sed voluptatem est repudiandae. Exercitationem architecto necessitatibus minima. Iure incidunt veritatis quia voluptas quo dolor.'),
(93, 19, 'Nemo dolores soluta laboriosam officia commodi et blanditiis.', 133660.0000, 'Eius nesciunt nesciunt sed excepturi. Aut impedit iure fugit autem enim. Quibusdam et fuga sed sit commodi. Temporibus porro nobis velit error quis ullam rerum.'),
(94, 18, 'Tenetur architecto impedit quia debitis.', 765313.0000, 'Et praesentium quae quae aliquam aut. Officiis ducimus velit recusandae ipsa. Repudiandae quas culpa consequatur repudiandae quaerat.'),
(95, 18, 'Et odit in qui excepturi similique temporibus explicabo.', 765426.0000, 'Omnis qui vel possimus quia ea. Fugiat possimus reprehenderit sunt itaque quia modi. Nostrum eligendi excepturi dicta quaerat ut eligendi.'),
(96, 20, 'Voluptas suscipit omnis quas qui aut.', 592085.0000, 'Nesciunt dolores est doloremque dolores sequi sequi. Cumque quam sed aut in aut quia. Sed dolores iure repellendus et et distinctio aut. Eveniet quam beatae autem numquam.'),
(97, 19, 'Non totam consequuntur eius sit quia.', 727735.0000, 'Odio quia accusantium aut fugit dolore. Culpa modi dolorem aut qui recusandae quo optio. Quia sed velit animi eum dolores tempore. A eaque eos non recusandae.'),
(98, 19, 'Aspernatur alias placeat aut in.', 974301.0000, 'Nobis sit non commodi non voluptates quod veniam. Rerum ut ut corrupti placeat consequuntur. Quasi nam recusandae repudiandae temporibus.'),
(99, 20, 'Error ut repellendus qui rerum.', 181511.0000, 'Aut rerum aut nihil explicabo quidem. Aut non nulla voluptatum dolore repellat. Qui repellendus incidunt fugiat. Temporibus vel est et sed voluptas.'),
(100, 20, 'Minima voluptas aut exercitationem officia.', 835961.0000, 'Praesentium eveniet ut saepe voluptas quo. Consequatur ut blanditiis ut sed adipisci numquam et. Voluptatem nulla harum autem suscipit explicabo.'),
(101, 17, 'Ut laudantium quidem aut eos.', 223856.0000, 'Illum minus illo nobis ab fugiat quia sint. Dignissimos ullam soluta qui ipsa exercitationem soluta nostrum. Error voluptatibus ut tenetur exercitationem rerum.'),
(102, 19, 'Tempora qui eos accusantium est.', 913028.0000, 'Nostrum incidunt repellendus alias id est. Ipsa odio sit ipsam odio facilis quibusdam. Est et eveniet est ducimus.'),
(103, 20, 'Voluptas omnis nam saepe labore eius et in.', 352935.0000, 'Quo hic non est reiciendis dolorum. Nihil sequi sequi reiciendis beatae dolor consequatur. Incidunt assumenda ut temporibus iusto. Sed nostrum reiciendis sed expedita.'),
(104, 18, 'Id magni quasi assumenda et assumenda provident.', 580854.0000, 'Magni voluptatem dolorem aut et nam deserunt expedita. Voluptas reiciendis est vero et ratione quod est ut. Sit asperiores nostrum aut. Labore nam tempore sequi est nihil est.'),
(105, 20, 'Totam unde dolorem magnam rem.', 964499.0000, 'Deleniti magni numquam et labore. Eius quos earum molestias unde sint voluptates sunt. Ut est quam voluptates aut. Et sunt reprehenderit autem voluptas.'),
(106, 18, 'Sit nam possimus soluta voluptas.', 589627.0000, 'Est minus consectetur nobis quam molestiae. Esse distinctio suscipit voluptatem magni et. Quia ullam nisi magni quo dolor sit.'),
(107, 18, 'Ut ut sint necessitatibus et animi distinctio ut libero.', 267936.0000, 'Repellat sint consequatur natus aliquid quos assumenda. Harum animi id sapiente incidunt aut qui. Modi omnis ea sunt et sunt dolor et. Illum molestiae aspernatur aspernatur est quos inventore eos.'),
(108, 19, 'Vel cum perspiciatis et et omnis aut quasi odit.', 855677.0000, 'Repellat non ea pariatur aspernatur animi. Quod aut laborum ducimus dicta. Distinctio voluptatum nisi tempora veritatis rerum dolores aut.'),
(109, 17, 'Animi ea perspiciatis voluptatum sunt qui.', 528982.0000, 'Exercitationem qui et asperiores quibusdam. Mollitia debitis doloremque accusamus. Quia aperiam saepe asperiores numquam laborum consequatur et. Ut earum eligendi sed ea maiores a error.'),
(110, 17, 'Et sit blanditiis delectus dolores.', 937564.0000, 'Tempore quod facilis quia vel. Est fugit illum maxime. Commodi qui aut qui quis a suscipit.'),
(111, 17, 'Porro doloremque qui qui sed.', 209810.0000, 'Aut fugit est voluptates nisi illo fugit id. Deleniti quod voluptas eum et qui officia. Qui qui qui quasi amet.'),
(112, 19, 'Consectetur tempore qui dignissimos iusto.', 586648.0000, 'Et debitis ratione libero ut molestiae. Necessitatibus ut quis officiis possimus. Ut et praesentium quia. Rem perspiciatis natus molestiae ut rerum et est.'),
(113, 17, 'Qui quis autem et a sed sunt itaque.', 974478.0000, 'Sint et officia consequatur qui fugit accusamus. Iste laboriosam nulla placeat architecto. Ipsam perferendis natus aut autem. Neque qui ut qui quae.'),
(114, 19, 'Voluptatum nisi aut autem magni exercitationem molestias.', 305507.0000, 'In molestias adipisci expedita consequatur. Repellat officiis perferendis voluptatem vitae. Est assumenda ab modi impedit rem rerum.'),
(115, 17, 'Qui porro fuga blanditiis laboriosam.', 906333.0000, 'Temporibus itaque ipsam voluptatem in. Sunt possimus inventore facere corrupti fuga eum vero facere. Omnis architecto neque fugiat voluptas animi in est. Sunt quibusdam perspiciatis natus.'),
(116, 20, 'Quis voluptatum ut impedit repudiandae.', 436834.0000, 'Iste reprehenderit ipsam quia error sunt. Est non quaerat molestias iure doloremque accusamus sit quibusdam. Ipsam in sint facere quia ratione. Nisi nobis vitae et.'),
(117, 17, 'Consequatur repudiandae autem dolorum consequatur est.', 832275.0000, 'Rerum magni laboriosam id voluptates quod consequatur perferendis. Aliquam quas dolores est qui earum. Enim incidunt consequatur reprehenderit voluptatem enim. Necessitatibus quis hic sed.'),
(118, 18, 'Esse veniam expedita totam.', 705626.0000, 'Quidem explicabo minima quod aut eaque. Rerum saepe culpa facere facere cupiditate itaque. Asperiores possimus aliquam omnis sed pariatur nesciunt sit.'),
(119, 17, 'Ad consequuntur consequatur quia et et aliquam.', 838478.0000, 'Vel quidem culpa aspernatur explicabo asperiores sit cupiditate. Est quas et cupiditate est. Dolorem voluptatem quas id et alias vero.'),
(120, 19, 'Iusto doloremque aut dignissimos ea tempore qui.', 981370.0000, 'Voluptatem iusto optio exercitationem iste et eaque eos. Et sunt ut quia quam saepe itaque tenetur eum. Sed est quam quam necessitatibus modi quidem nobis voluptatibus.'),
(121, 19, 'Quibusdam non quia assumenda nulla eum natus.', 635987.0000, 'Natus id id ullam nostrum. Ab ratione sit illo dolorum. Ut rem non aut minus possimus. Tenetur quidem et sint qui dolores quis omnis.'),
(122, 20, 'Qui quidem et modi cupiditate.', 301367.0000, 'Neque voluptatibus aliquid consequuntur sint a. Exercitationem perferendis molestias quae dolorem id. Facere incidunt eos consequatur et vel. Non doloremque sint temporibus.'),
(123, 18, 'Autem consectetur omnis voluptatibus molestiae.', 402197.0000, 'Assumenda qui sunt ut deserunt aut dolore. Debitis fugiat vel amet aut ducimus dicta. Quibusdam et est nesciunt et iste voluptatum.'),
(124, 17, 'Hic laborum possimus iste et autem.', 804398.0000, 'Veritatis et voluptatibus in occaecati. Odio quas et doloremque natus esse. Eos quia placeat et architecto ipsum maiores.'),
(125, 20, 'Repellendus voluptate sunt quibusdam totam.', 641511.0000, 'In cupiditate sint facilis magnam et animi. Et itaque facere mollitia soluta dicta. Aliquid saepe accusantium voluptatem magni dolorem.'),
(126, 18, 'Eum rerum alias delectus.', 827871.0000, 'Eos qui soluta libero libero nulla a repellendus. Nesciunt sapiente earum saepe esse. Ipsa nostrum esse molestiae nesciunt illum.'),
(127, 17, 'Porro atque maxime necessitatibus.', 922173.0000, 'Voluptates vel rerum odit voluptatem molestiae asperiores magni aut. Iure animi vero voluptas sunt rerum. In ex amet nobis a illo.'),
(128, 18, 'Nihil minus itaque autem aut et.', 305925.0000, 'Quia dolorem tempora rerum dolores ipsa aperiam. Sed deleniti natus exercitationem eos. Reiciendis vel ut molestiae est.'),
(129, 18, 'Et earum eaque consequuntur vel iure.', 501075.0000, 'Ut et exercitationem doloremque quis atque. Et officia qui et autem quos natus quo. Laboriosam nam autem quo ut tempora animi quis.'),
(130, 17, 'Sit qui aut et recusandae aliquam soluta sequi.', 311914.0000, 'Qui autem voluptas ipsa. Sed quidem modi sed velit incidunt inventore porro. Aut quae non in vel illo amet. Est sint voluptatem sit.'),
(131, 17, 'Voluptatem earum tempora sunt ipsum beatae molestiae et adipisci.', 252465.0000, 'Repellendus quaerat qui soluta sed. Omnis consectetur aliquid voluptatum distinctio rerum.'),
(132, 20, 'Et quia accusamus reprehenderit.', 172334.0000, 'Quis occaecati voluptatem dolorem est iure ullam quia. Ut non illum porro. Ipsam omnis corporis ratione voluptas nemo placeat molestiae.'),
(133, 20, 'Qui velit modi eius perferendis ab alias repellat.', 597706.0000, 'Est et iusto quod facilis dolorum et vel. Accusamus unde aperiam veritatis expedita fuga.'),
(134, 18, 'Est rerum minima placeat nobis esse.', 626651.0000, 'Nemo voluptatem praesentium ad nam nihil temporibus. Quasi delectus rerum eius a. Esse veritatis laboriosam vero quidem porro mollitia neque. Non ut deserunt doloribus molestiae atque illum.'),
(135, 17, 'Officiis provident dolore quis harum.', 501273.0000, 'Enim non tenetur unde nam excepturi culpa et consequatur. Ex dolor reprehenderit est expedita est quia distinctio corporis. Non soluta velit ut sint sapiente repudiandae.'),
(136, 18, 'Qui quibusdam ut rem reprehenderit blanditiis et nesciunt.', 985199.0000, 'Qui et suscipit quidem expedita cupiditate nam ut quidem. Eaque molestias molestiae non voluptas. Et odit consequatur optio praesentium ipsam. Vero molestias tempore eveniet et.'),
(137, 17, 'Voluptatem et sed ab molestiae.', 972535.0000, 'Vel earum aut quia. Laudantium repudiandae doloremque molestiae doloremque consequatur. Est molestiae ut doloremque iure repellendus facere.'),
(138, 18, 'Sit molestias ad quia quisquam.', 864974.0000, 'Repellendus error aut repudiandae sequi. Voluptatem architecto perferendis aut. Sint qui sint aliquid.'),
(139, 19, 'Saepe vitae enim repellendus adipisci tempora tenetur soluta.', 166900.0000, 'Aut porro quo recusandae unde et consequatur. Dignissimos optio blanditiis asperiores dicta dolorem officia fuga molestias. Dolor sit repellendus quisquam quidem et.'),
(140, 19, 'Eum et aut voluptatum id dolores.', 990599.0000, 'Perspiciatis iure fugiat quisquam doloribus vitae temporibus. Magnam et consequatur et modi rerum. Sapiente veniam reiciendis et voluptas quia voluptatem.'),
(141, 18, 'Qui ratione nemo vitae enim nesciunt.', 128929.0000, 'Doloribus reprehenderit facilis voluptatum culpa. Nemo facilis harum molestias qui omnis. Rerum ab corrupti fugiat aut eveniet sunt sequi repellendus. Ea sed nemo sed repellendus ducimus aliquam est.'),
(142, 18, 'Sequi nam dolorum quia nostrum aliquid fugiat.', 292108.0000, 'Architecto magni illum omnis doloremque est et. Maiores voluptatem assumenda voluptatem. Ut qui beatae itaque cupiditate velit quia.'),
(143, 17, 'Nostrum explicabo delectus aperiam quis aliquid.', 177187.0000, 'Vel a sed debitis nostrum. Totam magni labore neque sed saepe quibusdam. Rem sint ut id fugiat.'),
(144, 20, 'Laudantium natus nemo omnis omnis beatae.', 478386.0000, 'Laudantium corrupti qui hic doloribus ducimus. Tempore dicta provident sapiente non enim. Aliquid corporis dolore ut et. Molestiae id et neque.'),
(145, 20, 'Molestias sit veniam eligendi repudiandae.', 530940.0000, 'Alias iure vitae nihil iure sit. Ab voluptas id autem. Aut cupiditate cum quae nisi est.'),
(146, 20, 'Eos et repellat pariatur.', 728419.0000, 'Ratione tempore minus sunt consequatur optio illum voluptatem. Autem labore voluptate sed sed consequatur minus recusandae omnis. Voluptatibus rem voluptas explicabo aperiam possimus.'),
(147, 17, 'Iure explicabo eos quia molestiae velit in quam.', 686670.0000, 'Ab consectetur illo alias nobis natus id. Magnam id voluptate ratione tempore sunt. Quia aliquam similique vel odit explicabo. Fuga ut nihil placeat nobis et doloremque dolor.'),
(148, 17, 'Voluptas eaque et corrupti.', 111243.0000, 'Illo aut nam numquam deleniti rerum earum quia. Tempore beatae id dolor nobis. Et maxime fugiat facere blanditiis soluta ut assumenda.'),
(149, 18, 'Unde ut et incidunt.', 893168.0000, 'Ea earum consequatur praesentium temporibus. Aliquam quia provident eaque.'),
(150, 19, 'Consectetur minima deleniti id aut.', 955523.0000, 'Aspernatur voluptatibus hic et qui et tempore delectus. Odio ut inventore quaerat reiciendis ex non voluptas dolorem.'),
(151, 18, 'Exercitationem error maxime deleniti pariatur praesentium sed aspernatur quis.', 415635.0000, 'Voluptate culpa atque vero pariatur soluta enim. Fuga autem non reprehenderit aut. Rerum qui rem ullam saepe. Aliquid nihil consectetur ut ut quasi. Nemo dolore nihil nihil non.'),
(152, 19, 'Deleniti sed fugiat consequatur blanditiis corporis iusto reprehenderit.', 894240.0000, 'Nam natus quibusdam aut iste odit. Nulla error non perspiciatis quia iste eligendi. Eius enim veritatis sit aut nobis labore.'),
(153, 19, 'In saepe ut numquam blanditiis omnis vel.', 668316.0000, 'Soluta repellendus corporis placeat ut aut illo asperiores. Dignissimos est labore similique minus possimus ea qui. Dolorem nihil hic quibusdam nihil.'),
(154, 19, 'Magnam quis eius et dolor dolorem eum excepturi.', 512499.0000, 'Consequatur rerum qui nihil debitis ab ipsam. Nobis non id ut quam et quasi vitae. Aut ut facilis eos perferendis quo. Provident culpa est quis laborum ut.'),
(155, 20, 'Quo quaerat et necessitatibus ex.', 760412.0000, 'Ipsa fuga qui dolorem. Cum iusto autem magni. Quidem minus explicabo quia quis.'),
(156, 18, 'Voluptatem nostrum magni ut rerum et.', 862766.0000, 'Aut laboriosam qui alias debitis. Assumenda ab optio molestias unde nam ipsam. Nihil quasi quae tempora asperiores nulla dolore.'),
(157, 18, 'Porro tenetur possimus corrupti quam.', 172465.0000, 'Esse veniam impedit illum necessitatibus magni perferendis hic odit. Iure veniam accusamus ab dicta ad. Cumque et natus eos eos. Nihil et sed odit et est.'),
(158, 20, 'Nulla quis quae omnis dolorum saepe sit iste tempora.', 360197.0000, 'Optio voluptas qui corporis. Amet neque iste necessitatibus reprehenderit quo debitis saepe molestias. Soluta similique voluptatibus explicabo cumque.'),
(159, 19, 'Reprehenderit dolorem quam maiores.', 388743.0000, 'Consequatur perspiciatis inventore eaque dolore fuga. Possimus et placeat quaerat explicabo quaerat adipisci et.'),
(160, 19, 'Et vel eveniet in sed.', 774742.0000, 'A impedit voluptas similique dolore et et. Eligendi quaerat quia ea cupiditate alias esse ut. Vero dicta culpa est laborum ipsum. Voluptatem nihil voluptas est eligendi quo eveniet.'),
(161, 18, 'Facere ea ullam porro quos sint asperiores.', 675706.0000, 'Amet voluptatum et ut quam. Iure qui qui ut reiciendis eveniet. Porro corporis facilis libero modi quia dolorum. Tempore ut culpa sit consequuntur quaerat et.'),
(162, 20, 'In doloremque sed vero autem dolorem ullam voluptatem porro.', 575963.0000, 'Dolorem atque officiis eos consequatur saepe eum enim. Dolor placeat cumque natus sint ad numquam qui. Natus quia assumenda quis unde. Odio aut repudiandae numquam totam.'),
(163, 20, 'Voluptatum commodi et quaerat.', 320209.0000, 'Consequatur magni veritatis dolor atque. Autem ab porro harum voluptatem id similique ea. Distinctio veniam molestiae expedita. Impedit officia qui consequatur deserunt et repellat odio.'),
(164, 17, 'Et aut accusantium quasi tempora suscipit ut qui.', 949267.0000, 'Quas vel aliquid vero ut. Ratione autem est excepturi aut consequuntur. Autem aspernatur et dignissimos sed esse eveniet consequuntur. Ut inventore error est aspernatur in aut omnis.'),
(165, 20, 'Vel provident omnis nostrum iure.', 828593.0000, 'Qui necessitatibus qui enim dolor. Quae et est magni deserunt dolorem. Fuga omnis illo dolore fugiat aut ut amet. Ratione unde nam provident.'),
(166, 19, 'Expedita dolores officia quo accusantium similique.', 600795.0000, 'Eveniet sint tenetur officia corrupti ut praesentium. Quia esse autem ea sed temporibus ea. Rem voluptas quo dignissimos magni et tempora repellat. Repudiandae odio qui et aliquam.'),
(167, 19, 'Aut in animi rerum nam dolores ut.', 740135.0000, 'Est qui non voluptatem nobis. Voluptatem molestiae ad delectus unde dolores. Beatae enim non ut est et fugiat. Aut optio labore excepturi sequi velit.'),
(168, 19, 'Quos consequatur minus in eum soluta ea.', 988514.0000, 'Eum molestias nulla consequatur in ipsum vero. Quam recusandae recusandae eos. Dolores perferendis labore error animi ad consequatur dolor.'),
(169, 18, 'Tempore aut totam odio doloribus.', 710978.0000, 'Sed ad id et autem unde corporis. Aut quaerat est ut a quasi deleniti nulla. Nihil voluptatem quidem architecto qui et. Dolorem beatae est eum modi non explicabo repellendus sit.'),
(170, 18, 'Molestias dolore hic perferendis ipsam rerum.', 978473.0000, 'Vel tenetur qui est et totam nobis eius. Eos non vitae aut dolorem aut voluptas sequi quibusdam. Non exercitationem perspiciatis consequatur impedit mollitia reprehenderit.'),
(171, 19, 'Eos quaerat iste aut quo.', 643343.0000, 'Enim voluptatibus ipsum dolorum cum laborum qui. Aut voluptas omnis quis cumque deserunt. Iste fugiat velit id est quo architecto nam et.'),
(172, 18, 'Ab cupiditate cum ipsum inventore veniam.', 488450.0000, 'Explicabo et veritatis maiores. Architecto nisi et dolores qui nisi qui qui. Dolorem qui quis molestiae. Aut architecto minus voluptate et ipsum.'),
(173, 20, 'Accusantium totam fuga aliquid dicta sunt quod aut.', 669292.0000, 'Accusamus nam hic reiciendis temporibus beatae ullam. Nobis mollitia quidem assumenda eligendi rem quam laboriosam. Voluptas voluptatem consectetur quo.'),
(174, 17, 'Non aut sit corporis fugiat hic suscipit totam.', 508484.0000, 'Sit et rem fuga quia perspiciatis. Sit officia tempore dolore quod. Id quas voluptatem ipsa consequuntur temporibus ipsa. Quam impedit facilis suscipit quisquam voluptatem quasi.'),
(175, 20, 'Quia aperiam reprehenderit exercitationem cupiditate laboriosam.', 744593.0000, 'Aut in ut explicabo eum et voluptatem. Nihil et quia itaque eaque est. Cumque temporibus doloremque explicabo hic necessitatibus. Veritatis tempore vel qui dolores nulla quis.'),
(176, 17, 'A quia adipisci aut qui neque.', 230835.0000, 'Magnam necessitatibus sint dolorem sunt. Alias fuga voluptatem et culpa. Eligendi recusandae ut ea. Quas ut laborum eum qui.'),
(177, 20, 'Ea doloremque dignissimos vel reiciendis eius debitis ad.', 420274.0000, 'Eum omnis velit vitae ipsum temporibus. Aut repellat consequatur enim voluptate animi. Quidem veniam neque sit repellat amet. Rerum a voluptatem ut esse non nesciunt.'),
(178, 19, 'Reprehenderit et culpa iure iure sunt neque modi.', 147621.0000, 'Non nam occaecati omnis nobis. Atque sint voluptatem itaque asperiores voluptas. Incidunt fugit fugit magni et hic in.'),
(179, 17, 'Tempora assumenda libero tempore nesciunt.', 724780.0000, 'Laborum veritatis aut esse dolor enim sint fuga. Consectetur autem dolores odio sit odit eos non. Sint reiciendis adipisci enim sit consequatur quos provident.'),
(180, 19, 'Vel deleniti possimus voluptate facere.', 318743.0000, 'Doloribus nam corrupti molestiae eius. Quam tempora et sunt perspiciatis numquam. Beatae cumque et aut sit qui quia dolor.'),
(181, 19, 'Quaerat aspernatur odit sed aut quae magni maxime earum.', 281242.0000, 'Est sed sed aut sapiente eos quam ut. Repudiandae expedita voluptatem provident saepe. Sint ullam aliquam illum rem repellendus odit quis et.'),
(182, 20, 'Optio ratione excepturi mollitia.', 685735.0000, 'Quis omnis ut hic. Ut excepturi et sit inventore nostrum.'),
(183, 17, 'Repellat qui in et sapiente iusto.', 839439.0000, 'Reiciendis doloremque debitis velit velit debitis. Aut sint eius facilis voluptatem. Sequi et quia ex accusantium dolore rerum. Inventore voluptatum et modi.'),
(184, 18, 'Dolor repellendus vitae iste iste ducimus ut eum aut.', 756749.0000, 'Voluptatem voluptatibus in in fugit reiciendis. Dolor natus quia et eum magnam. Mollitia molestiae optio possimus accusamus dolorem vel illum.'),
(185, 20, 'Nihil nostrum ut error quas voluptatum.', 248698.0000, 'Perferendis commodi fugit necessitatibus nihil. Laudantium deleniti dolor ea aut quam est. Eum hic non deserunt tempora.'),
(186, 17, 'Officia vero et rem.', 186797.0000, 'Necessitatibus hic ut voluptate qui perferendis perspiciatis quod. Odio facere aut dolorem enim. Ex in nulla itaque voluptas eveniet quo eum.'),
(187, 19, 'Voluptatibus similique delectus non fugiat magnam.', 562558.0000, 'Velit voluptas esse est cupiditate natus. Minus in reprehenderit explicabo voluptatibus autem illum. Consequatur facilis ut esse dolorem accusantium iusto nisi magni.'),
(188, 19, 'Quaerat et voluptatum eum eveniet tenetur neque saepe nihil.', 489896.0000, 'Debitis sed ut et velit. Non harum ipsam provident natus. Quos ut velit quo omnis a excepturi. Modi perferendis amet asperiores sit magni sed numquam.'),
(189, 19, 'Recusandae laudantium quo sit aut illo.', 255860.0000, 'Earum consequatur et eligendi reiciendis. Sit cum et temporibus aut vero. Ad nisi eos necessitatibus blanditiis porro libero necessitatibus impedit. Esse et dolorem omnis amet.'),
(190, 17, 'Accusamus adipisci eius repellat.', 341410.0000, 'Et qui tenetur qui voluptate est. Quasi saepe quia quasi mollitia eveniet voluptate aut. Assumenda quo nemo impedit architecto dicta. Tempore exercitationem est a accusamus fuga quidem voluptatem.'),
(191, 18, 'Repudiandae incidunt omnis et quas qui quidem.', 566774.0000, 'Quos laudantium soluta consequuntur corrupti odit. Laudantium adipisci adipisci ad distinctio qui. Facilis beatae velit possimus tempore.'),
(192, 19, 'Voluptatum iure veniam enim quo.', 173192.0000, 'Iste qui minima voluptas repellendus vel. Facilis maiores nostrum ex illum sapiente. Cupiditate sed eum molestiae labore voluptates aperiam nemo. Mollitia occaecati qui laudantium fugiat.'),
(193, 17, 'Laborum ipsum occaecati voluptas ut magni magnam.', 250752.0000, 'Optio quo qui illum qui ut. Repellendus consequatur ut perferendis vel quae at illum. Cupiditate voluptatem accusantium optio reprehenderit est quo. Aut maiores dolorum quibusdam aut id.'),
(194, 20, 'Molestiae minima cumque odit beatae enim.', 891814.0000, 'Non laudantium voluptas blanditiis quia. Earum vel unde itaque facere expedita odio. Doloremque libero quia tempora quisquam dicta. Velit sed id natus iure quo accusamus iste.'),
(195, 17, 'Optio sint officia corporis dolores odio.', 559854.0000, 'Consequuntur enim qui accusamus qui porro. Vel explicabo sed dolor. Ea laudantium et error consectetur.'),
(196, 20, 'Dolorem dolorem quia illum placeat tempora nam possimus quasi.', 753586.0000, 'Voluptatibus enim suscipit sequi quis aliquam iusto ex blanditiis. Quia et corporis aut at voluptate. Molestias repellendus modi esse repudiandae. Ratione ut et fuga quo sit dolorum vitae.'),
(197, 17, 'Hic dolor eos similique amet quod reprehenderit qui et.', 151180.0000, 'Et sunt autem distinctio necessitatibus explicabo temporibus. Deserunt dolore sunt sint illo. Natus architecto harum a sed facilis. Dolorem ipsam id eos quae corporis.'),
(198, 20, 'Officiis et suscipit maxime et harum iure est.', 767052.0000, 'Beatae cupiditate totam nihil. Doloremque totam ut necessitatibus ab est. Sint sequi praesentium aut iure quod facilis sint odio. Repudiandae quibusdam sed consequatur labore.'),
(199, 18, 'Aut non a neque quo.', 182107.0000, 'Harum autem quis cupiditate qui. Doloremque blanditiis itaque praesentium qui sapiente unde. Architecto aut rerum nihil et sint omnis accusamus. Voluptatem consequatur ipsum aliquid pariatur.'),
(200, 20, 'Enim aspernatur illo voluptatum veniam rerum voluptas.', 618832.0000, 'Quae pariatur maiores necessitatibus aut sunt ipsum eveniet. Dolor veniam libero tempora accusantium eligendi. Dolorem perspiciatis ipsum animi debitis et qui.'),
(201, 20, 'Impedit corrupti voluptatem aspernatur sequi.', 224662.0000, 'Itaque incidunt veritatis unde. Qui labore reiciendis in quo aut ut. Placeat sed minus voluptatem ipsam quidem quam.');

-- --------------------------------------------------------

--
-- Structure de la table `reset_password_request`
--

CREATE TABLE `reset_password_request` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `selector` varchar(20) NOT NULL,
  `hashed_token` varchar(100) NOT NULL,
  `requested_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `expires_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(180) NOT NULL,
  `roles` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '(DC2Type:json)' CHECK (json_valid(`roles`)),
  `password` varchar(255) NOT NULL,
  `is_verified` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `email`, `roles`, `password`, `is_verified`) VALUES
(209, 'test0@free.fr', '[\"ROLE_USER\"]', '$2y$13$NFscv/pPeFe.x6kmMxhdGe5MrDPT9UiKScTQdqHBIXe2B8s6Yb2We', 1),
(210, 'test1@free.fr', '[\"ROLE_USER\"]', '$2y$13$FUY0pSfR4hq96YJL6pm0zOmRx//97.rEtAQ6E.iKm.qaQouNW8yAe', 1);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_75EA56E0FB7336F0` (`queue_name`),
  ADD KEY `IDX_75EA56E0E3BD61CE` (`available_at`),
  ADD KEY `IDX_75EA56E016BA31DB` (`delivered_at`);

--
-- Index pour la table `pictures`
--
ALTER TABLE `pictures`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_8F7C2FC0549213EC` (`property_id`);

--
-- Index pour la table `property`
--
ALTER TABLE `property`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_8BF21CDE12469DE2` (`category_id`);

--
-- Index pour la table `reset_password_request`
--
ALTER TABLE `reset_password_request`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_7CE748AA76ED395` (`user_id`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT pour la table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `pictures`
--
ALTER TABLE `pictures`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `property`
--
ALTER TABLE `property`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=202;

--
-- AUTO_INCREMENT pour la table `reset_password_request`
--
ALTER TABLE `reset_password_request`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=211;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `pictures`
--
ALTER TABLE `pictures`
  ADD CONSTRAINT `FK_8F7C2FC0549213EC` FOREIGN KEY (`property_id`) REFERENCES `property` (`id`);

--
-- Contraintes pour la table `property`
--
ALTER TABLE `property`
  ADD CONSTRAINT `FK_8BF21CDE12469DE2` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`);

--
-- Contraintes pour la table `reset_password_request`
--
ALTER TABLE `reset_password_request`
  ADD CONSTRAINT `FK_7CE748AA76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
