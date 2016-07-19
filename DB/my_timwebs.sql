-- phpMyAdmin SQL Dump
-- version 4.1.7
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 19, 2016 at 01:25 PM
-- Server version: 5.6.29-log
-- PHP Version: 5.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `my_timwebs`
--

-- --------------------------------------------------------

--
-- Table structure for table `Devices`
--

CREATE TABLE IF NOT EXISTS `Devices` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `price` int(11) NOT NULL,
  `weight` int(11) NOT NULL,
  `dimensions` text NOT NULL,
  `display` text NOT NULL,
  `other` text NOT NULL,
  `discount` int(11) NOT NULL DEFAULT '0',
  `type` text NOT NULL,
  `images` int(11) NOT NULL DEFAULT '1',
  `next` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ID` (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `Devices`
--

INSERT INTO `Devices` (`id`, `name`, `price`, `weight`, `dimensions`, `display`, `other`, `discount`, `type`, `images`, `next`) VALUES
(1, 'iPhone 6S', 889, 143, '138.3 x 67.1 x 7.1 mm', '4.7 inches', 'Chip: A9 64bit\r\nCapacity: 64 GB\r\nFace Time Camera: 5megapixel, 720p hd video recording\r\niSight Camera: 12 megapixel, autofocus, true tone flash\r\nBattery: talk time 14 hours, internet time 10 hours''', 0, 'smartphone', 4, 3),
(3, 'samsung galaxy s7', 579, 154, '70 x 8 x 142 mm', '5.1 inch 2560 x 1440', 'Capacity: 32GB\nRAM: 4GB\nCamera: 12 megapixel\nBattery: 3000 mAh\nCPU: Exynox 8891, 2.3 GHz, 4 Core\nOS: Android 6.0 marshmallow', 50, 'smartphone', 3, 5),
(4, 'Gigaset', 35, 450, '178 x 196 x 61 mm', '2 Lines 14 Characters', 'Brand: Gigabit\r\nModel name: DA610\r\nYear: 2012\r\nAddress book: 50 voices\r\nBattery not included', 0, 'landline', 1, 8),
(5, 'LG G5', 480, 159, '7,4 x 0,7 x 14,9 cm', 'Touchscreen IPS Quantum; Funzione Always-on; 16M colori, 554 PPI, 800NIT, Corning® Gorilla® Glass 4', 'Corpo in metallo con batteria estraibile, espandibile con i moduli fotocamera e Hi-Fi per migliorare il comfort durante gli scatti e per migliorare l''audio, Doppia fotocamera posteriore: 16 Megapixel con apertura F1.8, Stabilizzatore ottico e Laser Autofocus + 8 Megapixel grandangolare (135°) con apertura F2.4, Fotocamera frontale 8 Megapixel con apertura F2.0, Sensore delle impronte digitali', 100, 'smartphone', 2, 6),
(6, 'asus zenphone 2', 250, 168, '7,7 x 15,2 x 1,1 cm', '5.5" IPS Full HD 1920X1080, Corning Gorilla Glass 3', 'Schermo 5.5" IPS Full HD 1920X1080, RAM: 4 GB\r\nProcessore Intel Atom Z3580 Quad-Core con velocità 2.3 GHz\r\nSistema operativo: Android 5.0 Lollipop con nuova ZenUI\r\nFotocamera posteriore da 13 MP f/2.0 doppio flash led Real Tone / Tecnologia PixelMaster. Fotocamera frontale 5 MP\r\nTecnologia BoostMaster: ricarica il 60% della batteria in 39 minuti', 0, 'smartphone', 2, 1),
(8, '746 Phone', 39, 450, '11 x 8 x 6 inches', '5.0 inches', '*A striking replica of the classic 746 type telephone\r\n*Buttons replace the dial for modern convenience\r\n*Original style mechanical bell ringer\r\n*Plugs into a standard socket\r\n*Brand new', 10, 'landline', 1, 4),
(7, 'iPad 2', 599, 437, '240x169.5x6.1 mm', '2048-by-1536-pixel resolution at 264 ppi', 'Apple iOS 8, 10-Inch Retina Display, 2048x1536 Resolution\r\n    A8X Chip with 64-bit Architecture, M8 Motion Coprocessor\r\n    Wi-Fi (802.11a/b/g/n/ac): 16 GB, Capacity: 2 GB RAM\r\n    8 MP iSight Camera, FaceTime HD Camera\r\n    Up to 10 Hours of Battery Life\r\n    Apple iOS 8, 10-Inch Retina Display, 2048x1536 Resolution\r\n    A8X Chip with 64-bit Architecture, M8 Motion Coprocessor\r\n\r\n    Wi-Fi (802.11a/b/g/n/ac): 16 GB, Capacity: 2 GB RAM\r\n    8 MP iSight Camera, FaceTime HD Camera\r\n    Up to 10 Hours of Battery Life', 50, 'tablet', 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `slservices`
--

CREATE TABLE IF NOT EXISTS `slservices` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `basicInfo` text NOT NULL,
  `introLinkIMG` text NOT NULL,
  `type` text NOT NULL,
  `linkIMG1` text NOT NULL,
  `linkIMG2` text NOT NULL,
  `linkIMG3` text NOT NULL,
  `linkIMG4` text NOT NULL,
  `generalText` text NOT NULL,
  `activationRules` text NOT NULL,
  `promotion` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=32 ;

--
-- Dumping data for table `slservices`
--

INSERT INTO `slservices` (`ID`, `name`, `basicInfo`, `introLinkIMG`, `type`, `linkIMG1`, `linkIMG2`, `linkIMG3`, `linkIMG4`, `generalText`, `activationRules`, `promotion`) VALUES
(1, 'TV - Unlimited Fun', 'Discover the grat cinema, the most exciting series, the most loved cartoon caracters, sports and more on TV, PC, tablet and Smartphone', '/img/SL-TV-in.png', 'tvEntertainment', '/img/SL-TV-1.png', '/img/SL-TV-2.png', '/img/SL-TV-3.png', '/img/SL-TV-4.png', 'Discover the grat cinema, the most exciting series, the most loved cartoon caracters, sports and more on TV, PC, tablet and Smartphone.\nCartoons, movies, TV series, documentaries and concerts always on demand to create your own schedule without advertising. More than 8000 titles on a subscription, with no time constraints, even in HD on TV with dedicated decoder, Smart TV, PC, Smartphone and Tablet', 'Subscribe in TIMvision to enjoy a great show. You can see more than 8000 titles, including cartoons, movies, TV series, documentaries and the last seven days of LA7 and LA7d. If you subscribe before 30/07/2016, the first month is free and then 5/month.', 'PROMOTION'),
(2, 'TIMmusic, the Soundtrack of your life!', 'Listen Millions of songs in streaming, all new recordings, exclusive previews and many playlist of all kinds.\r\n                        On smartphone, without consuming GB, PC and tablet. When you want and how much you want!', '/img/SL-M-in.png', 'tvEntertainment', '/img/SL-music-1.png', '/img/SL-music-2.png', '/img/SL-music-3.png', '/img/SL-msuic-4.png', 'Enter into a world of music with the app TIMmusic. Millions of songs in streaming, all the latest realises and many playlist to listen anywhere, anytime, without consuming GB!\r\n\r\nChoose you favorite song from the TOP 20 of the week!\r\n\r\nListen your Radio anytime you want!', 'Subscribe in TIMmusic to enjoy the greatest songs.You can see more than 8000 songs, including the top 20 of the week. If you subscribe before 30/07/2016, the first month is free and then  5/month', ''),
(3, 'TIMreading, Read what you want... When you want!', 'Always carry on Smartphone and tablet your favourite e-books. Follow all your passions choosing among the most beloved megazines and puff your day from early in the morning.\r\n                        On TIMreading you find what you love to read, anywhere, anytime!', '/img/SL-R-in.png', 'tvEntertainment', '/img/SL-reading-1.png', '/img/SL-reading-2.png', '/img/SL-reading-3.png', '/img/SL-reading-4.png', 'Always carry on your Smartphone and tablet your favourite eBook, follow all your passions choosing among the most beloved magazine and look in your newspaper from the early hours of the morning. On TIMreading you find what you love to read, anywhere, anytime\r\n\r\n', 'subscribe in TIMreading to enjoy the greatest books. You can see more than 8000 books, newspaper and magazines. if you subscribe before the 30/07/2016 the first month is free and then  5/ month.', ''),
(4, 'TIMgames, get in the game! a new challenge awaits!', 'Shooter, extreme sports, the best classics, and much more.\r\nWith TIMgames you have hundreds of games for you smartphone and tablet, to have fun anywhere, anytime!', '/img/SL-G-in.png', 'tvEntertainment', '/img/SL-games-1.png', '/img/SL-games-2.png', '/img/SL-games-3.png', '/img/SL-games-4.png', 'Shooter, extreme sport, the best classes and much more ... \r\nWith TIMgames you have hundreds of games for your smartphone and tablets, to have fun anywhere, anytime', 'With I Love Games Promo you can download all the games you want form the app TIMgames, or by accessing the website www.timgames.it\r\n\r\nFor the first month subscription service will be at half price, the cost of 1 per week, then switches automatically to 2 per week.\r\nIn addition, data traffic to download games is included in your subscription!', ''),
(5, 'Serie A TIM', 'Live the best Serie A TIM and the best moments of the 2015/2016 championship with all the news, videos-goal, and much more!\r\nDownload the app and experience the magic of Football!', '/img/SL-A-in.png', 'tvEntertainment', '/img/SL-foot-1.png', '/img/SL-foot-2.png', '/img/SL-foot-3.png', '/img/SL-foot-4.png', 'Serie A TIM - Football belong to the ones who love him\r\n\r\nlive the best of the Serie A TIM and the best moments of the 12105/2016 Championship with all the news, videos-goal, the summaries on your Smartphone or Tablet and without consuming GB. The only official app of the Serie A TIM. Download the app and experience the magic of football', 'You can take advantage of the Annual Pack promotion and you''ll have the chance to follow the whole end of the 2015-16 championship, the transfer market and news from the withdrawals, and all of the Serie A TIM 2016-2017 until 06/30/2017 with only  9/month', ''),
(6, 'Samsung Galaxy Gear S with SIM', 'An elegant curved Super AMOLED display for optimal fir, customisable screens and interchangeable strops to better express your own style', '/img/SL-HF-1.png', 'healtFitness', '/img/SL-sam-1.png', '/img/SL-sam-2.png', '/img/SL-sam-3.png', '/img/SL-sam-4.png', 'Samsung Gear S features a sleek curved Super AMOLED display for optimal fit and customizable screens and interchangeable straps to better express their own style. In addition, the simple and intuitive interface allows instant access to the information and notifications of interest.', '', 'PROMOTION'),
(7, 'Polar Loop H7 HR', 'In conjunction with polar Heart Rate Sensors For those who want to measure their business 24 hours at 24 and be driven to achieve daily goals', '/img/SL-HF-2.png', 'healtFitness', '/img/SL-belt-1.png', '/img/SL-belt-2.png', '/img/SL-belt-2.png', '/img/SL-belt-2.png', 'Years of research have led Polar to create a method that customizes an individual daily activity goal - based on more than just steps. The Activity Goal on the Polar Loop is customized to your personal details and choice of activity level, and it fills up during the day based on the amount and intensity of your activity. ', '', ''),
(8, 'Polar HR', 'used with a mobile application for sport or with a compatible polar training computer,the sensor displays in an extremely precise real-time heart rate during training', '/img/SL-HF-3.png', 'healtFitness', '/img/SL-be-1.png', '/img/SL-be-2.png', '/img/SL-be-3.png', '/img/SL-be-2.png', 'A comfortable heart rate sensor strap which you connect via bluetooth to your fitness app or training device. Monitor your real-time, accurate heart rate while you train, review and analyze it during or after workouts. You can use your Polar H7 strap with a number of Polar products as well as other compatible gym equipment.', '', ''),
(9, 'iHealth HS5', 'Record the calories and daily activities, plan weight goals. Organise files, graphics, the historian of the readings and display trends', '/img/SL-HF-4.png', 'healtFitness', '/img/SL-bal-1.png', '/img/SL-bal-2.png', '/img/SL-bal-3.png', '/img/SL-bal-4.png', 'The iHealth HS5 body analysis scale measures weight and BMI, but also calculates body fat indices, lean body mass, muscle mass, bone mass, water mass and your visceral fat ratingIt is useful to regularly monitor your weight and body composition to stay healthy. This allows you to track your weight and to avoid significant weight gain or loss that are often sources of complications. It also helps you to measure the effects of a balanced diet and of regular physical activity.', '', ''),
(10, 'Samsung Galaxy Gear Fit', 'Always keeps track of the activities during the day and is always ready to accompany you with its innovative designs, comfortable, lightweight and resistant to water and dust', '/img/SL-HF-5.png', 'healtFitness', '/img/SL-ge-1.png', '/img/SL-ge-2.png', '/img/SL-ge-3.png', '/img/SL-ge-4.png', 'Samsung Gear Fit offers you a variety of colors, backgrounds and types of watch that you can choose according to your preferences. So you can customize your look every day.\nThe innovative curved screen Super AMOLED touch screen and interchangeable straps Samsung Gear Fit make you cool and fashionable even when you train', '', 'PROMOTION'),
(11, 'TIM Tag', 'TIM Tag, is the device that tells you about your dog position and the things you care about most. In real-time you can follow his movements on your smartphone without ever losing sight.', '/img/SL-Family-Tag-in.png', 'homeFamily', '/img/SL-tag-1.png', '/img/SL-tag-2.png', '/img/SL-tag-3.png', '/img/SL-tag-4.png', '', '1 - Shop online and receive direct to your pack the house or go into one of the TIM stores.\n2 - Record TIM Card, which you can find in the pack on a TIM store (the TIMTag offer will be activated automatically after registration).\n3 - Install the app on your smartphone and associates the tracking device (Android and iOS).', ''),
(12, 'Sony Smartband FE', 'An innovative wrist band that can automatically record your physical, social activities and entertainment', '/img/SL-HF-6.png', 'healtFitness', '/img/SL-bal-1.png', '/img/SL-bal-2.png', '/img/SL-bal-2.png', '/img/SL-bal-2.png', '', '', ''),
(13, 'TIM Home Connect', 'The ideal solution to manage all home automation systems in your home, from simple domestic boiler, to the home protection systems, with the most advanced monitoring systems', '/img/SL-Family-COn-in.png', 'homeFamily', '/img/SL-h-1.png', '/img/SL-h-2.png', '/img/SL-h-3.png', '/img/SL-h-2.png', 'TIM Home Connect the offer is meant to be used in home automation devices in the home, the management of which involves the use of a SIM\n\nConnect with Tim Home for you have available minutes, SMS and MB to be used to connect and manage your burglar alarm, your boiler or other home automation systems.', 'If you are already in possession of a TIM Card directly online by clicking the ACTIVE button\nShops at TIM', ''),
(14, 'D-Link Smart Home', 'D-Link Smart Home Kit offers you a chance to set up, control, monitor and automate your home wherever you are', '/img/SL-Family-Link-in.png', 'homeFamily', '/img/SL-d-1.png', '/img/SL-d-2.png', '/img/SL-d-2.png', '/img/SL-d-2.png', 'With the Smart Home HD Starter Kit will be able to set up, control, monitor and automate your home wherever you are.\nThe kit includes:\n\nAn HD Monitor (DCS-935L)\nA Wi-Fi Motion Sensor (DCH-S150)\nA smart plug (DSP-W215)\nVia the mydlink Home app for smartphones and tablets all you have control of all the devices in order to simplify the management of the house, making it safer and smarter.', 'Do you want to monitor your home by the sea or in the mountains when you''re gone? You want to always have an eye on your car when it''s in the garage?\nYour boat or your camper in the months when you use them?\nEven if you do not have an ADSL connection in these places you can use D-Link Smart Home Starter Kit with a 3G mobile connection or 4G Wi-Fi.\n\nAnd if you buy the 20 GB option you SUPERGIGA have the data connection and a 4G modem at only 69 €.', ''),
(15, 'Payments', 'Choose payment cards of Intesa Sanpaolo, UBI or Mediolanum: to pay is simple and convenient!', '/img/SL-People-pay-in.png', 'people', '/img/SL-pay1.png', '/img/SL-pay-2.png', '/img/SL-pay-3.png', '/img/SL-pay-4.png', 'The details of your credit card or debit card are stored confidentially and protected on TIMcard\nJust a touch to select the card with which to make your purchases\nLeave your wallet at home and use the smartphone to have on hand your cards', '', ''),
(16, 'Transport', 'Buy transport Tickets of your city, through the SMS ticketing service', '/img/SL-People-tra-in.png', 'people', '/img/SL-tra-1.png', '/img/SL-tra-2.png', '/img/SL-tra-3.png', '/img/SL-tra-4.png', 'Showcase enters the service and find out if the service is already active in your city\nSelect the type of ticket and buy it directly with your phone credit\nAre now the ticket is valid in the transport section of your TIM Wallet', 'Open TIM Wallet and get access to Showcase Services.\nIf the city you''re interested in is enabled, click and buy the ticket.\nPay with your phone bill (if you are a customer Rechargeable) or by charge on the bill (if you are a customer with a subscription).\nWarning: you will be charged the cost of the ticket plus the cost of the SMS request (€ 19.90 cents including VAT).\nReceive a text message, the ticket is valid from that moment without the need for additional validation.\nYou can find the e-ticket directly to the TIM Wallet in your wallet, you can renew it when it expires. In the case of controls, displays the confirmation SMS you received.', ''),
(17, 'Fidelity Card', 'Save in the TIM Wallet your loyalty cards to have them always with you', '/img/SL-People-Fid-in.png', 'people', '/img/Sl-card-1.png', '/img/SL-card-2.png', '/img/SL-card-3.png', '/img/SL-card-4.png', 'By TIM Wallet you can virtualize your loyalty cards and always carry them with you.\nLogin to Showcase Services and in a few steps you can capture all your loyalty cards.\nFrames the paper in the box and wait to be recognized.\nThe card recognition is automatic, but if the card is not recognized between these cards you can still add it by using the camera of your smartphone: select the type of the code on the card (bar code, QRCode or numeric code) and inquadralo. If the code is not automatically recognized, it can be entered manually.\nIn short you can see the card in your wallet.', 'Login to Showcase Services and frames the paper in the box. The card recognition is automatic in most cases. If the card is not recognized among those present you can add it using the camera of your smartphone.\nFollow the instructions that come proposals and select the type of code on the card. Picture of the code for automatic recognition. The code can also be entered by hand.', ''),
(18, 'Coupon', 'Save on a wide range of products and services selected from HERE!', '/img/SL-People-Coupon-in.png', 'people', '/img/SL-cup-1.png', '', '', '', 'Find the link to the service "The recommended coupons from TIM" from TIM Wallet side menu. On this help page by selecting the "DISCOVER" button access to the site where you can choose from many special offers.\n\nYou can search for products from the best brands, dream trips and discounts exclusive places of your city by browsing the categories of offers.\n\nBy using the GPS of your smartphone you can always find the best offers around you.\n\nThe service is offered to customers by TIM HERE! Group through its sales network. Payment is made using the credit card system HERE! Group. In case of need it is necessary to contact the service center of clients HERE! Group to the number 010/5389945 (option 3).', 'In TIM Wallet side menu you can find the link to the service "The Coupon Recommended by TIM". On this help page by selecting the "DISCOVER" key takes you to the website where you can choose from many special offers.', 'PROMOTION'),
(19, 'TIM SPECIAL START', '1000 minutes and up to 4GB\nONLY ONLINE 20/4 weeks', '/img/SL-MO-special.png', 'mobileOffers', '/img/SL-spe-1.png', '', '', '', 'TIM 60+ offers a host of exclusive benefits, intended for customers of age or older than 60 years.\n\nBy TIM 60+ fact call and surf at the speed of light thanks to 4G TIM, all in one solution and a discounted price conditions!\n\nAnd your minutes do not expire! Those who do not consume, use them in subsequent renewals, when you want.\n\nIn addition, you will have privileged telephone support 24 hours a day to speak with a service agent 119.\n\nIf you have a fixed line at home TIM, you can charge on the bill offered at 10 € each calendar month, with no activation fee. The offer with in the bill debit is only available in TIM shops.\n\nFor full details, including those relating to the offer by charge on the bill, go to the "Tim recalls."', 'You can activate the offer of remaining credit:\n\ndirectly online by clicking the ACTIVE button for TIM customers. To discover the advantages and Activation mode online, see the Guide\nShops at TIM\nfree of charge by calling 40916\nsending a free SMS to 119 with free text "TIM SPECIAL START"\nby calling 119 and following the fonie call answering', ''),
(20, 'TIM YOUNG & MUSIC DIGITAL\r\n', 'TIM music without consuming GB\nONLY ONLINE 9/4 weeks', '/img/SL-MO-young.png', 'mobileOffers', '/img/SL-young-1.png', '', '', '', 'You are under 30 years old and you feel Digital?\n\nMake huge Giga, navigate to the speed of light and listen to all the music you want with unlimited streaming on your smartphone with TIMmusic without consuming your GB!\n\nIn addition, if you activate the offer from the Point of Sale and charge of payments on current account or credit card, for you 5GB of 4G Internet every 28 days.', 'You can have TIM Young & Music Digital to 9 every 4 weeks, instead of 12, if you use your user in DIGITAL mode. In particular, take full advantage of the offer at a subsidized price, every 4 weeks if:\n\nrecharges timyoung.it, tim.it, MyTIM Mobile (also through App MyTIM Mobile) or via your bank, or if charges your offer on current account or credit card.\nmanage your online using the section of MyTIM Mobile tim.it and timyoung.it sites, calling freephone 40916 or by requesting assistance through the Social TIM pages on Facebook and Twitter.', ''),
(21, 'TIM 60+', 'Tim for Grannies!!ONLY ONLINE 12/4 weeks', '/img/SL-MO-60.png', 'mobileOffers', '/img/SL-60-1.png', '', '', '', 'TIM 60+ offers a host of exclusive benefits, intended for customers of age or older than 60 years.\n\nBy TIM 60+ fact call and surf at the speed of light thanks to 4G TIM, all in one solution and a discounted price conditions!\n\nAnd your minutes do not expire! Those who do not consume, use them in subsequent renewals, when you want.\n\nIn addition, you will have privileged telephone support 24 hours a day to speak with a service agent 119.\n\nIf you have a fixed line at home TIM, you can charge on the bill offered at 10 € each calendar month, with no activation fee. The offer with in the bill debit is only available in TIM shops.\n\nFor full details, including those relating to the offer by charge on the bill, go to the "Tim recalls."', 'If you are already a customer or want to become TIM TIM customer can activate the offer of remaining credit or credit card:\n\ndirectly online by clicking the ON button\nShops at TIM', ''),
(22, 'TV - Unlimited Fun', 'Discover the grat cinema, the most exciting series, the most loved cartoon caracters, sports and more on TV, PC, tablet and Smartphone', '/img/SL-TV-in.png', 'promotion', '/img/SL-TV-1.png', '/img/SL-TV-2.png', '/img/SL-TV-3.png', '/img/SL-TV-4.png', 'Discover the grat cinema, the most exciting series, the most loved cartoon caracters, sports and more on TV, PC, tablet and Smartphone.\nCartoons, movies, TV series, documentaries and concerts always on demand to create your own schedule without advertising. More than 8000 titles on a subscription, with no time constraints, even in HD on TV with dedicated decoder, Smart TV, PC, Smartphone and Tablet', 'Subscribe in TIMvision to enjoy a great show. You can see more than 8000 titles, including cartoons, movies, TV series, documentaries and the last seven days of LA7 and LA7d. If you subscribe before 30/07/2016, the first month is free and then 5/month.', 'PROMOTION'),
(23, 'Samsung Galaxy Gear S with SIM', 'An elegant curved Super AMOLED display for optimal fir, customisable screens and interchangeable strops to better express your own style', '/img/SL-HF-1.png', 'promotion', '/img/SL-sam-1.png', '/img/SL-sam-2.png', '/img/SL-sam-3.png', '/img/SL-sam-4.png', 'Samsung Gear S features a sleek curved Super AMOLED display for optimal fit and customizable screens and interchangeable straps to better express their own style. In addition, the simple and intuitive interface allows instant access to the information and notifications of interest.', '', 'PROMOTION');

-- --------------------------------------------------------

--
-- Table structure for table `sl_device`
--

CREATE TABLE IF NOT EXISTS `sl_device` (
  `sl_id` int(11) DEFAULT NULL,
  `dev_id` int(11) DEFAULT NULL,
  KEY `dev_id` (`dev_id`),
  KEY `sl_id` (`sl_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sl_device`
--

INSERT INTO `sl_device` (`sl_id`, `dev_id`) VALUES
(6, 3),
(12, 3),
(4, 3),
(3, 3),
(2, 3),
(13, 1),
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(2, 5),
(3, 5),
(4, 5),
(1, 5),
(2, 6),
(3, 6),
(4, 6),
(15, 4),
(21, 8),
(1, 7),
(3, 7);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
