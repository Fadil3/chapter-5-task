-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 23, 2020 at 01:02 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `buku_ostric`
--

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE `buku` (
  `id` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `penulis` varchar(45) NOT NULL,
  `genre` varchar(45) NOT NULL,
  `deskripsi` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `status` int(1) NOT NULL,
  `pinjam` date NOT NULL,
  `kembali` date NOT NULL,
  `denda` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`id`, `judul`, `penulis`, `genre`, `deskripsi`, `image`, `status`, `pinjam`, `kembali`, `denda`) VALUES
(1, 'The Things You Can See Only When You Slow Down', 'Haemin Sunim', 'Self Improvement', '\"Is it the world that\'s busy, or is it my mind?\"\r\n\r\nThe world moves fast, but that doesn\'t mean we have to. In this best-selling mindfulness guide - it has sold more than three million copies in Korea, where it was a number-one best-seller for 41 weeks and received multiple best book of the year awards - Haemin Sunim (which means \"spontaneous wisdom\"), a renowned Buddhist meditation teacher born in Korea and educated in the United States, illuminates a path to inner peace and balance amid the overwhelming demands of everyday life.\r\n\r\nBy offering guideposts to well-being and happiness in eight areas - including relationships, love, and spirituality - Haemin Sunim emphasizes the importance of forging a deeper connection with others and being compassionate and forgiving toward ourselves.', 'picture/1.jpg', 1, '0000-00-00', '0000-00-00', 0),
(2, '\r\nLove for Imperfect Things', 'Haemin Sunim', 'Self Improvement', 'No one is perfect. But that doesn\'t stop us from imagining ourselves smarter, funnier, richer, or thinner, and how much happier we would then be.\r\n\r\nLove for Imperfect Things, by the bestselling Korean monk, Haemin Sunim, shows how the path to happiness and peace of mind includes not only strong relationships with others, but also letting go of worries about ourselves. Packed with his typical spiritual wisdom, Sunim teaches us to embrace our flaws rather than trying to overcome them, and demonstrates that love has very little to do with perfection.\r\n\r\nWith chapters on self-compassion, relationships, empathy, courage, family, healing, our true nature, and acceptance, as well as beautiful full-colour illustrations, Love for Imperfect Things is a much-needed guide for learning to love ourselves - imperfections and all.', 'picture/2.jpg', 1, '0000-00-00', '0000-00-00', 0),
(3, 'Kece Tanpa Kere', 'Tim PermataBank', 'Self Improvement', 'Bukankah hidup memang hanya sekali, jadi harus dimanfaatkan dengan baik?\r\nBuku ini membagikan makna You Only Live Once (YOLO) yang sesungguhnya sehingga kita lebih bijak dalam memahami uang. Dilengkapi dengan tips dan strategi #SayangUangnya, buku ini akan membawa dan tetap menikmati hidup.\r\n', 'picture/3.jpg', 1, '0000-00-00', '0000-00-00', 0),
(4, 'Life of Pi', 'Yann Martel', 'Fiction', 'Life of Pi is a fantasy adventure novel by Yann Martel published in 2001. The protagonist, Piscine Molitor \"Pi\" Patel, a Tamil boy from Pondicherry, explores issues of spirituality and practicality from an early age. He survives 227 days after a shipwreck while stranded on a boat in the Pacific Ocean with a Bengal tiger named Richard Parker.', 'picture/4.jpg', 1, '0000-00-00', '0000-00-00', 0),
(5, 'Thinking, Fast and Slow', 'Daniel Kahneman', 'Nonfiction', 'In the highly anticipated Thinking, Fast and Slow, Kahneman takes us on a groundbreaking tour of the mind and explains the two systems that drive the way we think. System 1 is fast, intuitive, and emotional; System 2 is slower, more deliberative, and more logical. Kahneman exposes the extraordinary capabilities—and also the faults and biases—of fast thinking, and reveals the pervasive influence of intuitive impressions on our thoughts and behavior. The impact of loss aversion and overconfidence on corporate strategies, the difficulties of predicting what will make us happy in the future, the challenges of properly framing risks at work and at home, the profound effect of cognitive biases on everything from playing the stock market to planning the next vacation—each of these can be understood only by knowing how the two systems work together to shape our judgments and decisions.\r\n\r\nEngaging the reader in a lively conversation about how we think, Kahneman reveals where we can and cannot trust our intuitions and how we can tap into the benefits of slow thinking. He offers practical and enlightening insights into how choices are made in both our business and our personal lives—and how we can use different techniques to guard against the mental glitches that often get us into trouble. Thinking, Fast and Slow will transform the way you think about thinking.', 'picture/5.jpg', 1, '0000-00-00', '0000-00-00', 0),
(6, 'How to Win Friends and Influence People', 'Dale Carnegie', 'Nonfiction', 'You can go after the job you want...and get it! You can take the job you have...and improve it! You can take any situation you\'re in...and make it work for you!\r\n\r\nSince its release in 1936, How to Win Friends and Influence People has sold more than 15 million copies. Dale Carnegie\'s first book is a timeless bestseller, packed with rock-solid advice that has carried thousands of now famous people up the ladder of success in their business and personal lives.\r\n\r\nAs relevant as ever before, Dale Carnegie\'s principles endure, and will help you achieve your maximum potential in the complex and competitive modern age.\r\n\r\nLearn the six ways to make people like you, the twelve ways to win people to your way of thinking, and the nine ways to change people without arousing resentment.', 'picture/6.jpg', 1, '0000-00-00', '0000-00-00', 0),
(7, 'The Power of Habit: Why We Do What We Do in Life and Business', 'Charles Duhigg', 'Nonfiction', 'A young woman walks into a laboratory. Over the past two years, she has transformed almost every aspect of her life. She has quit smoking, run a marathon, and been promoted at work. The patterns inside her brain, neurologists discover, have fundamentally changed.\r\n\r\nMarketers at Procter & Gamble study videos of people making their beds. They are desperately trying to figure out how to sell a new product called Febreze, on track to be one of the biggest flops in company history. Suddenly, one of them detects a nearly imperceptible pattern—and with a slight shift in advertising, Febreze goes on to earn a billion dollars a year.\r\n\r\nAn untested CEO takes over one of the largest companies in America. His first order of business is attacking a single pattern among his employees—how they approach worker safety—and soon the firm, Alcoa, becomes the top performer in the Dow Jones.\r\n\r\nWhat do all these people have in common? They achieved success by focusing on the patterns that shape every aspect of our lives.\r\n\r\nThey succeeded by transforming habits.\r\n\r\nIn The Power of Habit, award-winning New York Times business reporter Charles Duhigg takes us to the thrilling edge of scientific discoveries that explain why habits exist and how they can be changed. With penetrating intelligence and an ability to distill vast amounts of information into engrossing narratives, Duhigg brings to life a whole new understanding of human nature and its potential for transformation.', 'picture/7.jpg', 1, '0000-00-00', '0000-00-00', 0),
(8, 'Traffic: Why We Drive the Way We Do and What It Says About Us', 'Tom Vanderbilt', 'Nonfiction', 'Would you be surprised that road rage can be good for society? Or that most crashes happen on sunny, dry days? That our minds can trick us into thinking the next lane is moving faster? Or that you can gauge a nation s driving behavior by its levels of corruption? These are only a few of the remarkable dynamics that Tom Vanderbilt explores in this fascinating tour through the mysteries of the road.\r\nBased on exhaustive research and interviews with driving experts and traffic officials around the globe, Traffic gets under the hood of the everyday activity of driving to uncover the surprisingly complex web of physical, psychological, and technical factors that explain how traffic works, why we drive the way we do, and what our driving says about us. Vanderbilt examines the perceptual limits and cognitive underpinnings that make us worse drivers than we think we are. He demonstrates why plans to protect pedestrians from cars often lead to more accidents. He shows how roundabouts, which can feel dangerous and chaotic, actually make roads safer and reduce traffic in the bargain. He uncovers who is more likely to honk at whom, and why. He explains why traffic jams form, outlines the unintended consequences of our quest for safety, and even identifies the most common mistake drivers make in parking lots.', 'picture/8.jpg', 1, '0000-00-00', '0000-00-00', 0),
(9, 'Guns, Germs, and Steel: The Fates of Human Societies', 'Jared Diamond', 'History', '\"Diamond has written a book of remarkable scope ... one of the most important and readable works on the human past published in recent years.\"\r\n\r\nWinner of the Pulitzer Prize and a national bestseller: the global account of the rise of civilization that is also a stunning refutation of ideas of human development based on race.\r\n\r\nIn this \"artful, informative, and delightful\" (William H. McNeill, New York Review of Books) book, Jared Diamond convincingly argues that geographical and environmental factors shaped the modern world. Societies that had a head start in food production advanced beyond the hunter-gatherer stage, and then developed writing, technology, government, and organized religion—as well as nasty germs and potent weapons of war—and adventured on sea and land to conquer and decimate preliterate cultures. A major advance in our understanding of human societies, Guns, Germs, and Steel chronicles the way that the modern world came to be and stunningly dismantles racially based theories of human history.', 'picture/9.jpg', 1, '0000-00-00', '0000-00-00', 0),
(10, 'Sapiens: A Brief History of Humankind', 'Yuval Noah Harari', 'Nonfiction', '100,000 years ago, at least six human species inhabited the earth. Today there is just one. Us. Homo sapiens.\r\n\r\nHow did our species succeed in the battle for dominance? Why did our foraging ancestors come together to create cities and kingdoms? How did we come to believe in gods, nations and human rights; to trust money, books and laws; and to be enslaved by bureaucracy, timetables and consumerism? And what will our world be like in the millennia to come?\r\n\r\nIn Sapiens, Dr Yuval Noah Harari spans the whole of human history, from the very first humans to walk the earth to the radical – and sometimes devastating – breakthroughs of the Cognitive, Agricultural and Scientific Revolutions. Drawing on insights from biology, anthropology, paleontology and economics, he explores how the currents of history have shaped our human societies, the animals and plants around us, and even our personalities. Have we become happier as history has unfolded? Can we ever free our behaviour from the heritage of our ancestors? And what, if anything, can we do to influence the course of the centuries to come?\r\n\r\nBold, wide-ranging and provocative, Sapiens challenges everything we thought we knew about being human: our thoughts, our actions, our power ... and our future. ', 'picture/10.jpg', 1, '0000-00-00', '0000-00-00', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `buku`
--
ALTER TABLE `buku`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
