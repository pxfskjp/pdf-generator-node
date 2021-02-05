CREATE DATABASE IF NOT EXISTS `dbnews` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `dbnews`;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_posts`
--

CREATE TABLE `tbl_posts` (
  `id` int(11) NOT NULL,
  `title` varchar(500) NOT NULL,
  `detail` text NOT NULL,
  `publish_date` datetime NOT NULL,
  `author_name` varchar(200) NOT NULL,
  `link` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_posts`
--

INSERT INTO `tbl_posts` (`id`, `title`, `detail`, `publish_date`, `author_name`, `link`) VALUES
(1, 'Raspberry Pi scores UK\'s top engineering award', 'The team behind the device was awarded the Royal Academy of Engineering\'s MacRobert Prize at a ceremony in London last night.\r\n\r\nThe tiny computer launched in 2012. Its designers hoped to introduce children to coding and had modest ambitions.\r\n\r\nThey beat two other finalists, cyber-security company Darktrace and radiotherapy pioneers Vision RT, to win the prize.\r\n\r\nPrevious winners of the innovation award, which has been run since 1969, include the creators of the CT (computerised tomography) scanner; the designers of the Severn Bridge; and the team at Microsoft in Cambridge that developed the Kinect motion sensor.\r\nExceeded expectations\r\n\r\nA tiny cheap computer that might encourage youngsters to learn programming was the idea of a small team of scientists and Cambridge University academics.\r\n\r\nThey hoped to sell a few thousand units, but sales have now passed 14 million, and the Pi is widely used in factories as well as in classrooms and homes.\r\n\r\nOne of the MacRobert award judges, Dr Frances Saunders, said a small engineering team had redefined home computing.', '2017-07-02 00:00:00', 'BBC News', 'http://www.bbc.com/news/technology-40444356'),
(2, 'Future Energy: China leads world in solar power production', 'Ten years ago, Geof Moser had just graduated with a master\'s degree in solar energy from Arizona State University - but he didn\'t feel much opportunity lay at his feet in his home country.\r\n\r\nSo he headed for China.\r\n\r\n\"The solar industry was fairly small and there weren\'t a lot of jobs,\" he remembers. \"Just a few for installation.\" But the Chinese government had big ambitions to expand solar and Moser saw his chance.\r\n\r\nHe spent some years accumulating knowledge about the Chinese solar industry, before co-founding Symtech Solar, which designs solar panel systems using Chinese parts.\r\nMarket access\r\n\r\nThe idea is to make it easy for organisations outside China to access components without the hassle of having to source and assemble lots of different parts. ', '2017-07-02 00:00:00', 'BBC News', 'http://www.bbc.com/news/business-40341833'),
(3, 'Securing Your Linux System Bit by Bit', 'As daunting as securing your Linux system might seem, one thing to remember is that every extra step makes a difference. It\'s almost always better to make a modest stride than let uncertainty keep you from starting. Fortunately, there are a few basic techniques that greatly benefit users at all levels, and knowing how to securely wipe your hard drive in Linux is one of them.', '2017-07-02 00:00:00', 'Tech World', 'http://www.technewsworld.com/story/Securing-Your-Linux-System-Bit-by-Bit-84607.html');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_posts`
--
ALTER TABLE `tbl_posts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_posts`
--
ALTER TABLE `tbl_posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;COMMIT;
