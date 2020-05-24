-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: mariadb
-- Generation Time: Feb 27, 2020 at 01:58 PM
-- Server version: 10.4.12-MariaDB-1:10.4.12+maria~bionic-log
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cooking_server`
--

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) NOT NULL,
  `menu_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `point` float NOT NULL,
  `user_id` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `admin_id` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `menu_calories` float DEFAULT NULL,
  `method` text COLLATE utf8_unicode_ci NOT NULL,
  `created_date` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `menu_name`, `category_id`, `point`, `user_id`, `admin_id`, `menu_calories`, `method`, `created_date`) VALUES
(1, 'เต้าเจี๊ยวหล่น', '1', 2, '0', '1', 769.61, '<ol><li>นำพริกไทย หอมแดงซอยลงตำในครก ตามด้วยกุ้งแห้ง จากนั้นใส่เต้าเจี้ยวขาวลงตำพอละเอียด</li><li>นำส่วนผสมลงหม้อเติมน้ำกะทิลงคนให้เข้ากัน</li><li>นำไปต้ม หมั่นคน แล้วปรุงรสตามชอบ จากนั้นใส่พริกหยวกลงต้มให้สุก (ชอบเผ็ดใส่พริกเหลืองเพิ่มได้)</li></ol>', '27-02-2563'),
(2, 'แกงจืดไข่น้ำ', '8', 3.5, '0', '1', 658.1, '<ol><li>ทอดไข่เจียวด้วยน้ำมันน้อยๆ ทอดจนสุกแล้วหั่นเป็นสีเหลี่ยมเท่าๆ กัน ตักใส่ชาม</li><li>ต้มน้ำสต๊อกบนไฟกลาง หมูบด และปรุงรสด้วยซีอิ๊วขาว ซอสปรุงรส</li><li>ตักต้มจืดใส่ชามที่มีไข่วางพักไว้อยู่ โรยด้วยต้นหอมและผักชี &nbsp;แค่นี้ก็เป็นอันเสร็จ</li></ol>', '27-02-2563'),
(3, 'ข้าวกระเพราปลาหมึกไข่ดาว', '6', 4, '0', '1', 735.75, '<ol><li>เปิดไฟให้ร้อนแล้วใส่น้ำมัน</li><li>หลังจากน้ำมันร้อนใส่พริกกับกระเทียม</li><li>ใส่ปลาหมึก เติมเครื่องปรุง น้ำปลา ซอสหอยนางรม น้ำตาล</li><li>ใส่ใบกะเพรา ผัดให้เข้ากัน</li><li>ทอดไข่ดาว เปิดไฟอุ่นๆ เพื่อไข่ดาวจะได้ไม่ไหม้</li><li>จากนั้นตักข้าวรอตามด้วยราดกะเพราะปลาหมึกลงที่ข้าวพร้อมไข่ดาว</li></ol>', '27-02-2563'),
(4, 'เตี๋ยวหมูต้มยำไข่ยางมะตูม', '4', 0, '0', '1', 361.75, '<p>1.ผสมน้ำพริกเผา น้ำมะนาว น้ำปลาและพริกป่นเข้าด้วยกันในถ้วย</p><p>2. นำน้ำต้มกระดูกหมูหรือน้ำซุปใส่หม้อตั้งไฟให้เดือด นำหมูสับมาปั้นเป็นก้อนแบนๆ ใส่ลงไปลวกในน้ำต้มจนสุก</p><p>ตักเนื้อหมูขึ้นวางในถ้วยที่ผสมเครื่องต้มยำที่เตรียมไว้แล้ว ตักน้ำต้มกระดูกหมูที่ใช้ลวกหมูใส่ลงไปประมาณ 1/2 ถ้วย โรยหน้าด้วยต้นหอม ผักชีและถั่วลิสงคั่ว</p><p>3.ใส่ไข่ยางมะตูมลงหม้อต้ม 5-6 นาที</p><p>4.พอไข่เสร็จแล้วนำใส่ชามพร้อมเสริฟได้เลย</p>', '27-02-2563'),
(5, 'ข้าวกระเพรารวมมิตรไข่ดาว', '6', 0, '0', '1', 494.9, '<ol><li>แกะกุ้ง ปลาหมึกหั่นเป็นชิ้น ล้างให้สะอาด</li><li>ตั้งไฟ ใส่น้ำมันพอร้อน ใส่พริกกับกระเทียมสับลงไฟ ผัดพอได้ที่</li><li>ใส่กุ้งเเละปลาหมึก ปรุงรสด้วย ซอสหอยนางรม น้ำปลา ซอสปรุงรส ผัดจนเข้าที่ แล้วใส่ใบกระเพราลงไป และปิดไฟได้เลย</li><li>ทอดไข่ดาว เปิดไฟอุ่นๆเพื่อไข่ดาวจะได้ไม่ไหม้</li><li>จากนั้นตักข้าวรอตามด้วยราดกะเพราะรวมมิตรลงที่ข้าวพร้อมไข่ดาว</li></ol>', '27-02-2563'),
(6, 'ข้าวกระเพราหมูกรอบไข่ดาว', '6', 0, '0', '1', 530.5, '<ol><li>มาเริ่มด้วยการตำพริกกับกระเทียมกันก่อน</li><li>หมูกรอบหั่นเป็นชิ้นตามชอบ</li><li>เสร็จแล้วก็ตั้งกระทะใส่น้ำมันพืช ผัดพริกกับกระเทียมที่เราตำไว้ให้หอมฟุ้งไปทั่วบ้าน อยู่ที่นี่เวลาผัดต้องเปิดหน้าต่างรอไว้ก่อน</li><li>ผัดแล้วก็ใส่หมูกรอบตามลงไปผัดให้สุกร้อนดี</li><li>เติมน้ำซุปหรือน้ำเปล่านิดหน่อยเพราะจะได้ไม่ไหม้กระทะ</li><li>ปรุงรสด้วยน้ำตาลทราย น้ำปลา เติมน้ำมันหอย</li><li>ผัดให้สุกเข้ากันแล้วนำกะเพราลงไป</li><li>ปิดไฟ ผัดให้เข้ากัน แค่นี้ก็เสร็จแล้ว</li><li>ทอดไข่ดาว เปิดไฟอุ่นๆเพื่อไข่ดาวจะได้ไม่ไหม้</li><li>จากนั้นตักข้าวรอตามด้วยราดกะเพราะหมูกรอบลงที่ข้าวพร้อมไข่ดาว</li></ol>', '27-02-2563'),
(7, 'กระดูกหมูทอดกระเทียม', '3', 5, '0', '1', 713.26, '<ol><li>หมักซี่โครงหมูด้วยซอสหอยนางรม ซีอิ๊วขาว เกลือ ผงปรุงรส และน้ำตาล คลุกเคล้าให้เข้ากัน</li><li>ใส่พริกไทยดำ หมักทิ้งไว้จนเครื่องปรุงซึมเข้าเนื้อซี่โครงหมู</li><li>ตั้งกระทะ ใส่น้ำมันให้ท่วม รอให้น้ำมันเดือดแล้วนำกระเทียมลงไปทอด ทอดจนเหลืองกรอบ แล้วตักขึ้นมาพักไว้</li><li>นำซี่โครงหมูที่หมักไว้ลงไปทอด ทอดให้สุก หากชอบแห้งๆ ก็ทอดให้นานขึ้นโดยใช้ไฟอ่อนถึงปานกลาง เสร็จแล้วก็นำขึ้นใส่จาน</li></ol>', '27-02-2563'),
(8, 'ก๋วยเตี๋ยวเส้นเล็กต้มยำ', '4', 0, '0', '1', 232.7, '<ol><li>ทำน้ำซุป โดยเอาน้ำใส่หม้อ ต้มน้ำให้เดือด ใส่กระดูกหมูล้างให้สะอาด ตามด้วยรากผักชี กระเทียม พริกไทย และเกลือ ถ้ามีน้ำตาลกรวดใส่ไปนิดหน่อย และใส่กระเทียมดอง พร้อมน้ำกระเทียมดอง ต้มประมาณ 1 ชั่วโมงครึ่ง คอยช้อนฟองออก</li><li>เอาถั่วลิสงมาคั่ว ลอกเปลือกออกแล้วก็ใส่ครกตำ</li><li>เอาหม้ออีกใบต้มน้ำ แล้วก็นำไส้อ่อนลงต้มให้เปื่อย ประมาณ 1 ชั่วโมง ระหว่างต้มก็สามารถเอาหมูและตับมาต้มด้วย ต้มทุกอย่างจนสุกแล้วตักออก พักไว้</li><li>เจียวกากหมูกระเทียม โดยเอาหมูสามชั้นมาเจียวในกระทะจนได้น้ำมันหมูก่อน แล้วค่อยเอาน้ำมันหมูมาเจียวกระเทียมให้เหลือง แล้วก็เอาหมูกรอบลงทอดรวมกัน</li><li>ตั้งหม้อใบเล็ก ใส่หมูสับลงไป ตักน้ำซุปที่ต้มไส้ไว้เดือด ๆ มาใส่ในหมูแล้วก็คน ๆ ให้หมูสุก รินน้ำออก พักไว้</li><li>ทอดแผ่นเกี๊ยว ลวกลูกชิ้น หั่นหมูชิ้นเตรียมไว้ หั่นฮือก้วย ตับ และไส้อ่อน เตรียมไว้</li><li>ลวกเส้นกับถั่วงอกใส่ชาม ใส่ลูกชิ้นต่าง ๆ ลงไป เตรียมไว้</li><li>ปรุงน้ำต้มยำ โดยนำถ้วยหรืออ่างผสมเล็ก ๆ มาใส่หมูบดที่ลวกไว้ ใส่ถั่วลิสงคั่วตำลงไป ปรุงรสด้วยน้ำตาลทราย พริกป่น น้ำปลา พริกดองน้ำส้ม และบีบมะนาวตามลงไป ใส่กากหมูกระเทียมเจียว เติมน้ำซุปก๋วยเตี๋ยว เสร็จแล้วก็คนให้น้ำตาลละลาย แล้วก็ราดลงบนเส้นก๋วยเตี๋ยวในชาม ใส่เกี๊ยวทอดกรอบลงไป โรยด้วยต้นหอม ผักชี และพริกไทยป่น</li></ol>', '27-02-2563'),
(9, 'กุ้งทอดกระเทียม', '3', 0, '0', '1', 332.39, '<ol><li>ตัดส่วนปลายของหัวกุ้ง ขา หนวด และ ผ่าเปลือกตรงกลางหลัง นำเส้นดำออก ทำความสะอาดให้เรียบร้อย</li><li>ผ่าเปลือกตรงกลางหลัง</li><li>นำเส้นดำกลางหลังออก</li><li>นำกุ้งที่เตรียมไว้มาคลุกกับแป้งทอดกรอบบาง ๆ</li><li>ตั้งกระทะ ใส่น้ำมัน รอจนน้ำมันร้อน ใส่กุ้งที่ชุบแป้งไว้ลงไปทอดจนเหลืองทอง แล้วตักขึ้นพักไว้</li><li>ใส่รากผักชี กระเทียม ลงโขลกในครกพอหยาบ แล้วใส่พริกไทยป่น และเกลือลงไป คลุกให้เข้ากัน</li><li>นำกุ้งที่เตรียมไว้มาคลุกกับแป้งทอดกรอบบาง ๆ</li><li>ทอดกุ้งจนเหลืองทอง</li><li>ตั้งกระทะใส่น้ำมันจากการทอดกุ้งลงไป ตั้งให้น้ำมันร้อน ใส่สามเกลอที่โขลกไว้ลงไปผัดจนส่งกลิ่นหอม</li><li>ใส่กุ้งที่ทอดเตรียมไว้ลงไปผัดให้เข้ากัน แล้วตักขึ้นจัดเสิร์ฟ</li></ol>', '27-02-2563'),
(10, 'ข้าวไก่กระเทียม', '6', 0, '0', '1', 463.59, '<ol><li>เจียวกระเทียมกับน้ำมันพื้น และใส่เกลือตามลงไป เจียวจนเป็นสีเหลืองกรอบ เสร็จแล้วตักขึ้นมาสะเด็ดน้ำมัน</li><li>ไม่ต้องเทน้ำมันทิ้ง นำเนื้อไก่ลงไปทอดต่อเลย ทอดจนสุก เสร็จแล้วมันไก่ขึ้นมาวางพักไว้</li><li>ล้างกระทะตั้งน้ำมันใหม่ โดยใส่น้ำมันที่เจียวกระเทียมเมื่อกี้นี้ เติมลงไป 1 ช้อนโต๊ะ</li><li>นำรากผักชี กระเทียม และพริกไทยที่ตำรววมกัน เอาลงไปผัดเลย</li><li>ตามด้วยเนื้อไก่ที่เราทอดเตรียมไว้ พร้อมปรุงรสด้วยซอสหอยนางรม ซีอิ๊วขาว และน้ำตาลทราย ผัดให้เข้ากัน</li><li>เสร็จแล้วใส่จานเสิร์ฟทันที และโรยด้วยผักชี</li></ol>', '27-02-2563'),
(11, 'ข้าวไข่ดาว', '6', 0, '0', '1', 335, '<ol><li>ตักข้าวสวยใส่จานเตรียมไว้</li><li>ยกกระทะตั้งไฟใส่น้ำมันและรอให้น้ำมันร้อน ตอกไข่ใส่ลงไปในกระทะและทอดไข่แบบสุกมาสุกน้อยแล้วแต่ความชอบ</li><li>ตักไข่ดาวที่ทอดสุกแล้วราดบนข้าวสวยที่เตรียมไว้ เสิร์มพร้อมพริกน้ำปลาหรือซอสพริก ซอสมะเขือเทศก็อร่อย</li></ol>', '27-02-2563'),
(12, 'ข้าวผัดหมูไข่เป็ด', '6', 0, '0', '1', 481.51, '<ol><li>กะทะตั้งไฟพอร้อน ใส่น้ำมันพืชและหอมใหญ่ลงผัด หอมใหญ่เริ่มใสใส่เนื้อหมูลงผัดด้วยกัน</li><li>เนื้อหมูใกล้สุกใส่น้ำปลา น้ำตาลทราย น้ำมันหอย ผงปรุงรส เกลือและมะเขือเทศ ผัดให้เข้ากัน</li><li>ใส่ข้าวสวยผัดเข้าด้วยกัน ชิมรสตามชอบ (รสจัดเผื่อสำหรับไข่และก้านคะน้าเล็กน้อย)</li><li>แหวกกะทะตรงกลางใส่ไข่ลงไป ผัดต่อจนไข่เริ่มแห้งใส่ก้านคะน้าผัดต่อสักครู่เสร็จพร้อมเสริฟ</li><li>ตักใส่จานโรยหน้าด้วยพริกไทป่น เตรียมน้ำปลาพริกขี้หนูมะนาวสักถ้วย</li></ol>', '27-02-2563'),
(13, 'ข้าวผัดหมูไข่ดาว', '6', 0, '0', '1', 582.3, '<ol><li>เทน้ำมันลงในกระทะตามด้วยกระเทียมสับและพริกแดงตำ ผัดจนมีกลิ่นหอม</li><li>ตามด้วยหมูบด ผัดให้หมูสุกระดับหนึ่ง เทน้ำมันสต็อกลงไปเล็กน้อย ปรุงรสด้วยซอสหอยนางรม น้ำปลา และน้ำตาลทราย ผัดให้ทุกอย่างเข้ากัน</li><li>ปิดไฟแล้วใส่ใบกะเพรา ผัดให้ใบกะเพราสะดุ้งความร้อนเล็กน้อย</li><li>ทอดไข่ดาว เปิดไฟอุ่นๆเพื่อไข่ดาวจะได้ไม่ไหม้</li><li>จากนั้นนำไข่ดาวราดมาบนข้าวผัดหมูพร้อมเสริฟ</li></ol>', '27-02-2563'),
(14, 'ข้าวหมูทอดโทริยากิ', '3', 0, '0', '1', 397.8, '<ol><li>เอาหมูไปหมักกับซอสเทอริยากิ (ไม่ต้องใส่หมด เหลือไว้ส่วนหนึ่ง) งาขาว และแป้งข้าวโพด คลุกเคล้าให้เข้ากัน จากนั้นทิ้งเอาไว้ประมาณ 30 นาที</li><li>ล้างทำความสะอาดผักสด จากนั้นหั่นเป็นชิ้น ๆ พอดีคำ แล้วนำไปลวกในน้ำเดือดจัด ๆ ตักใส่จานพักไว้</li><li>ติดเตาตั้งกระทะใส่น้ำมันลงไป เมื่อน้ำมันร้อนแล้วใส่เนื้อหมูลงไปผัดจนเกือบสุก ใส่ซอสเทอริยากิลงไปผัดให้เข้ากัน เติมน้ำเปล่าเล็กน้อย จากนั้นปรุงรสด้วยน้ำตาล และเกลือ</li><li>เมื่อจะทานจัดผักที่ลวกเอาไว้ข้างจาน ตักข้าวสวยวางไว้ตรงกลางราดด้วยหมูผัดซอสเทอริยากิ</li><li>ทอดไข่ดาว เปิดไฟอุ่นๆเพื่อไข่ดาวจะได้ไม่ไหม้</li><li>จากนั้นตักข้าวรอตามด้วยราดหมูโทริยากิลงที่ข้าวพร้อมไข่ดาว</li></ol>', '27-02-2563'),
(15, 'ซุปเห็ด', '7', 0, '0', '1', 171.98, '<ol><li>ล้างเห็ดให้สะอาด นำมาหั่นเป็นชิ้นบางๆ</li><li>นำเนยใส่หม้อ ใส่หอมใหญ่ผัดให้พอเริ่มใส ไฟอย่าร้อนมาก ระวังอย่าให้หอมไหม้เดี๋ยวซุปออกมาสีไม่สวย</li><li>ใส่แป้งสาลีตามลงไป เทไปคนไปอย่าให้แป้งจับตัวเป็นก้อน เติมน้ำสต็อก เห็ด ปรุงรสด้วยเกลือ พริกไทย ใส่นมสด คนให้เข้ากันเรื่อยๆ จนซุปเดือด</li></ol>', '27-02-2563'),
(16, 'ต้มเลือดหมู', '5', 0, '0', '1', 175.49, '<ol><li>หมักหมูกับน้ำมันหอย และซีอิ๊วขาวพักไว้ก่อน จากนั้นล้างผักต่างๆ หั่นเตรียมไว้</li><li>ต้มนำซุป ถ้าโดยใช้กระดูกหมูกับ หัวไชเท้า ต้มแล้วใส่เกลือลงไป พอน้ำเลือดก็ใส่หมูชิ้นที่หมักไว้ลงไป ต้มจนหมูและไชเท้าสุกดีปิดไฟ</li><li>ลวกเครื่องในต่างๆให้สุกเตรียมไว้ เลือกหมูต้มให้สุกแล้วแยกใส่ชามไว้จะได้ไม่เละ</li><li>เวลาจะทานก็ใส่ผักในชามตามชอบ ใส่เครื่องในต่างๆ ตักน้ำซุปพร้อมหมูชิ้น แล้วโรยหน้าด้วย คึ่นฉ่าย ต้นหอมและกระเทียมเจียว</li></ol>', '27-02-2563'),
(17, 'ต้มข่าไก่', '5', 0, '0', '1', 504.5, '<ol><li>ตั้งหม้อต้มน้ำบนไฟกลางจนเดือด ใส่ไก่ลงไปต้มประมาณ 5 นาที หรือจนไก่สุกนุ่ม เติมหัวกะทิลงไป</li><li>ใส่คนอร์ซุปไก่ก้อนลงไป คนให้ละลาย ใส่เห็ด ข่า ตะไคร้ ใบมะกรูดลงไป ต้มต่อจนสุก</li><li>ปรุงรสด้วยน้ำปลา และน้ำมะนาว ปิดไฟ โรยหน้าด้วยใบผักชี และพริกขี้หนู จัดใส่ชามพร้อมเสิร์ฟ</li></ol>', '27-02-2563'),
(18, 'ต้มยำกุ้งน้ำข้น', '5', 0, '0', '1', 426.5, '<ol><li>ตั้งหม้อใส่น้ำรอจนเดือดจัด ใส่ข่าซอย ตะไคร้บุบเล็กน้อยลงไป</li><li>รอเดือดแล้วใส่เห็ดดฟาง ลดไฟเหลือไฟกลางรอจนน้ำซุปเดือด &nbsp;</li><li>ตามด้วยพริกขี้หนูแดง น้ำพริกเผา น้ำปลา คนจนเข้ากัน &nbsp;</li><li>เมื่อเดือดอีกครั้งใส่เนื้อกุ้งลงไปแล้วตามด้วยนม อุ่นจนเดือดเล็กน้อยอีกครั้ง &nbsp;</li><li>ฉีกใบมะกรูดใส่ลงไป ปิดไฟบีบมะนาว แล้วโรยด้วยผักชีแล้วตักเสิร์ฟ</li></ol>', '27-02-2563'),
(19, 'หอยแมลงภู่นึ่ง', '5', 0, '0', '1', 180, '<ol><li>หอยแมลงภู่ล้างให้สะอาดหลายๆ รอบ แบ่งโหระพาไว้ก้นหม้อครึ่งนึง ใส่หอยแมลงภู่ทั้งหมด วางโหระพาอีกครึ่งด้านบน ปิดฝาหม้อ ไม่ต้องเติมน้ำ &nbsp;</li><li>ยกขึ้นเตาเปิดไฟแรงปานกลาง นึ่ง12นาที โดยไม่เติมน้ำ ไม่ต้องกลัวว่าไฟจะไหม้หม้อ เพราะน้ำอยู่กับหอยแมลงภู่เยอะจะไหลลงก้นหม้อ</li><li>แกะหอยแมลงภู่ดึงขนออกให้หมดพร้อมเสริฟ</li></ol>', '27-02-2563'),
(20, 'ปลากระพงทอดกระเทียม', '3', 0, '0', '1', 612, '<ol><li>หั่นเนื้อปลากระพงชิ้นประมาณฝ่ามือ ท่าเกลือและพริกไทยทั้งสองด้านของปลา ตั้งน้ำมันให้เดือดใส่น้ำมันให้ท่วมกระทะ</li><li>พอน้ำมันเริ่มร้อนใส่ด้านหนังปลาลงไป ทอดจนสุกสีเหลืองทองทั้ง 2 ด้าน</li><li>ใช้น้ำมันที่เหลือจากการทอดปลา เอากระเทียมรากผักชีตำให้เข้ากัน ลงไปเจียวให้เป็นสีเหลืองทองาสวยงาม &nbsp;</li><li>ใส่ซีอิ๊วขาวและซอสปรุงรสคลุกเคล้าให้เข้ากันแล้วราดบนเนื้อปลา</li></ol>', '27-02-2563'),
(21, 'ปลากะพงทอดน้ำปลา', '3', 0, '0', '1', 825, '<ol><li>นำปลากะพงมาล้างให้สะอาด จากนั้นซับน้ำให้แห้ง</li><li>ทาน้ำมันหอยให้ทั่วเนื้อปลากะพง และโรยเกลือทั่วตัวปลา หมักทิ้งไว้อย่างน้อย 30 นาที</li><li>นำมาคลุกกับแป้งข้าวโพด โดยปัดแป้งข้าวโพดส่วนเกินทิ้งไป</li><li>ทาน้ำมันหอยให้ทั่วเนื้อปลากะพง และโรยเกลือทั่วตัวปลา หมักทิ้งไว้อย่างน้อย 30 นาที</li><li>นำมาคลุกกับแป้งข้าวโพด</li><li>ตั้งกระทะใส่น้ำมันให้ท่วมตัวปลา โดยใช้ไฟปานกลางค่อนไปทางไฟแรง รอจนน้ำมันเดือด ค่อยน้ำปลาลงไปทอด ทอดจนปลากะพงสุกดีทั้งสองด้านและมีสีสวย เมื่อปลากะพงสุกแล้วนำขึ้นมาพักไว้ให้สะเด็ดน้ำมัน</li><li>ผสมน้ำปลา และน้ำตาลปี๊ป ในถ้วยอีกใบหนึ่ง คนให้ละลายเข้ากันดี จากนั้นนำไปราดลงบนตัวปลากะพงที่สะเด็ดน้ำมันแล้ว</li><li>นำปลากะพงจัดใส่จาน เสิร์ฟพร้อมน้ำราดปลากะพง</li></ol>', '27-02-2563'),
(22, 'ปลากะพงนึ่งมะนาว', '3', 0, '0', '1', 677.3, '<ol><li>ล้างปลาให้สะอาด</li><li>ใส่ภาชนะ นำไปนึ่งประมาณ 20 นาทีจนสุก</li><li>ผสมน้ำมะนาว น้ำปลา น้ำตาล คนให้เข้ากันจนน้ำตาลละลาย</li><li>ราดน้ำที่ปรุงไว้ลงบนปลาที่นึ่งสุกแล้ว โรยพริก กระเทียมซอย และผักชี</li></ol>', '27-02-2563'),
(23, 'ผัดผักบุ้งไฟแดง', '3', 0, '0', '1', 380.9, '<ol><li>ตั้งกระทะรอน้ำมันร้อนๆ ใส่กระเทียมลงไปผัดให้หอมๆ</li><li>ใส่ผักบุ้งลงไปผัด ตามด้วยน้ำเปล่า ปรุงรสด้วยเต้าเจี้ยว ซีอิ๊ว น้ำมันหอย</li><li>น้ำตาล พริกสด ผัดใหทึกอย่างเข้ากัน ตักใส่จานเสิร์ฟ</li></ol>', '27-02-2563'),
(24, 'ผัดผักกระเฉด', '3', 0, '0', '1', 398.2, '<ol><li>นำน้ำมันใส่กระทะตั้งไฟพอร้อน ใส่พริกขี้หนูกับกระเทียมผัดพอหอม</li><li>นำผักกระเฉดที่เตรียมไว้ ลงไปผัดด้วยไฟแรง เติมน้ำผัดพอเข้ากัน ปรุงรสด้วย &nbsp;</li><li>คนอร์อร่อยชัวร์รสหมู เต้าเจี้ยว น้ำตาล &nbsp;</li><li>และน้ำมันหอย ผัดให้ส่วนผสมทุกอย่างสุกเข้ากัน ตักใส่จานพร้อมเสิร์ฟ</li></ol>', '27-02-2563'),
(25, 'ผัดสะตอกุ้งแชบ๊วย', '3', 0, '0', '1', 391.1, '<ol><li>ตำพริกแกงโดยตำพริกขี้หนู 5-6 เม็ดกับกระเทียม และหอมแดง พร้อมน้ำตาลเล็กน้อย จะได้ตำง่ายขึ้น ตำจนแหลกเลย แล้วใส่กะปิลงไปตำจนเนียนเข้ากัน</li><li>ตั้งกระทะบนเตาแก๊สโดยใช้ไฟกลาง จากนั้นใส่น้ำมันลงไปรอจนน้ำมันร้อน แล้วใส่พริกแกงที่เราตำลงไปผัดจนหอม</li><li>ใส่หมูสับลงไปผัดให้เข้ากับเครื่องแกงจนเกือบสุก ตามด้วยกุ้งแล้วผัดพอกุ้งเริ่มเปลี่ยนสี ให้ปรุงรสด้วยน้ำปลา น้ำมันหอย และน้ำตาล ผัดให้เข้ากัน แล้วตามด้วยน้ำเปล่า</li><li>เมื่อทุกอย่างเดือดดีแล้ว ใส่พริกขี้หนูที่เหลือลงไป ตามด้วยสะตอ ผัดเร็ว ๆ เมื่อสะตอเริ่มสุกแล้วปิดไฟ แล้วบีบมะนาวลงไป &nbsp;</li><li>ตักใส่จานพร้อมเสิร์ฟกับสวยร้อน ๆ&nbsp;</li></ol>', '27-02-2563'),
(26, 'ยำปลากระป๋องโรซา', '2', 4, '0', '1', 162.5, '<ol><li>ทำน้ำยำโดยผสมน้ำปลา พริกขี้หนู และน้ำมะนาว คนให้เข้ากันจากนั้นพักไว้ก่อน</li><li>นำปลากระป๋อง หอมแดง ตะไคร้ ขิงอ่อน และต้นหอมลงในอ่างภาชนะผสม ตามด้วยราดน้ำยำที่ทำไว้ในขั้นตอนแรกคลุกเคล้าให้เข้ากันเตรียมจานให้พร้อมตักใส่จาน</li><li>จากนั้นให้โรยด้วยใบสะระแหน่และ ใบมะกรูด ลงในจาน แล้วเสิร์ฟพร้อมกับผักกาดหอม และข้าวสวยร้อนๆ</li></ol>', '27-02-2563'),
(27, 'ยำขนมจีนหมูยอไข่แดง', '2', 0, '0', '1', 947.2, '<ol><li>ใส่พริก น้ำปลา น้ำตาล มะนาว ปลาร้า ลงในชามผสม</li><li>ชิมรสตามชอบ แล้วใส่หมูยอ และ ไข่แดงเค็มลงไป คลุกเคล้าให้เข้ากัน</li><li>ใส่ผักที่เตรียมไว้ลงไป คลุกเคล้าให้เข้ากัน ตักใส่จานเสริฟ</li></ol>', '27-02-2563'),
(28, 'ยำปลาร้าหมูยอไข่แดง', '2', 0, '0', '1', 761.4, '<ol><li>นำพริกและกระเทียมไปโขลกให้ละเอียด หลังจากนั้นนำพริกและกระเทียมที่โขลกมาใส่ถ้วย ให้นำส่วนผสมที่อยู่ในช่องน้ำยำ↑ลงไปในถ้วยทำการคลุกเคล้าให้เข้ากัน แนะนำให้ละลายน้ำตาลมะพร้าวกับน้ำร้อนก่อน และใส่เกลือแค่นิดเดียวโดยจะต้องชิมเป็นระยะ เพื่อให้ได้รสชาติที่นัวก่อนใส่หมูยอลงไป &nbsp;</li><li>นำใส่พวกผักลงไปในน้ำยำแล้วคลุกให้เข้ากันก่อน เมื่อลวกหมูยอเสร็จถึงจะนำไปคลุกทีหลัง หลังจากคลุกเสร็จแล้วชิมรสชาติของยำว่าต้องเติมอะไรบ้าง</li><li>เมื่อเราปรุงรสขาติเพิ่มเสร็จแล้วให้นำพระเอกไข่แดงเค็มลงถ้วยได้เลย แล้วที่นีเราต้องค่อยคลุกๆ เสร็จแล้วนำมารับประทานได้เลย</li></ol>', '27-02-2563'),
(29, 'ยำปลาหมึก', '2', 0, '0', '1', 257.3, '<ol><li>ลอกเยื่อดำ ๆ ปลาหมึกออก ล้างให้สะอาดใช้มีดบั้งให้เป็นลวดลาย หั่นเป็นชิ้น ลวกพอสุก ผึ่งให้น้ำแห้ง นำปลาหมึกไปลวกในน้ำร้อนจนสุก นำออกมาสะเด็ดน้ำ</li><li>ผสมน้ำปลา น้ำมะนาว น้ำตาล พริกขี้หนู เป็นน้ำยำ</li><li>คลุกกับปลาหมึก ใส่หัวหอม มะเขือเทศ ขึ้นฉ่ายลงเคล้าให้เข้ากันดี จัดใส่จาน โรยผักชี เสริฟทันที</li></ol>', '27-02-2563'),
(30, 'ยำมาม่ากุ้งสด', '2', 4.5, '0', '1', 556, '<ol><li>หั่นผักเตรียมไว้ และตำพริกรอไว้ &nbsp;</li><li>นำเส้นมาม่า หมูสับ กุ้ง ไปลวกให้สุก &nbsp;</li><li>จากนั้นนำพริกที่ตำไว้มาปรุงรสใส่น้ำปลา น้ำตาล มะนาว</li><li>ตักใจจานพร้อนกิน</li></ol>', '27-02-2563'),
(31, 'ยำมาม่าหมูยอ', '2', 0, '0', '1', 678.9, '<ol><li>ต้มมาม่า ใส่หมูบดลงไปด้วยเลย พอสุก ก็ปิดไฟ</li><li>คั้นมะนาว ใส่พริก น้ำตาล น้ำปลา คนให้เข้ากัน ชิมเสร็จถ้าชอบรสชาติก็พอ &nbsp;</li><li>ใส่เส้นมาม่า เครื่องปรุงมาม่า ทุกอย่างที่เตรียมไว้ คนให้เข้ากัน ชิมอีกที ชอบเปรี้ยว หวานเค็ม ตามใจเลย</li></ol>', '27-02-2563'),
(32, 'ราดหน้าเส้นใหญ่', '4', 0, '0', '1', 368.3, '<ol><li>หั่นเนื้อหมูเป็นชิ้นบางใส่ลงภาชนะ เติมซีอิ๊วขาว น้ำมันหอย น้ำตาลทรายแดง แป้งข้าวโพด น้ำมันพืช และพริกไทยป่น คลุกผสมให้เข้ากัน หมักทิ้งไว้สักครู่</li><li>ผัดก๋วยเตี๋ยวเส้นใหญ่ในกระทะ ใส่ซีอิ๊วดำลงไปเล็กน้อย ผัดจนเส้นนุ่ม ตักขึ้นใส่ถ้วย เตรียมไว้</li><li>ผัดกระเทียมกับเต้าเจี้ยวในกระทะจนหอม เติมน้ำลงไป เคี่ยวจนเดือด จากนั้นใส่หมูที่หมักไว้ลงผัดจนสุก</li><li>ปรุงรสด้วยซีอิ๊วขาว ค่อย ๆ เทแป้งมันละลายน้ำ 2 ช้อนโต๊ะ คนผสมจนเหนียว ใส่ผักคะน้าลงผัดจนสุก ตักราดบนเส้นก๋วยเตี๋ยว โรยหน้าด้วยพริกไทยป่น พร้อมรับประทาน</li></ol>', '27-02-2563'),
(33, 'สเต็กสันคอหมู', '3', 0, '0', '1', 577.35, '<ol><li>ผสมน้ำเปล่า ซีอิ๊วขาว น้ำมะนาว ใบโรสแมรี่ &nbsp;กระเทียม และเกลือ ลงในชามผสม คนให้เข้ากัน</li><li>นำเนื้อหมูมาคลุกเคล้าส่วนผสมให้ทั่ว แล้วพักทิ้งไว้ (ควรหมักทิ้งไว้ 2 ชม.)</li><li>วอร์มเตาให้ร้อน แล้วใส่น้ำมันรำข้าว นำหมูลงไปย่างแบบกริลล์ด้านละ 5-6 นาที</li><li>เช็กอุณหภูมิของเนื้อหมูย่างด้วยปรอท ถ้าจะให้กำลังดีต้องอยู่ในอุณหภูมิ 60-65 องศา แล้วจึงยกลงเสิร์ฟ</li></ol><p>&nbsp;</p>', '27-02-2563'),
(34, 'หอยแมลงภู่อบชีส', '1', 0, '0', '1', 667.96, '<ol><li>นำกระเทียมสับใส่ชามผสมที่เตรียมไว้ ตามด้วยเนยจืดละลาย เกลือป่น พริกไทยป่น และต้นหอมซอย คนให้เข้ากัน แล้วนำมาราดบนหอยแมลงภู่ ที่เรียงไว้ &nbsp;</li><li>จากนั้นโรยชีสมอสซาเรลล่าขูดให้ทั่วจาน นำไปเข้าในไมโครเวฟด้วยความร้อน 800 วัตต์ เป็นเวลา 4 นาที</li><li>นำหอยแมลงภู่อบชีสออกมาจากไมโครเวฟ และเผาหน้าชีสด้วยปีนพ่นไฟให้ชีสเกรียมสวย พร้อมเสิร์ฟ</li></ol>', '27-02-2563'),
(35, 'สปาเก็ตตี้หอยลาย', '4', 4.6, '0', '1', 576.4, '<ol><li>ตั้งหม้อเติมน้ำนำเส้นสปาเกตตี้ลงไปลวก</li><li>ตั้งกระทะไฟปานกลาง ใส่น้ำมันพืช พอเริ่มร้อนก็ใส่กระเทียมสับลงไปเจียวให้เหลืองหอม</li><li>จากนั้นนำน้ำพริกเผาลงไปผัดให้แหลกกระจายไปกับน้ำมัน ผัดจนได้ทีแล้วทำการใส่หอยลายลงไปผัดจนหอยอ้าฝาทุกตัวค่ะ &nbsp;</li><li>เริ่มทำการใส่เครื่องปรุงรสต่างๆลงไปผัดให้ได้ที่ แล้วตามด้วยน้ำซุปหรือน้ำสะอาด ผัดให้เข้ากัน &nbsp;</li><li>นำใบโหระพากับพริกขี้หนูแดงใส่ตามลงไปผัดให้เข้ากันใส่เส้นสปาเกตตี้ลงไปผัดให้เข้าสุก เสร็จแล้วตักใส่จานเสิร์ฟ</li></ol>', '27-02-2563'),
(36, 'สปาเก็ตตี้คาโบนาร่า', '4', 0, '0', '1', 789, '<ol><li>หั่นเบคอนเป็นชิ้นเล็ก ๆ เตรียมไว้</li><li>ตีผสมนมสดกับไข่ไก่เข้าด้วยกัน</li><li>จากนั้นใส่พาร์เมซานชีสลงไปตีให้เข้ากันอีกครั้ง เตรียมไว้</li><li>ใส่น้ำลงในหม้อ ตามดวยเกลือป่นและน้ำมันมะกอกเล็กน้อย</li><li>ใส่เส้นสปาเกตตีลงไปต้มในน้ำเดือดประมาณ 5 นาที &nbsp;</li><li>พอสุกแล้วตักเส้นสปาเกตตีใส่ลงในน้ำเย็น &nbsp;</li><li>จากนั้นตักเส้นสปาเกตตีขึ้นสะเด็ดน้ำมัน ใส่น้ำมันมะกอกลงไปเล็กน้อย</li><li>เคล้าผสมเส้นสปาเกตตีกับน้ำมันเพื่อให้เส้นไม่ติดกัน เตรียมไว้</li><li>นำเบคอนที่หั่นไว้ลงไปทอดในกระทะที่ใส่น้ำมันไว้เล็กน้อย ทอดจนเบคอนเหลืองกรอบ (ตักแบ่งเบคอนกรอบเล็กน้อยไว้สำหรับโรยหน้าก่อนเสิร์ฟ)</li><li>ใส่กระเทียมลงไปผัดจนหอม</li><li>ใส่เส้นสปาเกตตีลงไปผัดจนเส้นสุกนุ่มตามต้องการ</li><li>เทส่วนผสมซอสคาโบนาราลงไป</li><li>​ผัดให้เข้ากันและส่วนผสมเดือด</li><li>ตักใส่จาน โรยหน้าด้วยพาร์เมซานชีส พริกไทยดำ และเบคอนทอดกรอบ พร้อมเสิร์ฟ</li></ol>', '27-02-2563'),
(37, 'สปาเก็ตตี้ขี้เมาทะเล', '4', 0, '0', '1', 455.45, '<ol><li>ลวกเส้นสปาเก็ตตี้เตรียมไว้ก่อน จากนั้นก็เตรียมกระทะสำหรับผัดสปาเก็ตตี้</li><li>เทน้ำมันรำข้าวลงไปแล้วตามด้วยกระเทียม และพริกขี้หนูตำ ผัดจนหอม</li><li>ตามด้วยหอมลาย กุ้ง และปลาหมึก ผัดจนทุกอย่างสุก</li><li>ใส่เส้นสปาเก็ตตี้ลวกลงไป ใส่ข้าวโพดอ่อน และเห็ดฟาง ปรุงรสด้วยซอสหอยนางรม น้ำปลา ซอสปรุงรส และน้ำตาลทราย ผัดจนเครื่องปรุงเข้ากัน</li><li>ใส่กระชายซอย ใบมะกรูด และใบกะเพรา ผัดจนกลิ่นกระชายและใบมะกรูดออกมา เสร็จแล้วก็ใส่จานเสิร์ฟ</li></ol>', '27-02-2563'),
(38, 'สปาเก็ตตี้เบคอน', '4', 0, '0', '1', 465.4, '<ol><li>ต้มเส้นสปาเก็ตตี้ให้สุกแบบ Al dente คือสุกไม่มาก ต้มสัก 2 นาที แล้วรีบน็อคน้ำเย็น</li><li>หั่นเบคอนเป็นชิ้นพอคำ เสร็จแล้วซอยกระเทียมบาง ๆ ทอดพริกแห้งและทอดเบคอน 2 เส้นให้กรอบ เตรียมเอาไว้สำหรับโรยหน้า</li><li>&nbsp;ตั้งกระทะให้ร้อนโดยใช้ไฟกลาง เมื่อกระทะร้อนใส่เบคอนหั่น 3 เส้นที่เหลือให้สุกเกรียม และมีน้ำมันออกมา</li><li>ใส่กระเทียมซอยและพริกแห้งทอดหั่นแล้วลงไป ผัดพอกระเทียมสุก ปรุงรสด้วยน้ำมันหอยและซีอิ๊วขาว</li><li>ตามด้วยเส้นสปาเก็ตตี้ คลุกเคล้าให้เข้ากัน ใส่ใบโหระพาลงไป ปิดไฟคนให้เข้ากันอีกรอบ</li><li>จัดเส้นสปาเก็ตตี้ลงในจานก่อน ตามด้วยเครื่องที่ผัด โรยด้วยเบคอนทอดกรอบและพริกแห้ง ตกแต่งด้วยใบโหระพาและชีสพาร์เมซานอีกรอบ</li></ol>', '27-02-2563'),
(39, 'สปาเก็ตตี้เขียวหวานไก่', '4', 0, '0', '1', 511.4, '<ol><li>ใส่น้ำมันมะกอกลงในกระทะ ผัดน้ำพริกแกงเขียวหวานจนหอม ค่อย ๆ เติมกะทิลงไป ปรุงรสด้วยน้ำตาลปี๊บ และน้ำปลา ต้มจนเดือด จากนั้นใส่ไก่ และใบมะกรูดลงผัดจนสุก</li><li>ใส่เส้นสปาเกตตี และใบโหระพาลงผัด จากนั้นเติมนมข้นจืด ผัดจนส่วนผสมข้น ตักใส่จาน แต่งด้วยพริกชี้ฟ้า และใบโหระพา พร้อมรับประทาน</li></ol>', '27-02-2563'),
(40, 'ชีสบอล', '1', 3.9, '0', '1', 835.5, '<ol><li>นำมอสซาเรลล่าชีสแบบขูดมาปั้นเป็นก้อนกลม ประมาณ 15 กรัม &nbsp;</li><li>ปั้นบีบให้แน่นชีสจะได้ไม่แตกออก ปั้นชีสไว้ทั้งหมด</li><li>นำชีสชุบแป้งสาลี ชุบไข่ไก่ เกล็ดขนมปัง ทำซ้ำประมาณ 3-4 รอบ ทำจนหมดทุกก้อน</li><li>ตั้งน้ำมันให้พอร้อน ใส่ชีสบอลลงไปทอดจะเกล็ดขนมปังสุกสีเหลืองทอง</li><li>สะเด็ดน้ำมัน เสิร์ฟพร้อมกับซอสมะเขือเทศและมายองเนส</li></ol>', '27-02-2563'),
(41, 'บาบีคิวไก่', '1', 0, '0', '1', 519.2, '<ol><li>แล่สไลด์ไก่ให้เป็นชิ้นบางๆ ยาวหน่อยจนหมด พักไว้</li><li>หั่นหอมใหญ่ มะเขือเทศ สับปะรดเป็นชิ้นเต๋าและพริกหยวกหั่นแบ่งเป็นชิ้นๆพักไว้</li><li>ใส่ซอสมะเขือเทศ ซอสพริก น้ำมันหอย ซอสปรุงรส เกลือ น้ำตาล พริกไทย &nbsp;</li><li>น้ำมันงาลงไปหมักแยกไก่ หมักทิ้งไว้อย่างต่ำ1-3 ชั่วโมงหรือจะหมักข้ามคืนไว้เลย &nbsp;</li><li>นำมาเสียบไม้ เริ่มจากพวกผักต่างๆก่อนตามด้วยสันในอกไก่ เสียบจนหมด</li><li>นำไปย่างโดยทาด้วยซอสมะเขือและซอสพริก อัตราส่วน 1 ต่อ 1 ผสมให้เข้ากัน &nbsp;</li><li>ย่างจนสุกโรยพริกไทยพร้อมเสิร์ฟด้วย</li></ol>', '27-02-2563'),
(42, 'ไก่ชุบแป้งทอด', '1', 4.25, '0', '1', 516.25, '<ol><li>ล้างไก่ให้สะอาด ปรุงด้วยเกลือและพริกไทย ใส่แป้งสาลีและน้ำเปล่า คลุกเคล้าให้ทั่ว &nbsp;</li><li>ตั้งน้ำมันให้ร้อนกลางๆ นำไก่ที่ผสมแป้งลงคลุกเกล็ดขนมปังกดให้เกล็ดขนมปังติดให้ทั่ว &nbsp;</li><li>นำลงทอด ทอดจนสุกตักไก่ขึ้นมาสะเด็ดน้ำมัน &nbsp;</li><li>นำไก่ใส่จาน พร้อมเสิร์ฟ</li></ol>', '27-02-2563'),
(43, 'เมี่ยงหอยแครง', '1', 0, '0', '1', 587.24, '<ol><li>ตั้งหม้อใส่น้ำ น้ำมะขามเปียก น้ำตาลปี๊บ และน้ำปลาลงไปเคี่ยวเมื่อเหนียวขึ้นปิดไฟใส่ถั่วลิสงตำลงไป พักไว้</li><li>นำเครื่องน้ำจิ้มซีฟู้ดใส่ลงโถปั่น ปั่นจนน้ำจิ้มละเอียดแล้ว พักไว้</li><li>นำหอยไปลวกในน้ำร้อนประมาณ 2 นาที จากนั้นนำมารับประทานคู่กับน้ำจิ้มและผักที่เราเตรียมไว้</li><li>ปั่นพริกขี้หนู กระเทียมดอง ผักชี รากผักชี และเกลือให้ละเอียด &nbsp;</li><li>ผสมน้ำมะนาว น้ำปลา และน้ำตาล คนให้น้ำตาลละลาย ชิมรส ใส่พริกที่ปั่นไว้ คนให้เข้ากัน</li></ol>', '27-02-2563'),
(44, 'มัสมั่นไก่', '8', 0, '0', '1', 647.9, '<ol><li>ทำพริกแกงมัสมั่นโดยโขลกส่วนผสมจากข้อ 5-16 เข้าด้วยกันให้เป็นเนื้อเนียนแบบพริกแกง พักไว้</li><li>ตั้งหม้อไฟกลางใส่น้ำมัน นำพริกแกงลงไปผัดให้หอม ลดไฟลงกลางค่อนข้างอ่อน ระวังไหม้ &nbsp;</li><li>เมื่อพริกแกงหอม ปรับเป็นไฟกลางจนเดือด ใส่กะทิตามลงไปแค่พอท่วมไก่ พอเดือดใส่เนื้อไก่ลงไปเคี่ยวจนนุ่มลดไฟลงไปที่ &nbsp;</li><li>ไฟกลางค่อนข้างอ่อนอีกครั้ง ใส่หัวหอมที่เหลือ มันฝรั่ง ถั่วลิสง เคี่ยวต่อไป</li><li>หลังจากทุกอย่างเริ่มเปื่อยปรุงรสด้วย ปล้ำปลา น้ำมะขามเปียกและน้ำตาลปี๊ปลงไป เคี่ยวต่อจทุกอย่างเปื่อย &nbsp;</li><li>และนุ่มดี แกงจะแตกมัน และมีมันแดงๆลอยหน้าขึ้นมา เนื้อไก่เปื่อย และนุ่ม แต่ไม่เละ น้ำแกงจะเหือดลงไปเล็กน้อย&nbsp;</li></ol>', '27-02-2563'),
(45, 'แกงพะแนงเนื้อ', '8', 0, '0', '1', 459.5, '<ol><li>ใส่หัวกะทิลงไปในหม้อพออุ่น จากนั้นใส่พริกแกงพะแนง เคี่ยวให้แตกมัน</li><li>ใส่เนื้อลงไปผัดให้เข้ากันจนสุกได้ที่ &nbsp;</li><li>ปรุงรสด้วย น้ำตาลปิ๊บ น้ำปลา เกลือเล็กน้อย &nbsp;</li><li>ใส่มะเขือพวง ตามด้วยใบมะกรูด และพริกแดงพอสวยงาม ปิดไฟตักเสิร์ฟ</li></ol>', '27-02-2563'),
(46, 'ไข่พะโล้', '8', 0, '0', '1', 859.8, '<ol><li>ตั้งน้ำมันในกระทะ เมื่อร้อน นำกระเทียมลงไปผัดจนเหลือง ตามด้วยรากผักชี ผงพะโล้ โป๊ยกั๊ก อบเชย น้ำเปล่า</li><li>ปรุงรส ด้วย ซีอิ้วทั้งสอง น้ำตาล พริกไทย</li><li>ใส่หมูลงไปผัด เคี่ยวจนซอสเดือด</li><li>นำลงใส่หม้อ ที่ใส่น้ำรอไว้</li><li>ใส่ไข่ต้ม เต้าหู้ทอด</li><li>ต้มจนสุก และเคี่ยวให้เข้ากันอีก 1 ชั่วโมง หมั่นช้อนฟองออก</li><li>ตักใส่ถ้วย พร้อมเสริฟ</li></ol>', '27-02-2563'),
(47, 'แกงส้มสายบัว', '8', 0, '0', '1', 372.3, '<ol><li>ทำพริกแกงส้มโดยการ โขลกพริกแห้ง(เลาะเม็ดออกแช่น้ำให้นิ่ม) เติมเกลือป่น โขลกละเอียดตามด้วยกระชายและหอมแดง โขลกละเอียด สุดท้ายใส่เนื้อกุ้งและกะปิโขลกผสมให้เครื่องแกงเข้ากันและละเอียดดี &nbsp;ได้พริกแกงส้ม</li><li>นำน้ำเปล่าใส่หม้อตั้งไฟให้เดือด ใส่พริกแกงส้มที่โขลกไว้คนให้ละลายดี ปรุงรสด้วยเกลือ น้ำปลา น้ำตาลปี๊บและน้ำมะขามเปียก ใส่สายบัวลงไป รอให้สาบัวเริ่มนิ่ม ใส่กุ้งรอกุ้งสุก &nbsp;ปิดไฟตักเสิร์ฟ</li></ol>', '27-02-2563'),
(48, 'แกงคั่วหอยขม', '8', 0, '0', '1', 485.7, '<ol><li>ตั้งกระทะใส่กะทิ ลงไปตั้งไฟอ่อนรอจนกะทิเดือด จากนั้นนำพริกแกงลงไปผัดให้หอม</li><li>เมื่อพริกแกงเข้ากันดีกับกะทิ ใส่หอยขมลงไป รอจนหอยขมสุก สังเกตุที่ฝาหอยจะเปิดออก</li><li>หากกะทิแห้งเกินไปเติมน้ำสะอาดใส่พอขลุกขลิก</li><li>ปรุงรสด้วยน้ำตาบปี๊บและน้ำปลา ใส่ใบชะพลู ปิดไฟ เป็นอันเสร็จ</li></ol>', '27-02-2563'),
(49, 'แกงเทโพหมู', '8', 0, '0', '1', 768.36, '<ol><li>ตั้งหม้อใส่กะทิลงไปเพียงครึ่งหนึ่งตั้งไฟกลางจนเดือด ใส่พริกแกงลงไปละลาย คนจนทั่วแล้วจึงใส่หมูสามชั้นที่หั่นพอดีคำลงไปเคี่ยว</li><li>เมื่อเนื้อหมูเริ่มนุ่ม เติมน้ำกะทิที่เหลือลงไปต้มต่อจนเดือด ปรุงรสด้วย น้ำปลา น้ำตาล น้ำมะขามตามด้วย ลูกมะกรูดผ่าครึ่งเขี่ยเม็ดออก บีบน้ำเล็กน้อยและใส่เปลือกลงไปด้วย หลังจากเข้าน้ำเข้าเนื้อ ชิมรสชาติที่ถูกใจ</li><li>เปิดไฟแรงให้กระทิเดือดพล่าน รีบใส่ผักบุ้งที่หั่นพอดีคำลงไป กดให้จมน้ำ คนหนึ่งที ปิดไฟ ตักทานได้เลย</li></ol>', '27-02-2563'),
(50, 'แกงเขียวหวานหมู', '8', 0, '0', '1', 471.6, '<ol><li>ใส่กะทิ ลงในถ้วยแก้วทนไฟหรือชามกระเบื้อง นำเข้าเตาไมโครเวฟ ใช้ไฟแรง ปรุงนานประมาณ 3 นาที จนกะทิเดือดและแตกมัน นำออก &nbsp;</li><li>ใส่น้ำพริกแกงเขียวหวาน คนผสมให้เข้ากัน นำกลับเข้าไมโครเวฟ ใช้ไฟแรง ปรุงนานประมาณ 2 นาที นำออกมา &nbsp;</li><li>ปรุงรสด้วยน้ำปลา และน้ำตาลปี๊บ ชิมรสตามชอบ ใส่เนื้อหมู มะเขือเปราะ และใบมะกรูด คนผสมให้เข้ากัน</li><li>นำเข้าเตาไมโครเวฟ ใช้ไฟกลาง นานประมาณ 3 นาที จนหมูสุก ตักใส่ถ้วย แต่งด้วยช่อโหระพา และพริกชี้ฟ้าแดง พร้อมเสิร์ฟ</li></ol>', '27-02-2563'),
(51, 'แกงเขียวหวานทะเล', '8', 0, '0', '1', 474.1, '<ol><li>เตรียมกุ้งโดยแกะเปลือกผ่าหลังดึงเส้นดำออก ปลาหมึกหั่นเป็นชิ้นบั้งให้สวยงาม หอยแมลงภู่ล้างให้สะอาด ลวกให้สุก &nbsp;</li><li>ตั้งหม้อใส่หัวกะทิ ผัดกับพริกแกงเขียวหวานใช้ไฟอ่อน คอยคนจนกะทิแตกมันใส่กุ้งและปลาหมึกลงไป ผัดพอสุก ใบมะกรูดฉีก ใส่กะทิที่เหลือและน้ำเปล่า รอเดือดใส่หอยแมลงภู่ลวกสุก &nbsp;</li><li>ปรุงรสด้วยน้ำปลาและน้ำตาลปี๊บ ใส่มะเขือเปราะ รอเดือดใส่ใบโหระพา พริกชี้ฟ้าแดงหั่นแฉลบปิดไฟตักเสิร์ฟ</li></ol>', '27-02-2563'),
(52, 'แกงเขียวหวานไก่ยอดมะพร้าว', '8', 0, '0', '1', 475.4, '<ol><li>ตั้งหม้อใส่หัวกะทิลงไป จากนั้นตามด้วยพริกแกงเขียวหวานและพริกแกงแดงแบบเผ็ด เคี่ยวกับหัวกะทิพอแตกมัน &nbsp;</li><li>ใส่อกไก่ลงไปเคี่ยวกับหัวกะทิและพริกแกงจนสุกหอมเข้ากันดี เติมน้ำเปล่า 1 ถ้วยหากไม่มีหางกะทิ พอเดือดแล้วจึงปรุงรส &nbsp;</li><li>ปรุงรสด้วยน้ำปลา น้ำตาลปี๊บ ตามด้วยยอดมะพร้าวอ่อน ตั้งไฟเคี่ยวจนทุกอย่างสุกดี จึงใส่พริกแดง ใบมะกรูด และใบโหระพา</li></ol>', '27-02-2563'),
(53, 'ลูกชิ้นกุ้งระเบิด', '1', 0, '0', '1', 491, '<ol><li>นำเนื้อกุ้ง ซอสปรุงรส รากผักชี กระเทียม พริกไทย น้ำตาล น้ำมันงา &nbsp;</li><li>และไข่ขาวใส่ลงในชามผสมจากนั้นคลุกเคล้าให้เข้ากัน จากนั้นพักไว้</li><li>นำส่วนผสมเมื่อสักครู่ มาปั้นเป็นก้อนกลม จากนั้นคลุกกับขนมปังหั่นเตาที่เตรียมไว้</li><li>ตั้งน้ำมันใช้ไฟปานกลาง นำลูกชิ้นกุ้งระเบิดที่เตรียมไว้ลงไปทอดให้เหลืองกรอบ</li><li>จากนั้นสะเด็ดน้ำมันแล้วจึงตักเสริฟ</li></ol>', '27-02-2563'),
(54, 'ปีกไก่ทอดน้ำปลา', '1', 4.4, '0', '1', 393.8, '<ol><li>นำปีกไก่ล้างทำความสะอาดให้เรียบร้อยนำใส่ชามผสมไว้</li><li>เทน้ำปลา แป้งทอดกรอบ และน้ำเย็นลงในไก่ คลุกเคล้าให้ทั่ว พักทิ้งไว้ 30 นาที</li><li>นำปีกไก่ไปทอดให้สุก สีเหลืองกรอบ นำขึ้นพักไว้ให้สะเด็ดน้ำมัน จัดใส่จานเสิร์ฟ</li></ol>', '27-02-2563'),
(55, 'ปีกไก่ทอดเกลือ', '1', 0, '0', '1', 373, '<ol><li>นำปีกไก่ แป้งทอดกรอบ เกลือ น้ำมันหอย น้ำเปล่า คลุกเคล้าให้เข้ากัน พักทิ้งไว้ประมาณ 30 นาที &nbsp; &nbsp; &nbsp;</li><li>นำตะไคร้และใบมะกรูดทอดในน้ำมันให้กรอบ ตักขึ้นพักไว้ &nbsp;</li><li>นำไก่ไปทอดในน้ำมันร้อนจัด จนไก่สุกเหลืองกรอบ เสิร์ฟพร้อมตะไคร้และใบมะกรูดทอดกรอบ&nbsp;</li></ol>', '27-02-2563'),
(56, 'ปีกไก่ชุปแป้งทอด', '1', 0, '0', '1', 590.8, '<ol><li>นำไก่ไปล้างให้สะอาดแล้วสะเด็ดน้ำให้แห้ง จากนั้นใส่เกลือและใบมะกรูดฉีกลงไปคลุกกับไก่ให้ทั่ว หมักทิ้งไว้ 20-30 นาที</li><li>ค่อยๆ เทน้ำเย็นจัดลงในแป้งชุบทอดพร้อมกับคนผสมแป้งกับน้ำให้ละลายเข้ากัน</li><li>ใส่น้ำมันหอยและซีอิ๊วลงไปผสมให้เข้ากัน แล้วนำไก่ลงไปชุบให้ทั่ว</li><li>ตั้งกระทะใส่น้ำมันให้ร้อน นำไก่ลงทอดจนสุกเหลืองกรอบ ตักขึ้นสะเด็ดน้ำมันจัดเสิร์ฟ</li></ol>', '27-02-2563'),
(57, 'บาร์บีคิวหมู', '1', 0, '0', '1', 548, '<ol><li>แล่สไลด์หมูให้เป็นชิ้นบางๆ ยาวหน่อยจนหมด พักไว้</li><li>หั่นหอมใหญ่ มะเขือเทศ สับปะรดเป็นชิ้นเต๋าและพริกหยวกหั่นแบ่งเป็นชิ้นๆพักไว้</li><li>ใส่ซอสมะเขือเทศ ซอสพริก น้ำมันหอย ซอสปรุงรส เกลือ น้ำตาล พริกไทย &nbsp;</li><li>น้ำมันงาลงไปหมักหมู หมักทิ้งไว้อย่างต่ำ 1-3 ชั่วโมงหรือจะหมักข้ามคืนไว้เลย &nbsp;</li><li>นำมาเสียบไม้ เริ่มจากพวกผักต่างๆก่อนตามด้วยเนื้อหมูที่แล่สไลด์ เสียบจนหมด</li><li>นำไปย่างโดยทาด้วยซอสมะเขือและซอสพริก อัตราส่วน 1ต่อ1 ผสมให้เข้ากัน &nbsp;</li><li>ย่างจนสุกโรยพริกไทยพร้อมเสิร์ฟด้วย</li></ol>', '27-02-2563'),
(58, 'ทอดมันหมู', '1', 0, '0', '1', 265.5, '<ol><li>ผสมหมูบด พริกแกงแดง ไข่ไก่ น้ำปลา น้ำตาลทราย แป้งข้าวโพด เข้าด้วยกัน &nbsp;</li><li>พอเป็นเนื้อเดียวกันแล้วใส่ถั่วฝักยาวและใบมะกรูดลงไป ผสมให้เข้ากัน นำแช่ตู้เย็นประมาณ 30 นาที</li><li>ตั้งน้ำมันไฟปานกลาง พอน้ำมันร้อนแล้ว ปั้นส่วนผสมเป็นก้อนแล้วกดให้แบน &nbsp;</li><li>นำลงทอด สุกแล้วตักขึ้นพักไว้ให้สะเด็ดน้ำมัน พร้อมเสิร์ฟ&nbsp;</li></ol>', '27-02-2563'),
(59, 'ข้าวตู', '1', 0, '0', '1', 214, '<ol><li>ตั้งกระทะด้วยไฟปานกลาง นำน้ำ น้ำตาลทรายแดงและเกลือเทลงไป แล้วคนให้น้ำตาลและ</li><li>เกลือละลายจากนั้นพักไว้ให้เย็น</li><li>ตั้งกระทะใช้ไฟอ่อน นำงาขาวเทลงไปคั่วจนงาขาวมีสีเหลืองทองและกลิ่นหอม จากนั้นพักไว้ให้เย็น</li><li>นำข้าวเหนียวใส่ลงไปในชามผสม จากนั้นนำน้ำตาลทรายแดงที่ต้มเมื่อสักครู่เทลงไปในชามผสม</li><li>คลุกเคล้าให้เข้ากัน</li><li>นำใส่พิมพ์จากนั้นกดให้แน่น แล้วจึงโรยงาขาวปิดท้าย</li><li>นำข้าววิตูแช่ตู้เย็นประมาณ 10-20 นาที เพื่อให้ตัดง่ายขึ้น</li><li>นำข้าววิตูออกจากตู้เย็นแล้วตัดเป็นชิ้นสี่เหลี่ยมจัดเสิร์ฟ</li></ol>', '27-02-2563'),
(60, 'แกงคั่วไก่ใบชะพลู', '8', 0, '0', '1', 520.07, '<ol><li>ตั้งกระทะผัดพริกแกงไฟอ่อนจนหอมเพิ่มเป็นไฟกลาง เติมน้ำกะทิเล็กน้อย ใส่ไก่ตามลงไปคั่วจนสุกเล็กน้อย เติมกะทิที่เหลือ รอจนเดือดเบาๆ ปรุงรสด้วยน้ำปลา น้ำตาลปี๊ป ชิมรสชาติ</li><li>ซอยหรือฉีกใบชะพลูและใบมะกรูดลงไป คนเล็กน้อยก่อนปิดไฟเสริฟ ทานกับข้าวสวยร้อนๆ</li></ol>', '27-02-2563'),
(61, 'อุด้งน้ำใส', '7', 0, '0', '1', 580.9, '<ol><li>หั่นอกไก่ออกเป็นชิ้นๆพักไว้ นำหม้อใส่น้ำเปล่าต้มให้เดือด นำเนื้อไก่ลงไปลวกจนสุก ตักขึ้นพักไว้</li><li>ใส่แครอทและหอมใหญ่ลงไปต้มต่อจนสุก ปรุงรสด้วยเกลือและพริกไทย &nbsp;</li><li>ใส่เส้นอุด้งลงไปต้มไฟกลางต่อประมาณ 3 นาที ใส่น้ำมันงาปิดเตา เทใส่ถ้วยวางไก่ที่ลวกไว้ลงไป &nbsp;</li><li>โรยต้นหอมซอย พร้อมเสิร์ฟ</li></ol>', '27-02-2563'),
(62, 'ซุปฟักทอง', '7', 0, '0', '1', 391.2, '<ol><li>นำฟักทองต้มสุก ปั่นกับน้ำสต๊อกไก่ให้เนียนเข้ากันดี</li><li>เทส่วนผสมลงหม้อ ตั้งไฟให้เดือด ปรุงรสด้วยเกลือ ตามชอบ</li><li>ใส่ไข่แดง ตีให้เข้ากัน เติมครีม เติมเนยจืดเย็น จัดเสิร์ฟพร้อมขนมปัง&nbsp;</li></ol>', '27-02-2563'),
(63, 'ซุปครีมมันฝรั่งหอยลาย', '7', 0, '0', '1', 463.19, '<ol><li>ตั้งกระทะใส่น้ำมันมะกอกพอร้อน ใส่หอมใหญ่ ต้นกระเทียม และแครอทลงผัด</li><li>ใส่หอยลายลงผัด ตามด้วยไวน์ขาวและใบกระวาน ปล่อยให้ไวน์โดนความร้อนจนแอลกอฮอล์ระเหยออก</li><li>ใส่ครีมและน้ำสต๊อก เปิดไปแรงพอเดือด แล้วลดไฟอ่อนเคี่ยวต่อ 30 นาที</li><li>ใส่มันฝรั่งบดชนิดผงลงผสมให้เข้ากัน เพื่อเพิ่มความข้นหนืดให้กับอาหาร</li><li>ปรุงรสเล็กน้อยด้วยเกลือและพริกไทยขาว</li></ol>', '27-02-2563'),
(64, 'ซุปไก่ข้นนมจืด', '7', 0, '0', '1', 293.99, '<ol><li>ตั้งกระทะด้วยไฟอ่อน ใส่เนย หอมใหญ่ ลงไปผัดให้เข้ากัน</li><li>ใส่เนื้อไก่ลงไปผัดไม่ต้องสุก เติมนมจืดคนให้เข้ากัน</li><li>เมื่อนมเดือดให้ใส่แป้งสาลีที่ละลายน้ำแล้ว คนจนซุปเป็นครีมข้น พร้อมเสิร์ฟ</li></ol>', '27-02-2563'),
(65, 'ซุปไก่ข้น', '7', 0, '0', '1', 775.7, '<ol><li>นำอกไก่ มาแบ่งเป็น 2 ส่วน ส่วนที่1 ฉีกไว้แต่หน้า</li><li>นำหอมใหญ่สับ ผัดกับน้ำมันมะกอก เติมไส้กรอกรมควัน เนื้อไก่ เติมน้ำสต๊อก ตั้งให้เดือดแล้วนำไปปั่น</li><li>เทส่วนผสมที่ปั่นเข้ากันดีแล้วกลับลงหม้อ ตั้งไฟให้งวดลงเล็กน้อย &nbsp;</li><li>ปรุงรสด้วย เกลือ พริกไทย เติมครีม และเนยจืดเย็นคนให้เข้ากันดี จัดเสิร์ฟ พร้อมขนมปัง</li></ol>', '27-02-2563'),
(66, 'ไข่น้ำอนามัย', '7', 0, '0', '1', 271.98, '<ol><li>ต้มน้ำสต๊อกไก่ให้เดือด</li><li>ลงหอมหัวใหญ่ซอย</li><li>รอจนเดือดจัด จึงลงไข่ไก่ที่เราตีเตรียมไว้</li><li>ลงเต้าหู้</li><li>โรยด้วยต้นหอมก่อนเสิร์ฟ</li></ol>', '27-02-2563'),
(67, 'โป๊ะแตกต้มยำทะเลน้ำใส', '5', 0, '0', '1', 307.97, '<ol><li>ตั้งน้ำให้เดือด ใส่ รากผักชี ข่า ตะไคร้ ใบมะกรูด หอมแดง และ พริกแดง &nbsp;</li><li>จากนั้นใส่กุ้ง ปลาหมึก ปลาดอลลี่ และหอยแมลงภู่ ใส่เกลือเล็กน้อ</li><li>เมื่อเนื้อสัตว์สุกแล้ว ใส่เห็ดฟาง</li><li>ปรุงรสด้วยน้ำปลา น้ำตาลปิ๊ปเล็กน้อย เติมเกลือ ชิมรสตามใจชอบ</li><li>หลังจากเดือดแล้วปิดไฟใส่มะนาว ตามด้วย ผักชีฝรั่ง และใบกะเพรา</li></ol>', '27-02-2563'),
(68, 'ซุปหอมใหญ่', '7', 0, '0', '1', 350.8, '<ol><li>นำหอมใหญ่ลงผัดกับน้ำมันมะกอก เติมกระเทียม ผัดจนนิ่มที่สุด</li><li>เติมไวน์แดงและผัดจนใบกระวานงวด</li><li>เติมน้ำสต๊อก เคี่ยวไปประมาณ 10 – 15 นาที ระหว่างนั้น ช้อนฟองทิ้งด้วย</li><li>พอได้ที่ เติมเกลือ พริกไทยตามชอบ</li><li>พร้อมจัดเสิร์ฟ</li></ol>', '27-02-2563'),
(69, 'ซุปไก่', '7', 0, '0', '1', 429.79, '<ol><li>ตั้งไฟกลางค่อนข้างแรง ตั้งหม้อ ใช้เนย หรือน้ำมันธรรมดา ใส่ในหม้อ 1 ช้อนโต๊ะ ผัดหัวหอมหั่นเต๋าใหญ่ให้หอมตามด้วย &nbsp;</li><li>โป๊ยกัก ใบกระวาน อบเชยทันที ผัดแค่ให้หอม ใส่ไก่ลงไปในหม้อเปิดไฟแรงตามด้วยน้ำซุป ครึ่งลิตร เกลือ รากผักชี ปิดฟา ห้ามคนรอเดือดรอบแรก</li><li>พอน้ำเดือดเปิดฝา ช้อนฟองและน้ำมันไก่ที่ลอยหน้าทิ้ง เติมน้ำที่เหลือ มันฝรั่งเต๋า มะเขือเทศหั่นหรือทั้งลูก เคี่ยวต่อจนสุก &nbsp;</li><li>หรือเปื่อยเลยก็ได้ &nbsp;ชิมรสชาติ แล้วปิดไฟ เตรียมเสริฟ</li><li>ตำพริกขี้หนู และ น้ำมะนาวลงในถ้วย (จะให้รสชาติของที่สดกว่า) เทซุปในหม้อลงจาน คนให้เข้ากันชิมอีกที</li><li>พอได้ที่แล้วโรยด้วยหอมเจียว เป็นอันเสร็จ</li></ol>', '27-02-2563'),
(70, 'ซุปหอยตลับ', '7', 0, '0', '1', 258, '<ol><li>ตั้งน้ำมันไฟกลางให้พอร้อน นำผักลงผัดพอได้ที่</li><li>เติมน้ำเปล่าลง แล้วรอให้เดือด</li><li>ใส่หอยลงต้มเพื่อให้ได้กลิ่นและรสธรรมชาติ ระวังอย่างให้หอยสุกเกินไป จะทำให้แข็งกระด้าง</li><li>4. &nbsp;ปรุงรสเกลือ พริกไทย ตามชอบ จัดเสิร์ฟให้สวยงาม</li></ol>', '27-02-2563'),
(71, 'ต้มส้มปลาหมึกยัดไส้หมูบด', '5', 0, '0', '1', 599.8, '<ol><li>ตำเครื่องแกง ด้วยการโขลกพริกไทย รากผักชี หอมแดง กะปิ พักไว้ก่อน</li><li>หมักหมูด้วยน้ำมันหอย ซีอิ๊วขาวพักไว้</li><li>ยัดหมูลงในปลาหมึกทีละตัว ทำจนครบทุกตัว</li><li>ต้มน้ำให้เดือด ใส่เครื่องแกงลงไป ปรุงรสด้วยน้ำปลา น้ำมะขามเปียก น้ำตาลปี๊บ คนให้เข้ากัน</li><li>พอน้ำแกงเดือดอีกครั้ง ใส่ปลาหมึก ขิงซอย พอสุก ปิดไฟ ยกลงจากเตาใส่ต้นหอมหั่นท่อน ตักใส่ชามเสิร์ฟ</li></ol>', '27-02-2563'),
(72, 'ต้มยำปลานิลน้ำใส', '5', 0, '0', '1', 436, '<ol><li>เริ่มจากการเตรียมหม้อใส่น้ำต้มให้เดือด ใส่เกลือ ข่า ตะไคร้ทุบ รากผักชี หอมแดง กระเทียม</li><li>ปิดฝาต้มต่อให้เดือดและเครื่องสมุนไพรหอมดี ใส่ปลาหมอลงไป ห้ามคนเดี๋ยวจะคาว ต้มให้เดือด ตามด้วยมะเขือเทศและใบมะกรูดฉีก</li><li>ใส่น้ำมะขามเปียก น้ำปลา ลงไป ต้มให้เดือดอีกรอบ แล้วลองเช็คเนื้อปลาให้สุกนุ่มดี</li><li>ใส่พริกแดง พริกขี้หนูสวนลงไป ชิมรสแล้วปรุงตามชอบ ปรุงให้ออกเผ็ดเค็ม เปรี้ยวนิดๆ ใส่ผักชีลาวลงไป ปิดไฟ แล้วบีบมะนาวลงไป จัดใส่จานเสิร์ฟ</li></ol>', '27-02-2563'),
(73, 'ต้มยำปลากระป๋อง', '5', 0, '0', '1', 326.74, '<ol><li>ใส่น้ำในหม้อ นำมาต้มจนเริ่มเดือดใส่ตะไคร้ หอมแดง ข่า ใบมะกรูด ต้มจนน้ำเดือดอีกครั้ง เทปลากระป๋องลงไป ตามด้วยเห็ด รอจนเห็ดสุก</li><li>ปรุงรสด้วยน้ำปลา น้ำตาล และพริก ปิดไฟ บีบมะนาวลงไป คนพอเข้ากัน จัดเสิร์ฟ</li></ol>', '27-02-2563'),
(74, 'ต้มผักกาดดองหมูสั้น', '5', 0, '0', '1', 292, '<ol><li>นำผักกาดดอง นำมาล้างน้ำให้สะอาด แล้วบีบน้ำออก แล้วสะเด็ดน้ำออกให้หมด เพื่อลดความเค็มของผักกาดดอง จากนั้นนำมาหั่นเป็นชิ้นๆ ขนาดพอคำ เตรียมไว้</li><li>นำหม้อใส่น้ำตั้งไฟกลาง รอให้น้ำเดือด จากนั้นใส่หมู และผักกาดดองลงไป จากนั้นรอให้น้ำเดือดอีกครั้ง จากนั้นปรับไฟอ่อน แล้วปิดฝาหม้อ ต้มเคี่ยวจนหมูนุ่ม ผักกาดดองเริ่มเปื่อยน้ำงวดลง ใช้เวลาต้มเคี่ยวประมาณ 1 ชั่วโมง</li><li>เมื่อต้มเคี่ยวจนได้ที่แล้ว จากนั้นใส่เกลือป่น ซีอิ๊วขาว กระเทียมทุบบุบ รากผักชีทุบ พริกไทยป่นลงไป แล้วคนให้เข้ากัน จากนั้นรอให้เดือดอีกครั้ง แล้วปิดไฟยกลง พร้อมจัดเสิร์ฟ</li></ol>', '27-02-2563'),
(75, 'ต้มส้มปลาทูสด', '5', 0, '0', '1', 809.65, '<ol><li>โขลกรากผักชี พริกไทยขาว ให้ละเอียด ใส่หอมแดงโขลกต่อให้ละเอียด ใส่กะปิโขลกให้เข้ากัน</li><li>ต้มน้ำพอเดือด ใส่เครื่องที่โขลกลงไป ปรุงรสด้วยน้ำมะขามเปียก น้ำตาลมะพร้าวและน้ำปลา ชิมรสหวาน เปรี้ยว เค็ม ต้มพอเดือด</li><li>ใส่ปลาทูสด ใส่ขิงซอย ต้มจนเนื้อปลาสุกยกลง ตักใส่ชาม โรยหน้าด้วยต้มหอมและขึ้นฉ่าย</li></ol>', '27-02-2563'),
(76, 'ต้มแซ่บปลาทู', '5', 0, '0', '1', 555.6, '<ol><li>ควักเหงือกและไส้ปลาทูสดออก ล้างให้สะอาดพักไว้ให้สะเด็ดน้ำ หั่นกลางตัว เป็น 2 ชิ้น &nbsp;</li><li>ต้มน้ำเปล่าด้วยไฟปานกลางพอเดือด ใส่ข่า ตะไคร้ ใบมะกรูด รากผักชี หอมแดง เติมเกลือเล็กน้อย</li><li>หรี่ไฟอ่อนใส่ปลาทู มะเขือเทศ น้ำปลา น้ำตาลปี๊บ ต้มพอปลาทูสุก ตักใส่ชาม &nbsp;</li><li>ปรุงรสด้วยน้ำมะนาว น้ำมะขามเปียก พริกขี้หนูบุบ คนให้เข้ากัน โรยด้วยผักชี ต้นหอม ผักชีฝรั่ง พร้อมจัดเสิร์ฟ</li></ol>', '27-02-2563'),
(77, 'ลาบปลาหมึก', '2', 0, '0', '1', 345.4, '<ol><li>หั่นปลาหมึกเป็นแว่นๆ จากนั้นนำปลาหมึกไปลวกให้สุก นำมาปรุงรสด้วยน้ำปลา น้ำมะนาว ข้าวคั่ว และพริกขี้หนูคั่วป่น</li><li>ตามด้วยหอมแดงซอย ผักชีซอย และต้นหอมซอย เสร็จแล้วก็คลุกเคล้าให้เข้ากัน โรยใบสะระแหน่จากนั้นก็ตักใส่จานเสิร์ฟ</li></ol>', '27-02-2563'),
(78, 'ยำผักบุ้งกุ้งสด', '2', 0, '0', '1', 239.06, '<ol><li>ต้มน้ำเปล่าพอเดือด ใส่ผักบุ้งไทยลงลวกจนสุก ตักขึ้นแช่น้ำเย็น แล้วตักขึ้นพักไว้ให้สะเด็ดน้ำ แล้วนำกุ้งกับหมูสับลงลวกให้สุก ตักขึ้นพักไว้</li><li>ผสมพริกสด น้ำปลา น้ำมะนาว น้ำตาลทราย คนให้เข้ากัน</li><li>ใส่หมูสับ กุ้ง ผักบุ้งลวก คลุกเคล้าให้เข้ากัน โรยหอมแดง คลุกเคล้าให้เข้ากันอีกครั้ง ตักใส่ภาชนะ จัดเสิร์ฟ</li></ol>', '27-02-2563'),
(79, 'ยำไข่แดง', '3', 0, '0', '1', 316.82, '<ol><li>นำไข่แดงเค็มนึ่งในน้ำเดือดไฟปานกลางประมาณ 10 นาที หรือจนสุกผ่าครึ่งลูกเตรียมไว้</li><li>ผสมน้ำมะนาว น้ำปลา น้ำตาลปี๊บ คนให้เข้ากันใส่พริกขี้หนูสวน</li><li>ใส่ไข่แดงเค็ม หอมหัวใหญ่ มะเขือเทศ และน้ำยำลงในอ่างผสมคลุกเคล้าพอเข้ากันดี โรยต้นหอมตักใส่จาน จัดเสิร์ฟ</li></ol>', '27-02-2563'),
(80, 'ก้อยกุ้ง', '2', 0, '0', '1', 288.3, '<ol><li>นำกุ้งมาแกะ ผ่าหลัง ล้างให้สะอาด แล้วนำกุ้งมาแช่น้ำมะนาวไว้สักครู่ จะเปลี่ยนเป็นสีขาวหรือบางคนเรียกว่าสุกมะนาว จากนั้นตักเนื้อกุ้งแยกออกมาพักไว้ &nbsp;</li><li>นำน้ำมะนาวที่เหลือมาผสมกับพริกป่น น้ำตาล น้ำปลา ข้าวคั่ว ตะไคร้ พริกสด ผักชีฝรั่ง หอมแดงซอย ตามด้วยกุ้งสด คลุกเคล้าให้เข้ากัน โรยใบสะระแหน่ จัดเสิร์ฟ</li></ol>', '27-02-2563'),
(81, 'ต้มแซ่บกระดูกหมูอ่อน', '5', 3, '2', '0', 626.2, '<ol><li>นำน้ำเปล่าเทลงในหม้อแล้วนำไปตั้งไฟ เติมผงปรุงรส เกลือป่นลงไป &nbsp;</li><li>เมื่อน้ำเดือดจัดให้ใส่กระดูกหมูอ่อนลงไป ค่อยช้อนฟองขาวๆ ออกให้หมด &nbsp;</li><li>จากนั้นลดไฟเคี่ยวให้กระดูกหมูเปื่อย และเติมข่า ตะไคร้ ใบมะกรูดฉีกลงไปต้มต่อสักพักก่อนปรุงรส</li><li>ใส่น้ำปลา พริกขี้หนูสวน ข้าวคั่ว พริกป่น และปิดไฟ จากนั้นเติมน้ำมะนาว โรยต้นหอมซอยและผักชีฝรั่งซอย จากนั้นตักใส่ถ้วย เตรียมข้าวเหนียวและก็ซดโล้ด</li></ol>', '27-02-2563'),
(82, 'เนื้อทอด', '3', 0, '2', '0', 441.5, '<ol><li>หั่นเนื้อวัวเป็นชิ้นยาว ๆ หมักกับน้ำปลาและพริกไทยเคล้าผสมให้เข้ากัน นำเข้าตู้เย็นหมักไว้ประมาณ 2 ชั่วโมง (เนื้อเริ่มจะแห้งเพราะในตู้เย็นมีความชื้นต่ำ ถ้าเอาไปตากแดดก็จะได้เป็นเนื้อแดดเดียว)</li><li>ใส่น้ำมันพืชลงในกระทะให้เยอะพอสมควร นำขึ้นตั้งไฟแรง พอน้ำมันร้อนใส่เนื้อที่หมักไว้ลงไปทอดทีละครึ่งหนึ่ง ทอดประมาณ 9 นาที</li><li>ตักขึ้นสะเด็ดน้ำมัน ใส่จานพร้อมเสิร์ฟ</li></ol>', '27-02-2563');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;