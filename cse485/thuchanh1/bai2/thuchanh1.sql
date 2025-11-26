-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 26, 2025 at 03:39 PM
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
-- Database: `thuchanh1`
--

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int(11) NOT NULL,
  `quiz_id` int(11) DEFAULT NULL,
  `content` text NOT NULL,
  `multi_answer` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `quiz_id`, `content`, `multi_answer`) VALUES
(1, 1, 'Thành phần nào sau đây KHÔNG phải là một thành phần giao diện người dùng (UI) trong Android?\r', 0),
(2, 1, 'Layout nào thường được sử dụng để sắp xếp các thành phần UI theo chiều dọc hoặc chiều ngang?\r', 0),
(3, 1, 'Intent trong Android được sử dụng để làm gì?\r', 0),
(4, 1, 'Vòng đời của một Activity bắt đầu bằng phương thức nào?\r', 0),
(5, 1, 'Để xử lý sự kiện click chuột cho một Button, bạn cần sử dụng phương thức nào?\r', 0),
(6, 1, 'Kiểu dữ liệu nào sau đây được sử dụng để lưu trữ giá trị đúng hoặc sai?\r', 0),
(7, 1, 'SharedPreferences trong Android được sử dụng để làm gì?\r', 0),
(8, 1, 'Toast trong Android được sử dụng để làm gì?\r', 0),
(9, 1, 'Để tạo một ứng dụng Android, bạn cần sử dụng ngôn ngữ lập trình nào?\r', 1),
(10, 1, 'Adapter trong Android được sử dụng để làm gì?\r', 0),
(11, 1, 'Fragment trong Android là gì?\r', 0),
(12, 1, 'RecyclerView là gì?\r', 0),
(13, 1, 'Manifest file trong Android được sử dụng để làm gì?\r', 0),
(14, 1, 'Gradle là gì?\r', 0),
(15, 1, 'AsyncTask được sử dụng để làm gì?\r', 0),
(16, 1, 'ContentProvider được sử dụng để làm gì?\r', 0),
(17, 1, 'SQLite là gì?\r', 0),
(18, 1, 'BroadcastReceiver được sử dụng để làm gì?\r', 0),
(19, 1, 'Service là gì?\r', 0),
(20, 1, 'Thread là gì?\r', 0),
(21, 1, 'Activity Lifecycle là gì?\r', 0),
(22, 1, 'Layout inflater được sử dụng để làm gì?\r', 0),
(23, 1, 'Drawable là gì?\r', 0),
(24, 1, 'dp là gì?\r', 0),
(25, 1, 'Để định nghĩa một màu sắc trong Android, bạn sử dụng kiểu dữ liệu nào?\r', 1),
(26, 1, 'ViewGroup là gì?\r', 0),
(27, 1, 'Thuộc tính android:layout_width=\"match_parent\" có ý nghĩa gì?\r', 0),
(28, 1, 'Thuộc tính android:gravity được sử dụng để làm gì?\r', 0),
(29, 1, 'AndroidManifest.xml nằm ở đâu trong project Android?\r', 0),
(30, 1, 'Để chạy một ứng dụng Android trên thiết bị thật, bạn cần làm gì?\r', 0),
(31, 1, 'dp và sp khác nhau như thế nào?\r', 0),
(32, 1, 'AlertDialog được sử dụng để làm gì?\r', 0),
(33, 1, 'Intent Filter được sử dụng để làm gì?\r', 0),
(34, 1, 'Serializable là gì?\r', 0),
(35, 1, 'Sự khác nhau giữa ListView và RecyclerView là gì?\r', 0),
(36, 1, 'ViewHolder pattern được sử dụng để làm gì?\r', 0),
(37, 1, 'Data Binding là gì?\r', 0),
(38, 1, 'MVVM là gì?\r', 0),
(39, 1, 'Retrofit là gì?\r', 0),
(40, 1, 'Gson là gì?\r', 0),
(41, 1, 'Picasso là gì?\r', 0),
(42, 1, 'Firebase là gì?\r', 0),
(43, 1, 'ConstraintLayout là gì?\r', 0),
(44, 1, 'DataBinding giúp giảm thiểu việc viết code ở đâu?\r', 0),
(45, 1, 'ViewModel trong kiến trúc MVVM có nhiệm vụ gì?\r', 0),
(46, 1, 'LiveData là gì?\r', 0),
(47, 1, 'Room là gì?\r', 0),
(48, 1, 'Jetpack Compose là gì?\r', 0),
(49, 1, 'Những thành phần nào sau đây có thể được sử dụng để hiển thị danh sách trong Android? (Chọn 2 đáp án)\r', 1),
(50, 1, 'Những phát biểu nào sau đây đúng về Intent? (Chọn 2 đáp án)\r', 1),
(51, 1, 'Những phương thức nào sau đây thuộc vòng đời của một Activity? (Chọn 3 đáp án)\r', 1),
(52, 1, 'Những thư viện nào sau đây thường được sử dụng trong lập trình Android? (Chọn 3 đáp án)\r', 1),
(53, 1, 'Những lợi ích nào khi sử dụng ConstraintLayout? (Chọn 2 đáp án)\r', 1),
(54, 1, 'Những thành phần nào sau đây thuộc kiến trúc MVVM? (Chọn 3 đáp án)\r', 1),
(55, 1, 'Những công cụ nào sau đây có thể được sử dụng để debug ứng dụng Android? (Chọn 2 đáp án)\r', 1),
(56, 1, 'Những kỹ thuật nào sau đây giúp tối ưu hóa hiệu năng ứng dụng Android? (Chọn 3 đáp án)\r', 1),
(57, 1, 'Những khái niệm nào sau đây liên quan đến việc lưu trữ dữ liệu trong Android? (Chọn 3 đáp án)\r', 1);

-- --------------------------------------------------------

--
-- Table structure for table `question_correct_answers`
--

CREATE TABLE `question_correct_answers` (
  `id` int(11) NOT NULL,
  `question_id` int(11) DEFAULT NULL,
  `correct_opt` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `question_correct_answers`
--

INSERT INTO `question_correct_answers` (`id`, `question_id`, `correct_opt`) VALUES
(1, 1, 'C'),
(2, 2, 'B'),
(3, 3, 'C'),
(4, 4, 'C'),
(5, 5, 'A'),
(6, 6, 'D'),
(7, 7, 'C'),
(8, 8, 'B'),
(9, 9, 'C'),
(10, 9, 'D'),
(11, 10, 'A'),
(12, 11, 'B'),
(13, 12, 'A'),
(14, 13, 'A'),
(15, 14, 'A'),
(16, 15, 'A'),
(17, 16, 'A'),
(18, 17, 'A'),
(19, 18, 'A'),
(20, 19, 'A'),
(21, 20, 'A'),
(22, 21, 'A'),
(23, 22, 'A'),
(24, 23, 'A'),
(25, 24, 'A'),
(26, 25, 'C'),
(27, 25, 'D'),
(28, 26, 'A'),
(29, 27, 'B'),
(30, 28, 'A'),
(31, 29, 'C'),
(32, 30, 'A'),
(33, 31, 'A'),
(34, 32, 'A'),
(35, 33, 'B'),
(36, 34, 'A'),
(37, 35, 'D'),
(38, 36, 'A'),
(39, 37, 'A'),
(40, 38, 'A'),
(41, 39, 'A'),
(42, 40, 'A'),
(43, 41, 'A'),
(44, 42, 'A'),
(45, 43, 'A'),
(46, 44, 'B'),
(47, 45, 'A'),
(48, 46, 'A'),
(49, 47, 'A'),
(50, 48, 'A'),
(51, 49, 'B'),
(52, 49, 'D'),
(53, 50, 'A'),
(54, 50, 'C'),
(55, 51, 'A'),
(56, 51, 'C'),
(57, 51, 'D'),
(58, 51, 'E'),
(59, 52, 'A'),
(60, 52, 'B'),
(61, 52, 'C'),
(62, 53, 'A'),
(63, 53, 'B'),
(64, 54, 'A'),
(65, 54, 'B'),
(66, 54, 'D'),
(67, 55, 'A'),
(68, 55, 'B'),
(69, 55, 'C'),
(70, 56, 'A'),
(71, 56, 'B'),
(72, 56, 'C'),
(73, 56, 'D'),
(74, 57, 'A'),
(75, 57, 'B'),
(76, 57, 'C');

-- --------------------------------------------------------

--
-- Table structure for table `question_options`
--

CREATE TABLE `question_options` (
  `id` int(11) NOT NULL,
  `question_id` int(11) DEFAULT NULL,
  `opt` char(1) NOT NULL,
  `content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `question_options`
--

INSERT INTO `question_options` (`id`, `question_id`, `opt`, `content`) VALUES
(1, 1, 'A', 'A. TextView'),
(2, 1, 'B', 'B. Button'),
(3, 1, 'C', 'C. Service'),
(4, 1, 'D', 'D. ImageView'),
(5, 2, 'A', 'A. RelativeLayout'),
(6, 2, 'B', 'B. LinearLayout'),
(7, 2, 'C', 'C. FrameLayout'),
(8, 2, 'D', 'D. ConstraintLayout'),
(9, 3, 'A', 'A. Hiển thị thông báo cho người dùng.'),
(10, 3, 'B', 'B. Lưu trữ dữ liệu.'),
(11, 3, 'C', 'C. Khởi chạy Activity.'),
(12, 3, 'D', 'D. Xử lý sự kiện chạm.'),
(13, 4, 'A', 'A. onStart()'),
(14, 4, 'B', 'B. onResume()'),
(15, 4, 'C', 'C. onCreate()'),
(16, 4, 'D', 'D. onPause()'),
(17, 5, 'A', 'A. onClick()'),
(18, 5, 'B', 'B. onTouch()'),
(19, 5, 'C', 'C. onLongClick()'),
(20, 5, 'D', 'D. onFocusChange()'),
(21, 6, 'A', 'A. int'),
(22, 6, 'B', 'B. float'),
(23, 6, 'C', 'C. String'),
(24, 6, 'D', 'D. boolean'),
(25, 7, 'A', 'A. Lưu trữ dữ liệu có cấu trúc.'),
(26, 7, 'B', 'B. Truy cập cơ sở dữ liệu SQLite.'),
(27, 7, 'C', 'C. Lưu trữ dữ liệu dạng key-value.'),
(28, 7, 'D', 'D. Gửi dữ liệu qua mạng.'),
(29, 8, 'A', 'A. Hiển thị một hộp thoại.'),
(30, 8, 'B', 'B. Hiển thị một thông báo ngắn gọn cho người dùng.'),
(31, 8, 'C', 'C. Phát nhạc.'),
(32, 8, 'D', 'D. Chụp ảnh màn hình.'),
(33, 9, 'A', 'A. C++'),
(34, 9, 'B', 'B. Python'),
(35, 9, 'C', 'C. Java'),
(36, 9, 'D', 'D. Kotlin'),
(37, 10, 'A', 'A. Kết nối dữ liệu với ListView hoặc RecyclerView.'),
(38, 10, 'B', 'B. Tạo hiệu ứng động.'),
(39, 10, 'C', 'C. Xử lý sự kiện cảm ứng.'),
(40, 10, 'D', 'D. Lưu trữ dữ liệu.'),
(41, 11, 'A', 'A. Một Activity con.'),
(42, 11, 'B', 'B. Một thành phần UI có thể tái sử dụng.'),
(43, 11, 'C', 'C. Một dịch vụ chạy nền.'),
(44, 11, 'D', 'D. Một kiểu dữ liệu.'),
(45, 12, 'A', 'A. Một thành phần UI để hiển thị danh sách.'),
(46, 12, 'B', 'B. Một layout để sắp xếp các thành phần UI.'),
(47, 12, 'C', 'C. Một lớp để xử lý sự kiện.'),
(48, 12, 'D', 'D. Một kiểu dữ liệu.'),
(49, 13, 'A', 'A. Khai báo các thành phần của ứng dụng.'),
(50, 13, 'B', 'B. Lưu trữ dữ liệu.'),
(51, 13, 'C', 'C. Xử lý sự kiện.'),
(52, 13, 'D', 'D. Tạo giao diện người dùng.'),
(53, 14, 'A', 'A. Một công cụ để quản lý dependencies.'),
(54, 14, 'B', 'B. Một ngôn ngữ lập trình.'),
(55, 14, 'C', 'C. Một IDE để phát triển ứng dụng Android.'),
(56, 14, 'D', 'D. Một framework.'),
(57, 15, 'A', 'A. Xử lý các tác vụ chạy nền.'),
(58, 15, 'B', 'B. Tạo hiệu ứng động.'),
(59, 15, 'C', 'C. Vẽ đồ họa.'),
(60, 15, 'D', 'D. Lưu trữ dữ liệu.'),
(61, 16, 'A', 'A. Chia sẻ dữ liệu giữa các ứng dụng.'),
(62, 16, 'B', 'B. Tạo giao diện người dùng.'),
(63, 16, 'C', 'C. Xử lý sự kiện.'),
(64, 16, 'D', 'D. Lưu trữ dữ liệu.'),
(65, 17, 'A', 'A. Một hệ quản trị cơ sở dữ liệu.'),
(66, 17, 'B', 'B. Một ngôn ngữ lập trình.'),
(67, 17, 'C', 'C. Một framework.'),
(68, 17, 'D', 'D. Một IDE.'),
(69, 18, 'A', 'A. Nhận các thông báo từ hệ thống.'),
(70, 18, 'B', 'B. Gửi dữ liệu qua mạng.'),
(71, 18, 'C', 'C. Tạo giao diện người dùng.'),
(72, 18, 'D', 'D. Xử lý sự kiện.'),
(73, 19, 'A', 'A. Một thành phần ứng dụng chạy nền.'),
(74, 19, 'B', 'B. Một thành phần UI.'),
(75, 19, 'C', 'C. Một kiểu dữ liệu.'),
(76, 19, 'D', 'D. Một lớp để xử lý sự kiện.'),
(77, 20, 'A', 'A. Một luồng xử lý.'),
(78, 20, 'B', 'B. Một thành phần UI.'),
(79, 20, 'C', 'C. Một kiểu dữ liệu.'),
(80, 20, 'D', 'D. Một lớp để xử lý sự kiện.'),
(81, 21, 'A', 'A. Quá trình tạo, khởi động, tạm dừng và hủy một Activity.'),
(82, 21, 'B', 'B. Vòng đời của một ứng dụng Android.'),
(83, 21, 'C', 'C. Quá trình tải dữ liệu từ mạng.'),
(84, 21, 'D', 'D. Quá trình lưu trữ dữ liệu.'),
(85, 22, 'A', 'A. Tạo các đối tượng View từ file XML.'),
(86, 22, 'B', 'B. Sắp xếp các thành phần UI.'),
(87, 22, 'C', 'C. Xử lý sự kiện.'),
(88, 22, 'D', 'D. Lưu trữ dữ liệu.'),
(89, 23, 'A', 'A. Một tài nguyên đồ họa.'),
(90, 23, 'B', 'B. Một thành phần UI.'),
(91, 23, 'C', 'C. Một kiểu dữ liệu.'),
(92, 23, 'D', 'D. Một lớp để xử lý sự kiện.'),
(93, 24, 'A', 'A. Đơn vị đo lường độc lập với mật độ điểm ảnh.'),
(94, 24, 'B', 'B. Đơn vị đo lường phụ thuộc vào mật độ điểm ảnh.'),
(95, 24, 'C', 'C. Một kiểu dữ liệu.'),
(96, 24, 'D', 'D. Một lớp để xử lý sự kiện.'),
(97, 25, 'A', 'A. Integer'),
(98, 25, 'B', 'B. String'),
(99, 25, 'C', 'C. Color'),
(100, 25, 'D', 'D. Hexadecimal'),
(101, 26, 'A', 'A. Một lớp cơ sở cho tất cả các layout.'),
(102, 26, 'B', 'B. Một thành phần UI để hiển thị hình ảnh.'),
(103, 26, 'C', 'C. Một kiểu dữ liệu.'),
(104, 26, 'D', 'D. Một lớp để xử lý sự kiện.'),
(105, 27, 'A', 'A. Thành phần UI sẽ có chiều rộng bằng với chiều rộng của thiết bị.'),
(106, 27, 'B', 'B. Thành phần UI sẽ có chiều rộng bằng với chiều rộng của thành phần cha.'),
(107, 27, 'C', 'C. Thành phần UI sẽ có chiều rộng cố định là 100dp.'),
(108, 27, 'D', 'D. Thành phần UI sẽ tự động điều chỉnh chiều rộng.'),
(109, 28, 'A', 'A. Căn chỉnh nội dung của một thành phần UI.'),
(110, 28, 'B', 'B. Thay đổi vị trí của một thành phần UI.'),
(111, 28, 'C', 'C. Thay đổi kích thước của một thành phần UI.'),
(112, 28, 'D', 'D. Thay đổi màu sắc của một thành phần UI.'),
(113, 29, 'A', 'A. Thư mục /res'),
(114, 29, 'B', 'B. Thư mục /src'),
(115, 29, 'C', 'C. Thư mục gốc của project'),
(116, 29, 'D', 'D. Thư mục /assets'),
(117, 30, 'A', 'A. Kết nối thiết bị với máy tính và bật chế độ USB debugging.'),
(118, 30, 'B', 'B. Cài đặt Android Studio trên thiết bị.'),
(119, 30, 'C', 'C. Chạy lệnh adb install trên máy tính.'),
(120, 30, 'D', 'D. Cả A và C.'),
(121, 31, 'A', 'A. dp là đơn vị đo lường độc lập với mật độ điểm ảnh, sp là đơn vị đo lường phụ thuộc vào mật độ điểm ảnh.'),
(122, 31, 'B', 'B. dp được sử dụng cho kích thước font chữ, sp được sử dụng cho kích thước các thành phần UI khác.'),
(123, 31, 'C', 'C. dp là đơn vị đo lường phụ thuộc vào mật độ điểm ảnh, sp là đơn vị đo lường độc lập với mật độ điểm ảnh.'),
(124, 31, 'D', 'D. dp và sp giống nhau.'),
(125, 32, 'A', 'A. Hiển thị một hộp thoại cho người dùng.'),
(126, 32, 'B', 'B. Hiển thị một thông báo ngắn gọn cho người dùng.'),
(127, 32, 'C', 'C. Phát nhạc.'),
(128, 32, 'D', 'D. Chụp ảnh màn hình.'),
(129, 33, 'A', 'A. Lọc các Intent.'),
(130, 33, 'B', 'B. Khai báo các Activity có thể xử lý một Intent.'),
(131, 33, 'C', 'C. Khởi chạy một Activity.'),
(132, 33, 'D', 'D. Lưu trữ dữ liệu.'),
(133, 34, 'A', 'A. Một interface để lưu trữ đối tượng vào bộ nhớ.'),
(134, 34, 'B', 'B. Một lớp để lưu trữ dữ liệu.'),
(135, 34, 'C', 'C. Một kiểu dữ liệu.'),
(136, 34, 'D', 'D. Một lớp để xử lý sự kiện.'),
(137, 35, 'A', 'A. RecyclerView hiệu quả hơn ListView khi xử lý danh sách lớn.'),
(138, 35, 'B', 'B. RecyclerView hỗ trợ ViewHolder pattern.'),
(139, 35, 'C', 'C. RecyclerView linh hoạt hơn ListView trong việc tùy chỉnh layout.'),
(140, 35, 'D', 'D. Cả A, B và C.'),
(141, 36, 'A', 'A. Tối ưu hóa hiệu năng của ListView và RecyclerView.'),
(142, 36, 'B', 'B. Lưu trữ dữ liệu.'),
(143, 36, 'C', 'C. Xử lý sự kiện.'),
(144, 36, 'D', 'D. Tạo giao diện người dùng.'),
(145, 37, 'A', 'A. Một kỹ thuật để kết nối dữ liệu với giao diện người dùng.'),
(146, 37, 'B', 'B. Một cách để lưu trữ dữ liệu.'),
(147, 37, 'C', 'C. Một kiểu dữ liệu.'),
(148, 37, 'D', 'D. Một lớp để xử lý sự kiện.'),
(149, 38, 'A', 'A. Một kiến trúc phần mềm.'),
(150, 38, 'B', 'B. Một ngôn ngữ lập trình.'),
(151, 38, 'C', 'C. Một framework.'),
(152, 38, 'D', 'D. Một IDE.'),
(153, 39, 'A', 'A. Một thư viện để thực hiện các request HTTP.'),
(154, 39, 'B', 'B. Một hệ quản trị cơ sở dữ liệu.'),
(155, 39, 'C', 'C. Một framework.'),
(156, 39, 'D', 'D. Một IDE.'),
(157, 40, 'A', 'A. Một thư viện để chuyển đổi giữa JSON và Java object.'),
(158, 40, 'B', 'B. Một hệ quản trị cơ sở dữ liệu.'),
(159, 40, 'C', 'C. Một framework.'),
(160, 40, 'D', 'D. Một IDE.'),
(161, 41, 'A', 'A. Một thư viện để tải và hiển thị hình ảnh.'),
(162, 41, 'B', 'B. Một hệ quản trị cơ sở dữ liệu.'),
(163, 41, 'C', 'C. Một framework.'),
(164, 41, 'D', 'D. Một IDE.'),
(165, 42, 'A', 'A. Một nền tảng di động của Google.'),
(166, 42, 'B', 'B. Một hệ quản trị cơ sở dữ liệu.'),
(167, 42, 'C', 'C. Một framework.'),
(168, 42, 'D', 'D. Một IDE.'),
(169, 43, 'A', 'A. Một layout linh hoạt để sắp xếp các thành phần UI.'),
(170, 43, 'B', 'B. Một thành phần UI để hiển thị danh sách.'),
(171, 43, 'C', 'C. Một lớp để xử lý sự kiện.'),
(172, 43, 'D', 'D. Một kiểu dữ liệu.'),
(173, 44, 'A', 'A. Trong file XML.'),
(174, 44, 'B', 'B. Trong file Java/Kotlin.'),
(175, 44, 'C', 'C. Trong file Gradle.'),
(176, 44, 'D', 'D. Trong file Manifest.'),
(177, 45, 'A', 'A. Lưu trữ và quản lý dữ liệu cho UI.'),
(178, 45, 'B', 'B. Hiển thị giao diện người dùng.'),
(179, 45, 'C', 'C. Xử lý sự kiện người dùng.'),
(180, 45, 'D', 'D. Tương tác với cơ sở dữ liệu.'),
(181, 46, 'A', 'A. Một lớp để giữ và quan sát dữ liệu.'),
(182, 46, 'B', 'B. Một thành phần UI.'),
(183, 46, 'C', 'C. Một kiểu dữ liệu.'),
(184, 46, 'D', 'D. Một lớp để xử lý sự kiện.'),
(185, 47, 'A', 'A. Một thư viện để làm việc với cơ sở dữ liệu SQLite.'),
(186, 47, 'B', 'B. Một hệ quản trị cơ sở dữ liệu.'),
(187, 47, 'C', 'C. Một framework.'),
(188, 47, 'D', 'D. Một IDE.'),
(189, 48, 'A', 'A. Một toolkit để xây dựng giao diện người dùng theo hướng khai báo.'),
(190, 48, 'B', 'B. Một ngôn ngữ lập trình.'),
(191, 48, 'C', 'C. Một framework.'),
(192, 48, 'D', 'D. Một IDE.'),
(193, 49, 'A', 'A. TextView'),
(194, 49, 'B', 'B. ListView'),
(195, 49, 'C', 'C. ImageView'),
(196, 49, 'D', 'D. RecyclerView'),
(197, 50, 'A', 'A. Intent có thể được sử dụng để truyền dữ liệu giữa các Activity.'),
(198, 50, 'B', 'B. Intent chỉ có thể được sử dụng để khởi chạy Activity.'),
(199, 50, 'C', 'C. Intent có thể được sử dụng để khởi chạy Service.'),
(200, 50, 'D', 'D. Intent không thể chứa dữ liệu.'),
(201, 51, 'A', 'A. onCreate()'),
(202, 51, 'B', 'B. onClick()'),
(203, 51, 'C', 'C. onStart()'),
(204, 51, 'D', 'D. onResume()'),
(205, 52, 'A', 'A. Retrofit'),
(206, 52, 'B', 'B. Gson'),
(207, 52, 'C', 'C. Picasso'),
(208, 52, 'D', 'D. jQuery'),
(209, 53, 'A', 'A. Giúp giảm thiểu việc lồng ghép layout.'),
(210, 53, 'B', 'B. Cải thiện hiệu năng của ứng dụng.'),
(211, 53, 'C', 'C. Dễ dàng tạo hiệu ứng động.'),
(212, 53, 'D', 'D. Giúp code dễ đọc hơn.'),
(213, 54, 'A', 'A. Model'),
(214, 54, 'B', 'B. View'),
(215, 54, 'C', 'C. Controller'),
(216, 54, 'D', 'D. ViewModel'),
(217, 55, 'A', 'A. Android Studio Debugger'),
(218, 55, 'B', 'B. Logcat'),
(219, 55, 'C', 'C. ADB'),
(220, 55, 'D', 'D. Git'),
(221, 56, 'A', 'A. Sử dụng ViewHolder pattern.'),
(222, 56, 'B', 'B. Sử dụng AsyncTask cho các tác vụ chạy nền.'),
(223, 56, 'C', 'C. Giảm thiểu việc sử dụng bộ nhớ.'),
(224, 56, 'D', 'D. Tối ưu hóa hình ảnh.'),
(225, 57, 'A', 'A. SharedPreferences'),
(226, 57, 'B', 'B. SQLite'),
(227, 57, 'C', 'C. ContentProvider'),
(228, 57, 'D', 'D. Intent');

-- --------------------------------------------------------

--
-- Table structure for table `quizzes`
--

CREATE TABLE `quizzes` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `quizzes`
--

INSERT INTO `quizzes` (`id`, `title`, `created_at`) VALUES
(1, 'Quiz từ file upload', '2025-11-26 21:02:10');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `lastname` varchar(100) DEFAULT NULL,
  `firstname` varchar(100) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `course1` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `quiz_id` (`quiz_id`);

--
-- Indexes for table `question_correct_answers`
--
ALTER TABLE `question_correct_answers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `question_id` (`question_id`);

--
-- Indexes for table `question_options`
--
ALTER TABLE `question_options`
  ADD PRIMARY KEY (`id`),
  ADD KEY `question_id` (`question_id`);

--
-- Indexes for table `quizzes`
--
ALTER TABLE `quizzes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `question_correct_answers`
--
ALTER TABLE `question_correct_answers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `question_options`
--
ALTER TABLE `question_options`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=229;

--
-- AUTO_INCREMENT for table `quizzes`
--
ALTER TABLE `quizzes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=147;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `questions`
--
ALTER TABLE `questions`
  ADD CONSTRAINT `questions_ibfk_1` FOREIGN KEY (`quiz_id`) REFERENCES `quizzes` (`id`);

--
-- Constraints for table `question_correct_answers`
--
ALTER TABLE `question_correct_answers`
  ADD CONSTRAINT `question_correct_answers_ibfk_1` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`);

--
-- Constraints for table `question_options`
--
ALTER TABLE `question_options`
  ADD CONSTRAINT `question_options_ibfk_1` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
