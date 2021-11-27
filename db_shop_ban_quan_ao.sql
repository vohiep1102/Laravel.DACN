-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 15, 2021 lúc 06:58 AM
-- Phiên bản máy phục vụ: 10.4.18-MariaDB
-- Phiên bản PHP: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `db_shop_ban_quan_ao`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `log_login` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `phone`, `log_login`, `class`, `address`, `avatar`, `created_at`, `updated_at`) VALUES
(1, 'Võ Văn Hiệp', 'admin@gmail.com', '$2y$10$wkjMG/vGGEJ21wIARDJDiOZnBxO8p5eyDrc3gw.0E9.oKNKqp0QD.', '0926811099', NULL, 'D16PM01', 'Quảng Bình', '2021-04-09__laravel-57-ecommerce-shop.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `articles`
--

CREATE TABLE `articles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `a_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `a_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `a_hot` tinyint(4) NOT NULL DEFAULT 0,
  `a_active` tinyint(4) NOT NULL DEFAULT 1,
  `a_menu_id` int(11) NOT NULL DEFAULT 0,
  `a_view` int(11) NOT NULL DEFAULT 0,
  `a_description` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a_avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a_content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `a_position_2` tinyint(4) NOT NULL DEFAULT 0,
  `a_position_1` tinyint(4) NOT NULL DEFAULT 0,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `articles`
--

INSERT INTO `articles` (`id`, `a_name`, `a_slug`, `a_hot`, `a_active`, `a_menu_id`, `a_view`, `a_description`, `a_avatar`, `a_content`, `created_at`, `a_position_2`, `a_position_1`, `updated_at`) VALUES
(1, '“LOOKING AHEAD”-DEAL ĐỈNH SIÊU TO 30- 50% CỦA ADIDAS ĐÃ CHÍNH THỨC LỘ DIỆN TẠI SPORT1', 'looking-ahead-deal-dinh-sieu-to-30-50-cua-adidas-da-chinh-thuc-lo-dien-tai-sport1', 1, 1, 1, 0, 'Tháng 6 rực rỡ- Tháng vàng Adidas, chương trình khuyến mại “Looking Ahead” của Adidas chỉ mới “ló mặt” đã khiến các team cuồng thời trang 3 sọc phải choáng ngợp bởi các deal sale siêu đỉnh- Up to 30- 50%. Chương trình chính thức diễn ra trong 11 ngày, từ ngày 04/06 đến hết ngày 14/6/2020 tại các showroom của Sport1 trên toàn quốc.', '2020-06-19__banner-khuy-n-m-i-looking-ahead-1.jpg', '<h1 style=\"text-align:center\">&ldquo;LOOKING AHEAD&rdquo;-DEAL ĐỈNH SI&Ecirc;U TO 30- 50% CỦA ADIDAS Đ&Atilde; CH&Iacute;NH THỨC LỘ DIỆN TẠI SPORT1</h1>\r\n\r\n<p>Th&aacute;ng 6 rực rỡ- Th&aacute;ng v&agrave;ng Adidas, chương tr&igrave;nh khuyến mại &ldquo;Looking Ahead&rdquo; của Adidas chỉ mới &ldquo;l&oacute; mặt&rdquo; đ&atilde; khiến c&aacute;c team cuồng thời trang 3 sọc phải cho&aacute;ng ngợp bởi c&aacute;c deal sale si&ecirc;u đỉnh- Up to 30- 50%. Chương tr&igrave;nh ch&iacute;nh thức diễn ra trong 11 ng&agrave;y, từ ng&agrave;y 04/06 đến hết ng&agrave;y 14/6/2020 tại c&aacute;c showroom của Sport1 tr&ecirc;n to&agrave;n quốc.</p>\r\n\r\n<p>Đến hẹn chắc chắn sẽ l&ecirc;n, Chương tr&igrave;nh khuyến mại v&ocirc; c&ugrave;ng hấp dẫn của Adidas th&aacute;ng 6 đ&atilde; trở lại- &ldquo;LOOKING AHEAD&rdquo;. Đ&acirc;y ch&iacute;nh l&agrave; cơ hội v&agrave;ng cho c&aacute;c fan cuồng thời trang nh&agrave; Aididas sở hữu những si&ecirc;u phẩm mơ ước với MỨC GI&Aacute; SI&Ecirc;U HỜI. Theo đ&oacute;, t&ugrave;y theo từng m&atilde; sản phẩm, kh&aacute;ch h&agrave;ng sẽ được giảm liền từ 30- 50% sản phẩm nguy&ecirc;n gi&aacute;. V&agrave; điều đặc biệt trong chương tr&igrave;nh n&agrave;y, khuyến mại kh&ocirc;ng chỉ d&agrave;nh ri&ecirc;ng cho nh&oacute;m ng&agrave;nh gi&agrave;y m&agrave; nh&oacute;m ng&agrave;nh thời trang- phụ kiện Adidas cũng c&oacute; những deal sale hấp dẫn với mức GI&Aacute; CHƯA TỪNG C&Oacute;.</p>\r\n\r\n<p><br />\r\nTại hệ thống si&ecirc;u thị thể thao Sport1, hơn 10000 sản phẩm mới Adidas đ&atilde; đổ bộ, full đầy c&aacute;c kệ chỉ chờ kh&aacute;ch h&agrave;ng qua rước về. Gi&agrave;y d&eacute;p, balo thời trang, quần &aacute;o phụ kiện ch&iacute;nh h&atilde;ng đều được sale với mức gi&aacute; kh&ocirc;ng tưởng. C&aacute;c t&iacute;n đồ đam m&ecirc; c&aacute;c đồ tập chuy&ecirc;n dụng running, traning, sportswear, b&oacute;ng đ&aacute;, cầu l&ocirc;ng, gold... cũng đừng lo v&igrave; c&aacute;c &ldquo;em&rdquo; n&agrave;y cũng điểm đủ mặt &nbsp;trong list SALE SỐC của Adidas th&aacute;ng 6.</p>\r\n\r\n<p>Chương tr&igrave;nh &aacute;p dụng duy nhất trong 11 ng&agrave;y từ 04/06 đến hết 14/06/2020 v&agrave; &aacute;p dụng cho cả mua trực tiếp tại cửa h&agrave;ng v&agrave; hệ thống online của #Sport1! N&agrave;o c&aacute;c anh chị em nh&agrave; Das, h&atilde;y nhanh tay đến Sport1 để săn những si&ecirc;u phẩm n&oacute;ng bỏng tay với mức gi&aacute; SI&Ecirc;U SHOCK n&agrave;o.</p>\r\n\r\n<div id=\"gtx-trans\" style=\"left:743px; position:absolute; top:-4.8px\">\r\n<div class=\"gtx-trans-icon\">&nbsp;</div>\r\n</div>', '2020-12-15 17:42:53', 1, 1, '2020-12-15 17:42:53'),
(2, 'THÁNG VÀNG ĐẠI LỄ SĂN SALE CỰC DỄ - GHẾ MASSAGE GIẢM ĐẾN 42%', 'thang-vang-dai-le-san-sale-cuc-de-ghe-massage-giam-den-42', 1, 1, 1, 0, 'Hình ảnh cờ đỏ sao vàng tung bay trên mọi nẻo đường Tổ Quốc đã góp phần tạo nên một bầu không khí hào hùng trong đại lễ kỷ niệm 45 năm giải phóng Miền Nam thống nhất toàn vẹn lãnh thổ Việt Nam. Hòa cùng không khí chào mừng đại lễ 30/4 - 1/5 giúp quý khách có những phút giây mua sắm thoải mái, KINGSPORT triển khai chương trình mang tên THÁNG VÀNG ĐẠI LỄ - SĂN SALE CỰC DỄ.', '2020-06-19__360-crop-ctkm-kingsport-01.jpg', '<p><strong>H&igrave;nh ảnh cờ đỏ sao v&agrave;ng tung bay tr&ecirc;n mọi nẻo đường Tổ Quốc đ&atilde; g&oacute;p phần tạo n&ecirc;n một bầu kh&ocirc;ng kh&iacute; h&agrave;o h&ugrave;ng trong đại lễ kỷ niệm 45 năm giải ph&oacute;ng Miền Nam thống nhất to&agrave;n vẹn l&atilde;nh thổ Việt Nam. H&ograve;a c&ugrave;ng kh&ocirc;ng kh&iacute; ch&agrave;o mừng đại lễ&nbsp;30/4 - 1/5 gi&uacute;p qu&yacute; kh&aacute;ch c&oacute; những ph&uacute;t gi&acirc;y mua sắm thoải m&aacute;i, KINGSPORT triển khai chương tr&igrave;nh mang t&ecirc;n&nbsp;<em>TH&Aacute;NG V&Agrave;NG ĐẠI LỄ - SĂN SALE CỰC DỄ.</em></strong></p>\r\n\r\n<p>Với sứ mệnh mang sức khỏe &ndash; hạnh ph&uacute;c &ndash; thịnh vương đến mọi nh&agrave;. Đồng thời, gi&uacute;p qu&yacute; kh&aacute;ch tiết kiệm thời gian v&agrave; t&agrave;i ch&iacute;nh khi đầu tư v&agrave;o việc chăm s&oacute;c sức khỏe KINGSPORT đ&atilde; triển khai chương tr&igrave;nh &ldquo;<em>Th&aacute;ng v&agrave;ng đại lễ - Săn sale cực dễ&rdquo;</em>&nbsp;với&nbsp;<a href=\"https://www.kingsport.vn/ghe-massage-kingsport-g38.html\"><strong>ưu đ&atilde;i si&ecirc;u khủng l&ecirc;n đến 42%</strong></a>&nbsp;d&agrave;nh cho kh&aacute;ch h&agrave;ng tham gia mua sắm tại c&aacute;c k&ecirc;nh online hoặc offline của KINGSPORT. Chương tr&igrave;nh &aacute;p dụng tr&ecirc;n to&agrave;n quốc v&agrave; k&eacute;o d&agrave;i từ ng&agrave;y 20/4/2020 &ndash; 20/5/2020(*).</p>', '2020-12-15 17:42:53', 0, 0, '2020-12-15 17:42:53'),
(3, 'LỊCH SỬ MÔN CHẠY MARATHON', 'lich-su-mon-chay-marathon', 1, 1, 2, 0, 'Chạy marathon đã quá quen thuộc đến nỗi gần như chẳng ai quan tâm nó […]', '2020-06-19__philippides.jpg', '<div class=\"entry-wrap\">\r\n<h1>Lịch sử m&ocirc;n chạy Marathon</h1>\r\n<!-- End / Related Posts -->\r\n\r\n<div class=\"content entry-content\">\r\n<p>Chạy marathon đ&atilde; qu&aacute; quen thuộc đến nỗi gần như chẳng ai quan t&acirc;m n&oacute; l&agrave; g&igrave; v&agrave; bắt đầu từ bao giờ. C&ugrave;ng t&igrave;m hiểu một ch&uacute;t về lịch sử m&ocirc;n chạy marathon nh&eacute;.</p>\r\n\r\n<p><strong>Ch</strong><strong>ạy marathon l</strong><strong>&agrave; g&igrave;</strong>? Marathon l&agrave; một cuộc đua đường d&agrave;i với một khoảng c&aacute;ch ch&iacute;nh thức của 42,195 km&nbsp; (khoảng 26, 385 dặm), thường chạy như một cuộc chạy đua đường bằng. <strong>L</strong><strong>ịch sử m</strong><strong>&ocirc;n ch</strong><strong>ạy Marathon</strong> được gắn liền với sự kiện n&agrave;y, n&oacute; được tổ chức để kỷ niệm cuộc chạy đua huyền thoại của người l&iacute;nh Hy Lạp t&ecirc;n l&agrave; Pheidippides, một sứ giả từ Trận chiến Marathon đến Athens để b&aacute;o kết quả chiến thằng của trận chiến. Cuộc đua marathon c&oacute; thể được ho&agrave;n th&agrave;nh bằng c&aacute;ch chạy hoặc với chiến lược chạy / đi bộ.</p>\r\n\r\n<p><strong>Ch</strong><strong>ạy marathon bắt </strong><strong>đ</strong><strong>ầu từ bao giờ?</strong></p>\r\n\r\n<p><strong>Ch</strong><strong>ạy marathon</strong> l&agrave; một trong những sự kiện Olympic hiện đại v&agrave;o năm 1896, mặc d&ugrave; khoảng c&aacute;ch kh&ocirc;ng được chuẩn h&oacute;a cho đến năm 1921. Hơn 800 cuộc đua được tổ chức tr&ecirc;n khắp thế giới mỗi năm, với đại đa số c&aacute;c đối thủ l&agrave; vận động vi&ecirc;n, v&igrave; c&aacute;c cuộc đua lớn hơn c&oacute; thể c&oacute; h&agrave;ng chục ng&agrave;n người tham gia.</p>\r\n\r\n<p>Nếu x&eacute;t về<strong> lịch sử m&ocirc;n chạy Marathon</strong>, th&igrave; mới biết c&aacute;i t&ecirc;n Marathon xuất ph&aacute;t từ truyền thuyết về Philippides (hay Pheidippides), sứ giả Hy Lạp. Truyền thuyết n&oacute;i rằng &ocirc;ng được gửi từ chiến trường Marathon đến Athens để th&ocirc;ng b&aacute;o rằng người Ba Tư đ&atilde; bị đ&aacute;nh bại trong trrận chiến Marathon (trong đ&oacute; &ocirc;ng vừa mới chiến đấu),&nbsp; diễn ra v&agrave;o th&aacute;ng 8 hoặc th&aacute;ng 9 năm 490 trước C&ocirc;ng nguy&ecirc;n.&nbsp; Người ta n&oacute;i rằng anh ta đ&atilde; chạy to&agrave;n bộ qu&atilde;ng đường m&agrave; kh&ocirc;ng dừng lại v&agrave; x&ocirc;ng v&agrave;o hội nghị, k&ecirc;u l&ecirc;n &epsilon;&epsilon;&epsilon;&kappa;ή&kappa;&kappa;ή&kappa; (nenikēkamen, &ldquo;ch&uacute;ng t&ocirc;i đ&atilde; thắng!&rdquo;), Trước khi quỵ gối v&agrave; chết.&nbsp;</p>\r\n<img alt=\"\" class=\"wp-image-9916\" src=\"https://runningstore.vn/wp-content/uploads/2020/04/Philippides.jpg\" />\r\n<p>H&igrave;nh ảnh Philippides trong truyền thuyết</p>\r\n\r\n<p>C&oacute; nhiều cuộc tranh luận về t&iacute;nh ch&iacute;nh x&aacute;c của truyền thuyết n&agrave;y. Nh&agrave; sử học Hy Lạp Herodotus, trong nguồn lịch sử ch&iacute;nh của Chiến tranh Greco-Ba Tư, đề cập đến Philippides l&agrave; sứ giả chạy từ Athens đến Sparta để nhờ gi&uacute;p đỡ, v&agrave; sau đ&oacute; chạy lại, khoảng c&aacute;ch hơn 240 km (150 dặm) mỗi chiều. Trong một số bản thảo Herodotus, t&ecirc;n của người chạy giữa Athens v&agrave; Sparta được đặt t&ecirc;n l&agrave; Philippides. Herodotus kh&ocirc;ng đề cập đến một sứ giả được gửi từ Marathon đến Athens, v&agrave; kể rằng phần ch&iacute;nh của qu&acirc;n đội Athen, đ&atilde; chiến đấu v&agrave; chiến thắng trong trận chiến mệt mỏi, v&agrave; sợ một cuộc đột k&iacute;ch của hải qu&acirc;n bởi hạm đội Ba Tư chống lại một Athens kh&ocirc;ng được bảo vệ, đ&atilde; nhanh ch&oacute;ng quay trở lại từ Athens.</p>\r\n<img alt=\"\" class=\"wp-image-9917\" src=\"https://runningstore.vn/wp-content/uploads/2020/04/Tuong-phelippides.jpg\" />\r\n<p>Tượng Philppides được dựng tại Hy Lạp</p>\r\n\r\n<p>N&uacute;i Pentelicus đứng giữa Marathon v&agrave; Athens, điều đ&oacute; c&oacute; nghĩa l&agrave; nếu Philippides thực hiện qu&atilde;ng đường chạy sau trận chiến, anh ta phải chạy quanh ngọn n&uacute;i, ở ph&iacute;a bắc hoặc ph&iacute;a nam. Tuyến đường sau v&agrave; r&otilde; r&agrave;ng hơn ph&ugrave; hợp với gần như ch&iacute;nh x&aacute;c đường cao tốc Marathon-Athens hiện đại, đi theo v&ugrave;ng đất ph&iacute;a nam từ Vịnh Marathon v&agrave; dọc theo bờ biển, sau đ&oacute; đi bộ nhẹ nh&agrave;ng nhưng k&eacute;o d&agrave;i về ph&iacute;a t&acirc;y về ph&iacute;a đ&ocirc;ng đến Athens, giữa c&aacute;c ch&acirc;n đồi của N&uacute;i Hymettus v&agrave; Penteli, v&agrave; sau đ&oacute; nhẹ nh&agrave;ng xuống dốc đến Athens. Tuyến đường n&agrave;y, như đ&atilde; tồn tại khi Thế vận hội được hồi sinh v&agrave;o năm 1896, d&agrave;i khoảng 40 km (25 dặm) v&agrave; đ&acirc;y l&agrave; khoảng c&aacute;ch gần đ&uacute;ng ban đầu được sử dụng cho c&aacute;c cuộc đua <strong>ch</strong><strong>ạy marathon</strong>. Tuy nhi&ecirc;n, đ&atilde; c&oacute; &yacute; kiến ​​cho rằng Philippides c&oacute; thể đ&atilde; đi theo một tuyến đường kh&aacute;c: leo l&ecirc;n ph&iacute;a t&acirc;y dọc theo sườn ph&iacute;a đ&ocirc;ng v&agrave; ph&iacute;a bắc của N&uacute;i Penteli đến đ&egrave;o Dionysos, v&agrave; sau đ&oacute; l&agrave; một con đường xuống dốc thẳng về ph&iacute;a nam đến Athens. Tuyến đường n&agrave;y ngắn hơn đ&aacute;ng kể, 35 km (22 mi), nhưng leo l&ecirc;n ban đầu rất dốc hơn 5 km (3,1 mi).</p>\r\n\r\n<p>Khi Thế vận hội hiện đại bắt đầu v&agrave;o năm 1896, những người khởi xướng v&agrave; tổ chức đang t&igrave;m kiếm một sự kiện phổ biến lớn, gợi lại vinh quang của Hy Lạp cổ đại v&agrave; gi&uacute;p người ta nhớ tới <strong>lịch sử của m&ocirc;n chạy marathon</strong>. &Yacute; tưởng về một cuộc đua marathon đến từ Michel Br&eacute;al, người muốn sự kiện n&agrave;y xuất hiện trong Thế vận hội Olympic hiện đại đầu ti&ecirc;n v&agrave;o năm 1896 tại Athens. &Yacute; tưởng n&agrave;y được Pierre de Coubertin, người s&aacute;ng lập Thế vận hội hiện đại, cũng như người Hy Lạp ủng hộ.&nbsp; Người Hy Lạp đ&atilde; tổ chức một cuộc đua tuyển chọn cho cuộc thi marathon Olympic v&agrave;o ng&agrave;y 22 th&aacute;ng 3 năm 1896, m&agrave; Charilaos Vasilakos đ&atilde; gi&agrave;nh chiến thắng trong 3 giờ v&agrave; 18 ph&uacute;t.&nbsp;&nbsp;&nbsp;&nbsp;</p>\r\n\r\n<div class=\"wp-block-image\"><img alt=\"\" class=\"wp-image-9918\" src=\"https://runningstore.vn/wp-content/uploads/2020/04/Chaolios-vasilakos.jpg\" />\r\n<p>Charilaos Vasilakos &ndash; nh&agrave; v&ocirc; địch chạy marathon thế vận hội 1896</p>\r\n</div>\r\n\r\n<p>Sau n&agrave;y, n&oacute; đ&atilde; trở th&agrave;nh một truyền thống cho cuộc thi marathon Olympic nam l&agrave; sự kiện cuối c&ugrave;ng của lịch thi đấu điền kinh, v&agrave;o ng&agrave;y cuối c&ugrave;ng của Thế vận hội. Trong nhiều năm, cuộc đua kết th&uacute;c b&ecirc;n trong s&acirc;n vận động Olympic; tuy nhi&ecirc;n, tại Thế vận hội Lu&acirc;n Đ&ocirc;n 2012, điểm khởi đầu v&agrave; kết th&uacute;c l&agrave; ở Trung t&acirc;m thương mại,v&agrave; tại Rio 2016 (Rio de Janeiro), điểm khởi đầu v&agrave; kết th&uacute;c l&agrave; ở Samb&oacute;dromo.</p>\r\n</div>\r\n</div>', '2020-12-15 17:42:53', 1, 1, '2020-12-15 17:42:53');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `attributes`
--

CREATE TABLE `attributes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `atb_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `atb_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `atb_type_id` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `attributes`
--

INSERT INTO `attributes` (`id`, `atb_name`, `atb_slug`, `atb_type_id`, `created_at`, `updated_at`) VALUES
(2, 'S', 's', 1, '2020-12-15 17:43:09', '2020-12-15 17:43:09'),
(3, 'M', 'm', 1, '2020-12-15 17:43:09', '2020-12-15 17:43:09'),
(4, 'L', 'l', 1, '2020-12-15 17:43:09', '2020-12-15 17:43:09'),
(5, 'XL', 'xl', 1, '2020-12-15 17:43:09', '2020-12-15 17:43:09'),
(6, '2XL', '2xl', 1, '2020-12-15 17:43:09', '2020-12-15 17:43:09'),
(7, '3XL', '3xl', 1, '2020-12-15 17:43:09', '2020-12-15 17:43:09'),
(18, 'Màu xanh', 'mau-xanh', 2, '2020-12-15 17:43:09', '2020-12-15 17:43:09'),
(19, 'Màu đỏ', 'mau-do', 2, '2020-12-15 17:43:09', '2020-12-15 17:43:09'),
(20, 'Màu Tím', 'mau-tim', 2, '2020-12-15 17:43:09', '2020-12-15 17:43:09'),
(21, 'Màu đỏ đen', 'mau-do-den', 2, '2020-12-15 17:43:09', '2020-12-15 17:43:09'),
(22, 'Màu vàng', 'mau-vang', 2, '2020-12-15 17:43:09', '2020-12-15 17:43:09'),
(23, 'XXL', 'xxl', 1, '2021-05-14 14:01:46', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `c_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `c_parent_id` int(11) NOT NULL DEFAULT 0,
  `c_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `c_avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_banner` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_hot` tinyint(4) NOT NULL DEFAULT 0,
  `c_status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `c_name`, `c_parent_id`, `c_slug`, `c_avatar`, `c_banner`, `c_description`, `c_hot`, `c_status`, `created_at`, `updated_at`) VALUES
(1, 'Thời trang nam', 0, 'thoi-trang-nam', NULL, NULL, NULL, 1, 1, '2020-12-15 17:43:27', '2020-12-15 17:43:27'),
(2, 'Quần Short/Lửng Nam', 1, 'quan-shortlung-nam', NULL, NULL, NULL, 0, 1, '2020-12-15 17:43:27', '2020-12-15 17:43:27'),
(3, 'Áo Sơ Mi Nam', 1, 'ao-so-mi-nam', NULL, NULL, NULL, 0, 1, '2020-12-15 17:43:27', '2020-12-15 17:43:27'),
(4, 'Thời trang nữ', 0, 'thoi-trang-nu', NULL, NULL, NULL, 0, 1, '2020-12-15 17:43:27', '2020-12-15 17:43:27'),
(5, 'Phụ kiện nam', 0, 'phu-kien-nam', NULL, NULL, NULL, 1, 1, '2020-12-15 17:43:27', '2020-12-15 17:43:27'),
(6, 'Phụ kiện nữ', 0, 'phu-kien-nu', NULL, NULL, NULL, 0, 1, '2020-12-15 17:43:27', '2020-12-15 17:43:27'),
(7, 'Túi đeo chéo', 6, 'tui-deo-cheo', NULL, NULL, NULL, 0, 1, '2020-12-15 17:43:27', '2020-12-15 17:43:27'),
(8, 'Túi xách', 6, 'tui-xach', NULL, NULL, NULL, 0, 1, '2020-12-15 17:43:27', '2020-12-15 17:43:27'),
(9, 'Đồ thể thao', 0, 'do-the-thao', NULL, NULL, NULL, 0, 1, '2020-12-15 17:43:27', '2020-12-15 17:43:27'),
(10, 'Đầm', 4, 'dam', NULL, NULL, NULL, 0, 1, '2020-12-15 17:43:27', '2020-12-15 17:43:27'),
(11, 'Váy dạ hội', 4, 'vay-da-hoi', NULL, NULL, NULL, 0, 1, '2020-12-15 17:43:27', '2020-12-15 17:43:27'),
(12, 'Style công sở', 4, 'style-cong-so', NULL, NULL, NULL, 0, 1, '2020-12-15 17:43:27', '2020-12-15 17:43:27'),
(13, 'Áo khoác nam', 1, 'ao-khoac-nam', NULL, NULL, NULL, 0, 1, '2020-12-15 17:43:27', '2020-12-15 17:43:27'),
(14, 'Áo phông nam', 0, 'ao-phong-nam', NULL, NULL, NULL, 0, 1, '2020-12-15 17:43:27', '2020-12-15 17:43:27');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cmt_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cmt_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cmt_content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cmt_parent_id` int(11) NOT NULL DEFAULT 0,
  `cmt_product_id` int(11) NOT NULL DEFAULT 0,
  `cmt_admin_id` int(11) NOT NULL DEFAULT 0,
  `cmt_user_id` int(11) NOT NULL DEFAULT 0,
  `cmt_like` int(11) NOT NULL DEFAULT 0,
  `cmt_disk_like` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `comments`
--

INSERT INTO `comments` (`id`, `cmt_name`, `cmt_email`, `cmt_content`, `cmt_parent_id`, `cmt_product_id`, `cmt_admin_id`, `cmt_user_id`, `cmt_like`, `cmt_disk_like`, `created_at`, `updated_at`) VALUES
(3, NULL, NULL, 'Hàng rất ưng ý', 0, 15, 0, 4, 0, 0, '2021-05-14 06:25:23', NULL),
(4, NULL, NULL, 'Sản phẩm đẹp', 0, 1, 0, 4, 0, 0, '2021-05-14 08:02:35', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `c_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_phone` char(11) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `contacts`
--

INSERT INTO `contacts` (`id`, `c_title`, `c_phone`, `c_email`, `c_content`, `created_at`, `updated_at`) VALUES
(2, 'Tư vấn mua áo vest', '0926811099', 'vvhsub1@gmail.com', 'Tôi đang phân vân giũa vest a vs b', '2021-05-14 06:24:18', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `events`
--

CREATE TABLE `events` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `e_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `e_banner` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `e_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `e_position_1` tinyint(4) NOT NULL DEFAULT 0,
  `e_position_2` tinyint(4) NOT NULL DEFAULT 0,
  `e_position_3` tinyint(4) NOT NULL DEFAULT 0,
  `e_position_4` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `events`
--

INSERT INTO `events` (`id`, `e_name`, `e_banner`, `e_link`, `e_position_1`, `e_position_2`, `e_position_3`, `e_position_4`, `created_at`, `updated_at`) VALUES
(1, 'sale 1', '2020-06-18__mau-banner-quang-cao-3.jpg', '/', 1, 0, 0, 0, '2020-12-15 17:44:27', '2020-12-15 17:44:27'),
(2, 'sale 2', '2020-06-18__6e10f40d342107c1071cced3c8672ddd.jpg', '/', 0, 0, 1, 0, '2020-12-15 17:44:27', '2020-12-15 17:44:27'),
(3, 'sale 3', '2020-06-18__mua-online-bitis-hunter-lotte.jpg', '/', 0, 1, 0, 0, '2020-12-15 17:44:27', '2020-12-15 17:44:27');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `keywords`
--

CREATE TABLE `keywords` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `k_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `k_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `k_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `k_hot` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `keywords`
--

INSERT INTO `keywords` (`id`, `k_name`, `k_slug`, `k_description`, `k_hot`, `created_at`, `updated_at`) VALUES
(1, 'Quần Short / Lửng Nam', 'quan-short-lung-nam', NULL, 0, '2020-12-15 17:44:44', '2021-05-14 06:21:56'),
(2, 'Quần Kaki', 'quan-kaki', NULL, 0, '2020-12-15 17:44:44', '2020-12-15 17:44:44'),
(3, 'Đầm dạ hội', 'dam-da-hoi', NULL, 0, '2020-12-15 17:44:44', '2020-12-15 17:44:44'),
(4, 'Áo phông', 'ao-phong', NULL, 0, '2020-12-15 17:44:44', '2020-12-15 17:44:44'),
(5, 'Sơ mi nam', 'so-mi-nam', NULL, 0, '2020-12-15 17:44:44', '2020-12-15 17:44:44'),
(6, 'Quần âu nam', 'quan-au-nam', NULL, 0, '2020-12-15 17:44:44', '2020-12-15 17:44:44'),
(7, 'Áo phông nam', 'ao-phong-nam', NULL, 0, '2020-12-15 17:44:44', '2020-12-15 17:44:44'),
(8, 'Áo khoác nam', 'ao-khoac-nam', NULL, 0, '2020-12-15 17:44:44', '2020-12-15 17:44:44');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `mn_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mn_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mn_avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mn_banner` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mn_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mn_hot` tinyint(4) NOT NULL DEFAULT 0,
  `mn_status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `menus`
--

INSERT INTO `menus` (`id`, `mn_name`, `mn_slug`, `mn_avatar`, `mn_banner`, `mn_description`, `mn_hot`, `mn_status`, `created_at`, `updated_at`) VALUES
(1, 'Tin tức mới', 'tin-tuc-moi', NULL, NULL, NULL, 0, 1, '2020-12-15 17:44:59', '2020-12-15 17:44:59'),
(2, 'Sự Kiện', 'su-kien', NULL, NULL, NULL, 0, 1, '2020-12-15 17:44:59', '2020-12-15 17:44:59');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2018_02_02_041429_create_categories_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_02_02_155318_create_keywords_table', 1),
(5, '2020_02_03_145303_create_products_table', 1),
(6, '2020_02_06_165057_create_attributes_table', 1),
(7, '2020_02_06_184708_create_products_attributes_table', 1),
(8, '2020_02_08_005029_add_multiple_column_attribute_in_table_products', 1),
(9, '2020_02_09_073958_create_transactions_table', 1),
(10, '2020_02_09_074025_create_orders_table', 1),
(11, '2020_02_09_133309_create_products_keywords_table', 1),
(12, '2020_02_09_155308_create_admins_table', 1),
(13, '2020_02_09_180519_create_menus_table', 1),
(14, '2020_02_09_180620_create_articles_table', 1),
(15, '2020_02_12_100000_create_password_resets_table', 1),
(16, '2020_02_13_154148_alter_column_pro_number_in_table_product', 1),
(17, '2020_02_13_171036_create_slides_table', 1),
(18, '2020_02_14_121248_alter_column_a_position_in_table_articles', 1),
(19, '2020_02_15_053225_create_user_favourite_table', 1),
(20, '2020_02_15_191555_create_ratings_table', 1),
(21, '2020_02_17_162605_create_events_table', 1),
(22, '2020_02_18_152103_create_product_images_table', 1),
(23, '2020_02_24_222836_create_social_accounts_table', 1),
(24, '2020_03_08_104810_create_statics_table', 1),
(25, '2020_03_08_213403_alter_column_pro_age_review_in_table_product', 1),
(26, '2020_03_12_205704_create_contacts_table', 1),
(27, '2020_03_17_183239_create_comments_table', 1),
(28, '2020_03_22_003200_alter_column_spam_comment_ratings_in_table_users', 1),
(29, '2020_03_23_223714_alter_column_admin_in_table_admin', 1),
(30, '2020_04_09_231820_create_producer_table', 1),
(31, '2020_04_11_010440_create_types_table', 1),
(32, '2021_03_30_105937_create_payments_table', 2),
(33, '2021_03_30_190556_add_tst_code_to_transactions_table', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `od_transaction_id` int(11) NOT NULL DEFAULT 0,
  `od_product_id` int(11) NOT NULL DEFAULT 0,
  `od_sale` int(11) NOT NULL DEFAULT 0,
  `od_qty` tinyint(4) NOT NULL DEFAULT 0,
  `od_price` int(11) NOT NULL DEFAULT 0,
  `od_size` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `od_color` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `od_gender` tinyint(10) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `od_transaction_id`, `od_product_id`, `od_sale`, `od_qty`, `od_price`, `od_size`, `od_color`, `od_gender`, `created_at`, `updated_at`) VALUES
(12, 11, 11, 0, 1, 1550000, '2XL', 'Màu xanh', 1, NULL, NULL),
(14, 13, 1, 20, 1, 288000, 'L', 'Màu vàng', 1, NULL, NULL),
(15, 14, 2, 15, 1, 306000, 'L', 'Màu đỏ', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `id` int(11) NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `p_transaction_id` int(11) DEFAULT NULL,
  `p_user_id` int(11) DEFAULT NULL,
  `p_money` double(20,2) DEFAULT NULL COMMENT 'Số tiền thanh toán',
  `p_note` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Nội dung thanh toán',
  `p_transaction_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `p_vnp_response_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Mã phản hồi',
  `p_code_vnpay` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Mã giao dịch vnpay',
  `p_code_bank` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Mã ngân hàng',
  `p_time` datetime DEFAULT NULL COMMENT 'Thời gian chuyển khoản',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `payments`
--

INSERT INTO `payments` (`id`, `p_transaction_id`, `p_user_id`, `p_money`, `p_note`, `p_transaction_code`, `p_vnp_response_code`, `p_code_vnpay`, `p_code_bank`, `p_time`, `created_at`, `updated_at`) VALUES
(1, 6, 1, 999999.99, 'TH', 'ZRwUyCSjFx0tph4', '00', '13487981', 'NCB', '2021-04-09 22:45:00', NULL, NULL),
(2, 7, 1, 1550000.00, 'TH', 'ZRwUyCSjFx0tph4', '00', '13487981', 'NCB', '2021-04-09 22:45:00', NULL, NULL),
(3, 8, 1, 306000.00, 'A', 'iZCUO1lPJelbWCD', '00', '13487982', 'NCB', '2021-04-09 22:49:00', NULL, NULL),
(4, 9, 1, 1188000.00, 'Thanh toan mua hang', 'Sxj7zGG0UvRpFSV', '00', '13487985', 'NCB', '2021-04-10 00:42:00', NULL, NULL),
(5, 11, 4, 1550000.00, 'abcccccccaaa', '0iobqHUrT7tih9q', '00', '13498135', 'NCB', '2021-05-03 22:35:00', NULL, NULL),
(6, 14, 4, 306000.00, 'mua ssss', 'zsZmKhEp43qsP5T', '00', '13504682', 'NCB', '2021-05-14 15:01:00', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `producer`
--

CREATE TABLE `producer` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pdr_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pdr_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pdr_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pdr_phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `producer`
--

INSERT INTO `producer` (`id`, `pdr_name`, `pdr_slug`, `pdr_email`, `pdr_phone`, `created_at`, `updated_at`) VALUES
(1, 'Hnoss', 'hnoss', 'hnoss@gmail.com', '19001907', '2020-12-15 17:46:03', '2020-12-15 17:46:03'),
(2, 'Elise', 'elise', 'elise@gmail.com', '18008989', '2020-12-15 17:46:03', '2020-12-15 17:46:03'),
(3, 'Seven AM', 'seven-am', 'SevenAM@gmail.com', '19001889', '2020-12-15 17:46:03', '2020-12-15 17:46:03'),
(4, 'Việt tiến', 'viet-tien', 'viettien@gmail.com', '19008866', '2020-12-15 17:46:03', '2020-12-15 17:46:03'),
(5, 'Viviane', 'viviane', 'viviane@gmail.com', '1900178256', '2020-12-15 17:46:03', '2020-12-15 17:46:03'),
(6, 'Zanado', 'zanado', 'zanado@gmail.com', '18001988', '2020-12-15 17:46:03', '2020-12-15 17:46:03');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pro_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pro_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pro_price` int(11) NOT NULL DEFAULT 0,
  `pro_price_entry` int(11) NOT NULL DEFAULT 0 COMMENT 'giá nhập',
  `pro_category_id` int(11) NOT NULL DEFAULT 0,
  `pro_admin_id` int(11) NOT NULL DEFAULT 0,
  `pro_sale` tinyint(4) NOT NULL DEFAULT 0,
  `pro_avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pro_view` int(11) NOT NULL DEFAULT 0,
  `pro_hot` tinyint(4) NOT NULL DEFAULT 0,
  `pro_active` tinyint(4) NOT NULL DEFAULT 1,
  `pro_pay` int(11) NOT NULL DEFAULT 0,
  `pro_description` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pro_content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pro_review_total` int(11) NOT NULL DEFAULT 0,
  `pro_review_star` int(11) NOT NULL DEFAULT 0,
  `pro_age_review` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `pro_number` int(11) NOT NULL DEFAULT 0,
  `pro_country` tinyint(4) NOT NULL DEFAULT 0,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `pro_name`, `pro_slug`, `pro_price`, `pro_price_entry`, `pro_category_id`, `pro_admin_id`, `pro_sale`, `pro_avatar`, `pro_view`, `pro_hot`, `pro_active`, `pro_pay`, `pro_description`, `pro_content`, `pro_review_total`, `pro_review_star`, `pro_age_review`, `created_at`, `pro_number`, `pro_country`, `updated_at`) VALUES
(1, 'ÁO KHOÁC NAM KAKI PHỐI KHÓA KÉO ROCKY', 'ao-khoac-nam-kaki-phoi-khoa-keo-rocky', 360000, 0, 13, 0, 20, '2020-12-15__5f3469ef92f52a15044ea20c9c029c57.jpg', 10, 0, 1, 6, '<p>Chất liệu kaki chắc chắn, đẹp, co gi&atilde;n nhẹ.</p>\r\n\r\n<p>Thiết kế cổ trụ phối đai nam t&iacute;nh, tay d&agrave;i lịch l&atilde;m,</p>\r\n\r\n<p>lưng &aacute;o được phối n&uacute;t c&aacute; t&iacute;nh, mang lại vẻ đẹp s&agrave;nh điệu cho c&aacute;c bạn nam.</p>', '<p>Th&ocirc;ng tin chi tiết</p>\r\n\r\n<p>Nếu như thời trang cho bạn g&aacute;i cần lắm sự tỉ mỉ, kh&eacute;o l&eacute;o v&agrave; tinh tế từ kiểu d&aacute;ng đến m&agrave;u sắc th&igrave; thời trang cho nam lại đơn giản hơn nhưng tinh tế v&agrave; kh&ocirc;ng cầu kỳ, người ta vẫn sẽ thấy một anh ch&agrave;ng thanh lịch nhưng vẫn manly v&agrave; nam t&iacute;nh, đặc biệt, những trang phục như &aacute;o kho&aacute;c chỉ cần một chiếc &aacute;o m&agrave;u trơn c&ugrave;ng một số điểm nhấn nhỏ như logo hay sọc ngang &aacute;o..cũng đủ l&agrave;m ch&agrave;ng nổi bật v&agrave; thật ấn tượng trước c&aacute;c bạn g&aacute;i.</p>', 1, 5, 5, '2020-12-15 17:46:57', 100, 4, '2021-05-14 08:01:51'),
(2, 'ÁO KHOÁC KAKI CARO NAM HAI LỚP', 'ao-khoac-kaki-caro-nam-hai-lop', 360000, 0, 13, 0, 15, '2020-12-15__1900c336077f01836f73d10d029bd5ba.jpg', 10, 1, 1, 5, '<ul>\r\n	<li>Với chiếc &aacute;o kho&aacute;c kiểu d&aacute;ng thời trang, bạn sẽ tr&ocirc;ng thật phong c&aacute;ch, khỏe khoắn v&agrave; năng động hơn khi s&aacute;nh đ&ocirc;i c&ugrave;ng bạn g&aacute;i, đi dạo, đi chơi hay đi du lịch xa.</li>\r\n</ul>', '<p><strong><a href=\"http://www.mydeal.vn/danh-muc/18/ao-khoac-nam.html\" target=\"_blank\">&Aacute;o kho&aacute;c nam</a></strong>&nbsp;kaki caro hai lớp l&agrave; sự phối hợp h&agrave;i h&ograve;a giữa chất liệu vải, kiểu d&aacute;ng cũng như m&agrave;u sắc, sản phẩm n&agrave;y mang đến sự thoải m&aacute;i, tự tin cho người mặc. Kh&ocirc;ng chỉ ph&aacute;i nữ mới cần sự che nắng hiệu quả m&agrave; đối với l&agrave;n da của c&aacute;c bạn nam cũng cần được bảo vệ khỏi c&aacute;i n&oacute;ng của tiết trời m&ugrave;a h&egrave;. Chiếc &aacute;o kho&aacute;c nam n&agrave;y c&ograve;n mang đến phong c&aacute;ch thể thao khỏe khoắn v&agrave; năng động.</p>', 0, 0, 5, '2020-12-15 17:46:57', 150, 5, '2021-05-14 06:20:51'),
(3, 'Đầm body cá tình với nhiều màu sắc hiện đại, trẻ trung', 'dam-body-ca-tinh-voi-nhieu-mau-sac-hien-dai-tre-trung', 620000, 0, 10, 0, 10, '2020-12-15__p35-large.jpg', 2, 0, 1, 0, '<p>T&ecirc;n Sản PhẩmĐầm noel đu&ocirc;i c&aacute;Chất LiệuC&aacute;t H&agrave;nM&agrave;u SắcĐỏSize+ size M:</p>\r\n\r\n<p>Chiều d&agrave;i đầm: 85cm, Ngực 80-84cm, Eo 68-72cm, M&ocirc;ng 88-92cm+ size L:</p>\r\n\r\n<p>Chiều d&agrave;i đầm: 86cm, Ngực 84-88cm, Eo 72-76cm, M&ocirc;ng 92-96cm+ ...</p>', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>T&ecirc;n Sản Phẩm</td>\r\n			<td>Đầm noel đu&ocirc;i c&aacute;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Chất Liệu</td>\r\n			<td>C&aacute;t H&agrave;n</td>\r\n		</tr>\r\n		<tr>\r\n			<td>M&agrave;u Sắc</td>\r\n			<td>Đỏ</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Size</td>\r\n			<td>+ size M: Chiều d&agrave;i đầm: 85cm, Ngực 80-84cm, Eo 68-72cm, M&ocirc;ng 88-92cm<br />\r\n			+ size L: Chiều d&agrave;i đầm: 86cm, Ngực 84-88cm, Eo 72-76cm, M&ocirc;ng 92-96cm<br />\r\n			+ size XL: Chiều d&agrave;i đầm: 87cm, Ngực 88-92cm, Eo 76-80cm, M&ocirc;ng 96-100cm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Kiểu D&aacute;ng</td>\r\n			<td>Đầm đu&ocirc;i c&aacute; noel</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 0, 0, 0, '2020-12-15 17:46:57', 50, 1, '2020-12-15 17:46:57'),
(4, 'Đầm Cổ Yếm Ren Suông', 'dam-co-yem-ren-suong', 250000, 0, 10, 0, 10, '2020-12-15__1513151381-dam-co-yem-ren.png', 2, 1, 1, 0, '<p>&nbsp;M&atilde; SP :&nbsp;D084<br />\r\n✪ Shop miễn ph&iacute;&nbsp;giao h&agrave;ng với đơn h&agrave;ng trị gi&aacute; tr&ecirc;n&nbsp;<strong>300.000VND</strong><br />\r\n✪ Ship COD to&agrave;n quốc</p>', '<p>Shop quần &aacute;o thời trang nữ T&amp;A chuy&ecirc;n cung c&acirc;́p&nbsp;<strong>Đầm cổ yếm ren su&ocirc;ng</strong>, đầm ren su&ocirc;ng, v&aacute;y đầm dạo phố, váy đ&acirc;̀m thời trang tr&ecirc;n to&agrave;n quốc. C&aacute;c bạn li&ecirc;n hệ hotline:&nbsp;0122 961 3333&nbsp;để được tư vấn nh&eacute;.<br />\r\n<br />\r\n✔&nbsp;&nbsp;T&ecirc;n sản phẩm : Đầm cổ yếm ren su&ocirc;ng<br />\r\n✔&nbsp;&nbsp;M&atilde; SP : D084<br />\r\n✔&nbsp;Size : Freesize<br />\r\n✔&nbsp;&nbsp;M&agrave;u sắc :&nbsp; Đen<br />\r\n✔ Chất liệu : Ren ( c&oacute; lớp l&oacute;t )<br />\r\n✔&nbsp;&nbsp;Th&iacute;ch hợp cho c&aacute;c bạn nữ tung tăng dạo phố, dự c&aacute;c buổi tiệc c&ugrave;ng bạn b&egrave;.&nbsp;<br />\r\n&nbsp;</p>\r\n\r\n<p><img alt=\"đầm cổ yếm ren suông\" src=\"http://tashop.vn/templates/pictures/content/24232076_902108253281078_2289187809528999584_n.jpg\" style=\"height:100%; width:100%\" /></p>', 0, 0, 0, '2020-12-15 17:46:57', 50, 6, '2020-12-15 17:46:57'),
(5, 'Đầm Xòe Tay Phồng Phối Nơ', 'dam-xoe-tay-phong-phoi-no', 1890000, 0, 10, 0, 0, '2020-12-15__1488625433-dam-xoe-tay-phong-phoi-no-1.png', 2, 0, 1, 0, '<p>&nbsp;M&atilde; SP : D055<br />\r\n✪ Shop miễn ph&iacute; giao h&agrave;ng với đơn h&agrave;ng trị gi&aacute; tr&ecirc;n&nbsp;<strong>300.000VND</strong><br />\r\n✪ Ship COD to&agrave;n quốc</p>', '<ul>\r\n	<li>Mua&nbsp;<strong>Đầm X&ograve;e Tay Phồng Phối Nơ</strong>&nbsp;đẹp. Shop chuy&ecirc;n&nbsp;<strong>Đầm X&ograve;e Tay Phồng Phối Nơ</strong>, c&aacute;c loại đầm x&ograve;e nữ đẹp, Ship COD tr&ecirc;n to&agrave;n quốc. Li&ecirc;n hệ ngay số&nbsp;Hotline: 0122 961 3333&nbsp;để được tư vấn.<br />\r\n	<br />\r\n	- T&ecirc;n sản phẩm :&nbsp;<strong>Đầm X&ograve;e Tay Phồng Phối Nơ</strong><br />\r\n	- M&atilde; SP : D055<br />\r\n	- Size : Free size<br />\r\n	- M&agrave;u sắc : Xanh Navy<br />\r\n	- Th&iacute;ch hợp cho c&aacute;c bạn nữ dạo phố, cafe.&nbsp;</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>', 0, 0, 4, '2020-12-15 17:46:57', 100, 5, '2021-05-14 06:20:49'),
(6, 'Quần short - Quần short kaki nam', 'quan-short-quan-short-kaki-nam', 2650000, 0, 2, 0, 15, '2020-12-15__9c736b6b19a2169185b0e7f67806f1b4.jpg', 4, 1, 1, 0, NULL, '<ul>\r\n	<li>SƠ MI NAM C&Ocirc;NG SỞ CAO CẤP tự sản xuất v&agrave; ph&acirc;n phối &aacute;o sơ mi của m&igrave;nh do đ&oacute; shop c&oacute; tr&aacute;ch nhiệm tuyệt đối với tất cả c&aacute;c sản phẩm b&aacute;n ra. Sản phẩm của shop được nhận ĐỔI TRẢ dưới mọi t&igrave;nh huống. Về ph&iacute; vận chuyển đổi trả:</li>\r\n	<li>- Nếu sản phẩm lỗi hoặc shop ph&aacute;t h&agrave;ng sai, shop sẽ chịu to&agrave;n bộ ph&iacute; vận chuyển đổi trả.</li>\r\n	<li>- Nếu shop đ&atilde; tư vấn hoặc kh&aacute;ch đặt theo bảng size của shop nhưng kh&ocirc;ng vừa, shop chịu 1 chiều đổi trả.</li>\r\n	<li>- Nếu kh&aacute;ch tự đặt h&agrave;ng kh&ocirc;ng qua tư vấn v&agrave; kh&ocirc;ng vừa, c&aacute;c bạn vui l&ograve;ng chịu ph&iacute; đổi trả gi&uacute;p shop.</li>\r\n</ul>', 0, 0, 0, '2020-12-15 17:46:57', 120, 1, '2020-12-15 17:46:57'),
(7, 'Quần Short nỉ nam Active Gem màu xám - Shark Grey', 'quan-short-ni-nam-active-gem-mau-xam-shark-grey', 249000, 0, 2, 0, 50, '2020-12-15__1125-x-1275-13-585x663.jpg', 0, 0, 1, 0, '<ul>\r\n	<li>Chất liệu: 57% Cotton 38% Polyester 5% Spandex</li>\r\n	<li>Chất nỉ &ecirc;m, mượt, đảm bảo kh&ocirc;ng x&ugrave; l&ocirc;ng, kh&ocirc;ng g&acirc;y ngứa kh&oacute; chịu</li>\r\n	<li>Lưng quần Bozip co gi&atilde;n đồng thời với chun quần kh&ocirc;ng g&acirc;y hằn cộm khi mặc, tiệp m&agrave;u với vải ch&iacute;nh</li>\r\n</ul>', '<ul>\r\n	<li>\r\n	<p>Một chiếc quần đem đến cho bạn sự thoải m&aacute;i, một chiếc quần ph&ugrave; hợp cho những ng&agrave;y thời tiết se lạnh, một chiếc quần đủ lịch sự khi mặc v&agrave; cũng ph&ugrave; hợp trong mọi ho&agrave;n cảnh v&agrave; Coolmate giới thiệu đến bạn chiếc&nbsp;<strong>Quần Short nỉ nam Active Gem -</strong>&nbsp;<strong>ho&agrave;n hảo cho những ng&agrave;y chẳng muốn xỏ ch&acirc;n v&agrave;o những chiếc quần d&agrave;i.</strong></p>\r\n\r\n	<p>Nếu bạn đ&atilde; sở hữu hoặc thấy Quần Short French th&igrave; chắc hẳn cũng đang băn khoăn sự kh&aacute;c biệt giữa Short French v&agrave; Short Active Gem l&agrave; g&igrave;, để Coolmate giải đ&aacute;p bạn ngay:&nbsp;</p>\r\n\r\n	<p>Kh&ocirc;ng những cải tiến hơn về chất liệu v&agrave; những đặc điểm như chun quần, t&uacute;i kho&aacute; chuyển sang YKK - loại kho&aacute; chất lượng tốt nhất hiện nay. Chiếc quần Short nỉ Active Gem c&ograve;n c&oacute; form đứng d&aacute;ng v&agrave; nam t&iacute;nh hơn đem đến cảm gi&aacute;c<strong>&nbsp;lịch sự nhưng vẫn thoải m&aacute;i</strong>&nbsp;khi mặc.</p>\r\n\r\n	<p><img alt=\"\" src=\"https://mcdn.coolmate.me/image/October2020/XANH_BONG_DEM_(4).jpg\" style=\"height:100%; width:100%\" /></p>\r\n\r\n	<p><strong>Kh&ocirc;ng chỉ chăm ch&uacute;t từ phần vải dệt, sản phẩm của Coolmate lu&ocirc;n được đảm bảo để đạt đến độ ho&agrave;n thiện tốt nhất!&nbsp;</strong></p>\r\n	</li>\r\n	<li>Phần bo zip được&nbsp;<strong>dệt v&agrave; nhuộm c&ugrave;ng m&agrave;u vải ch&iacute;nh</strong>&nbsp;tạo&nbsp;<strong>m&agrave;u sắc đồng nhất</strong>&nbsp;cho bạn 1 outfit tự tin, thoải m&aacute;i&nbsp;</li>\r\n	<li>Những sản phẩm tại Coolmate dần chuyển sang&nbsp;<strong>sử dụng kho&aacute; k&eacute;o YKK</strong>&nbsp;- loại kho&aacute; tốt nhất thế giới, đảm bảo độ bền đến khi bạn kh&ocirc;ng thể mặc được nữa.&nbsp;</li>\r\n	<li>Coolmate hiểu c&aacute;c bạn lu&ocirc;n muốn 1 chiếc &aacute;o, 1 chiếc quần kh&ocirc;ng qu&aacute; đơn giản v&agrave; phần logo được th&ecirc;u mịn, kh&ocirc;ng qu&aacute; nổi bật&nbsp;<strong>cho bạn hơn sự đơn giản nhưng vẫn tinh tế.</strong></li>\r\n	<li><strong>Vải nỉ được ho&agrave;n thiện tốt</strong>, để chiếc &aacute;o lu&ocirc;n bền m&agrave;u c&ugrave;ng độ s&aacute;ng tr&ecirc;n vải ở mức tuyệt nhất.&nbsp;</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Sự đặc biệt từ&nbsp;<strong>Quần Short nỉ Active Gem</strong>&nbsp;ch&iacute;nh l&agrave; nằm ở phần vải v&agrave; c&ocirc;ng nghệ dệt,&nbsp;<a href=\"https://www.coolmate.me/\">Coolmate</a>&nbsp;đ&atilde; d&agrave;nh rất nhiều thời gian từ chọn vải nhưng kh&ocirc;ng t&igrave;m được loại vải ph&ugrave; hợp, ch&uacute;ng t&ocirc;i đ&atilde; bắt tay v&agrave;o chọn những sợi vải nỉ đặc biệt nhất ch&iacute;nh l&agrave;&nbsp;<strong>vải nỉ m&egrave; c&ugrave;ng kiểu dệt Toshi</strong>&nbsp;- sự kết hợp giữ kiểu dệt kim truyền thống v&agrave; kiểu dệt hạt m&egrave; hay d&ugrave;ng cho đồ thể thao v&agrave; một chiếc quần Short nỉ Active Gem ra đời.&nbsp;</p>', 0, 0, 0, '2020-12-15 17:46:57', 50, 6, '2020-12-15 17:46:57'),
(8, 'Quần short nam French màu xám đậm', 'quan-short-nam-french-mau-xam-dam', 350000, 0, 2, 0, 10, '2020-12-15__am-4642-copy-550x623.jpg', 2, 0, 1, 0, '<ul>\r\n	<li>Chất liệu: 57% Cotton + 38% Polyester+ 5% Spandex</li>\r\n	<li>Vải Cotton mềm mại, xốp, nhẹ, kh&ocirc;ng nhăn nh&agrave;u</li>\r\n	<li>Thiết kế đơn giản, kiểu d&aacute;ng khỏe khoắn với đường may tinh tế, tạo phong c&aacute;ch thể thao, năng động</li>\r\n	<li>C&oacute; kho&aacute; zip tiện lợi khi đựng đồ</li>\r\n	<li>Lưu th&ocirc;ng kh&iacute; tốt</li>\r\n</ul>', '<p><a href=\"https://coolmate.me/collection/quan-short\" rel=\"noopener\" target=\"_blank\">Quần Short nam</a>&nbsp;của Coolmate nổi bật với c&aacute;ch dệt kiểu French Terry là m&ocirc;̣t mặt vải phẳng, trơn, mặt còn lại có các vòng lặp chéo ch&ocirc;̀ng l&ecirc;n nhau như vảy cá n&ecirc;n còn được gọi là vải thun da. Các vòng lặp này có tác dụng làm tăng di&ecirc;̣n tích ti&ecirc;́p xúc với ch&acirc;́t lỏng và hút nước nhanh hơn. Do đó loại vải này giúp người mặc cảm th&acirc;́y th&ocirc;ng thoáng, thoát &acirc;̉m, giảm nhi&ecirc;̣t, giữ da lu&ocirc;n kh&ocirc; thoáng.</p>\r\n\r\n<p><img alt=\"\" src=\"https://mcdn.coolmate.me/image/June2020/imagetools0.png\" style=\"width:356px\" /></p>\r\n\r\n<p>Ngo&agrave;i những đặc điểm tự nhi&ecirc;n của kiểu dệt French Terry, chiếc quần Short nam n&agrave;y c&ograve;n được&nbsp;<a href=\"https://coolmate.me/\" rel=\"noopener\" target=\"_blank\">Coolmate</a>&nbsp;ch&uacute; trọng thiết kế th&ecirc;m những t&iacute;nh năng quan trọng v&agrave; cần thiết đối với nam giới. Mục đ&iacute;ch l&agrave; để c&aacute;c hoạt động của c&aacute;c ch&agrave;ng trở n&ecirc;n thuận tiện, dễ d&agrave;ng v&agrave; nhanh ch&oacute;ng hơn, d&ugrave; chỉ l&agrave; những hoạt động thường ng&agrave;y, đơn giản đến mức chẳng ai muốn quan t&acirc;m.</p>', 0, 0, 0, '2020-12-15 17:46:57', 150, 5, '2020-12-15 17:46:57'),
(9, 'Áo sơ mi dài tay nam Aristino', 'ao-so-mi-dai-tay-nam-aristino', 890000, 0, 3, 0, 15, '2020-12-15__ao-so-mi-aristino-als27309-02x500x500x4.jpg', 4, 1, 1, 0, '<p><strong>Chất liệu:</strong>&nbsp;88% Poly, 12% Moadal tho&aacute;ng kh&iacute;, mềm m&aacute;t</p>\r\n\r\n<p><strong>Kiểu d&aacute;ng:</strong>&nbsp;Body fit &ocirc;m người, t&ocirc;n d&aacute;ng, nổi bật ưu điểm cơ thể</p>\r\n\r\n<p><strong>Thiết kế:</strong>&nbsp;Tỉ mỉ tr&ecirc;n từng chi tiết,&nbsp;m&agrave;u sắc của khuy &aacute;o v&agrave; đường chỉ cần phải ph&ugrave; hợp với m&agrave;u của &nbsp;vải 100%</p>\r\n\r\n<p><strong>Ưu điểm:</strong>&nbsp;Số lượng kim tr&ecirc;n &aacute;o somi của Bi l&agrave; 8 mũi/ 1 cm.&nbsp;<strong>Gấp 2 lần</strong>&nbsp;so với sơ mi ngo&agrave;i thị trường</p>', '<p>TH&Ocirc;NG TIN CHI TIẾT:</p>\r\n\r\n<table border=\"1\" cellpadding=\"0\" cellspacing=\"0\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Thương hiệu</td>\r\n			<td>BILUXURY</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Xuất xứ</td>\r\n			<td>Việt Nam</td>\r\n		</tr>\r\n		<tr>\r\n			<td>M&atilde; sản phẩm</td>\r\n			<td>SMDT017TRK</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>Chất liệu:</strong></p>\r\n\r\n<p>Chất liệu vải mềm m&aacute;t, tho&aacute;ng kh&iacute;, thấm h&uacute;t mồ h&ocirc;i tốt</p>\r\n\r\n<p>Sợi vải từ thi&ecirc;n nhi&ecirc;n, th&acirc;n thiện với l&agrave;n da</p>\r\n\r\n<p><strong>Thiết kế:</strong><br />\r\nSản phẩm c&oacute; đường chỉ may tỉ mỉ, tinh tế.</p>\r\n\r\n<p>Thiết kể kiểu sơ mi cổ điển với cổ đức, d&aacute;ng &ocirc;m s&aacute;t. &Aacute;o sơ mi đơn giản, dễ mặc, dễ kết hợp với nhiều kiểu trang phục kh&aacute;c nhau</p>\r\n\r\n<p><strong>Mục đ&iacute;ch sử dụng:</strong><br />\r\n&Aacute;o sơ mi trắng l&agrave; lựa chọn h&agrave;ng đầu cho bạn đi l&agrave;m, đi học, đi chơi, sử dụng trong lễ cưới hay đi sự kiện kết hợp c&ugrave;ng vest,....&nbsp;mang đến một h&igrave;nh ảnh so&aacute;i ca gọn g&agrave;ng, chỉnh chu, sang trọng v&agrave; nam t&iacute;nh quyến rũ.&nbsp;</p>\r\n\r\n<p><strong>Hướng dẫn bảo quản:&nbsp;</strong><br />\r\n- Giặt m&aacute;y với chu kỳ trung b&igrave;nh v&agrave; v&ograve;ng quay ngắn<br />\r\n- Giặt với nhiệt độ tối đa 30 độ C<br />\r\n- Sấy ở nhiệt độ thường&nbsp;<br />\r\n- L&agrave; ủi ở nhiệt độ thấp</p>', 0, 0, 0, '2020-12-15 17:46:57', 50, 1, '2020-12-15 17:46:57'),
(10, 'Áo Thun Nam Unisex thiết kế hình trơn 2 màu Đen / Trắng', 'ao-thun-nam-unisex-thiet-ke-hinh-tron-2-mau-den-trang', 2180000, 0, 14, 0, 10, '2020-12-15__bc1e909296ed032ae02f5124865ab508.jpg', 4, 0, 1, 0, '<p>Chất liệu 100% Cotton Ai Cập kh&ocirc;ng pha polyester<br />\r\nChất dầy dặn cảm gi&aacute;c được sợi b&ocirc;ng thi&ecirc;n nhi&ecirc;u khi mặc, &aacute;o ph&ocirc;ng cổ tr&ograve;n basic cộc tay tho&aacute;ng m&aacute;t, thấm h&uacute;t mồ h&ocirc;i<br />\r\nDệt sợi cotton ti&ecirc;u chuẩn 190Gram/m2<br />\r\nCam kết kh&ocirc;ng bị co gi&atilde;n, kh&ocirc;ng bị phai khi giặt</p>', '<h3>&Aacute;o Thun Nam Vải cotton, co d&atilde;n, thấm h&uacute;t mồ h&ocirc;i tốt<br />\r\nChất liệu 80% cotton, 20% PE thấm h&uacute;t mồ h&ocirc;i<br />\r\nKiểu cổ tr&ograve;n, tay ngắn đơn giản, thời trang<br />\r\nPhong c&aacute;ch đường phố năng động v&agrave; thoải m&aacute;i</h3>\r\n\r\n<p><img alt=\"\" id=\"https://salt.tikicdn.com/ts/tmp/a0/91/c5/385666d128f5c206950667567e67d7bf.jpg\" src=\"https://salt.tikicdn.com/ts/tmp/a0/91/c5/385666d128f5c206950667567e67d7bf.jpg\" style=\"height:750px; width:750px\" title=\"\" /></p>\r\n\r\n<p>&nbsp;</p>', 0, 0, 0, '2020-12-15 17:46:57', 50, 4, '2020-12-15 17:46:57'),
(11, 'Áo Thun Nam', 'ao-thun-nam', 1550000, 0, 14, 0, 0, '2020-12-15__69-431599-middles.jpg', 7, 0, 1, 3, '<p>&Aacute;o Thun Nam Vải cotton, co d&atilde;n, thấm h&uacute;t mồ h&ocirc;i tốt<br />\r\nChất liệu 80% cotton, 20% PE thấm h&uacute;t mồ h&ocirc;i<br />\r\nKiểu cổ tr&ograve;n, tay ngắn đơn giản, thời trang<br />\r\nPhong c&aacute;ch đường phố năng động v&agrave; thoải m&aacute;i</p>', '<p>&Aacute;o Thun Nam Vải cotton, co d&atilde;n, thấm h&uacute;t mồ h&ocirc;i tốt<br />\r\nChất liệu 80% cotton, 20% PE thấm h&uacute;t mồ h&ocirc;i<br />\r\nKiểu cổ tr&ograve;n, tay ngắn đơn giản, thời trang<br />\r\nPhong c&aacute;ch đường phố năng động v&agrave; thoải m&aacute;i</p>\r\n\r\n<p><img alt=\"\" id=\"https://salt.tikicdn.com/ts/tmp/a0/91/c5/385666d128f5c206950667567e67d7bf.jpg\" src=\"https://salt.tikicdn.com/ts/tmp/a0/91/c5/385666d128f5c206950667567e67d7bf.jpg\" style=\"height:750px; width:750px\" title=\"\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" id=\"https://salt.tikicdn.com/ts/tmp/7f/d3/66/917913579f6cced042e6020cb876c93c.jpg\" src=\"https://salt.tikicdn.com/ts/tmp/7f/d3/66/917913579f6cced042e6020cb876c93c.jpg\" style=\"height:750px; width:750px\" title=\"\" /></p>', 0, 0, 0, '2020-12-15 17:46:57', 150, 1, '2020-12-15 17:46:57'),
(12, 'Bộ thắt lưng 2 mặt', 'bo-that-lung-2-mat', 400000, 0, 5, 0, 0, '2020-12-15__73142997-1587173341422834-1770893820200747008-n-0c06b6e1c7eb46c98f479d354a27a693-medium.png', 0, 0, 1, 0, NULL, '<p><strong>THẮT LƯNG DA CỰC CHẤT</strong></p>\r\n\r\n<p><strong>Kiểu d&aacute;ng</strong>:</p>\r\n\r\n<ul>\r\n	<li>Thắt lưng da kh&oacute;a kim loại tự kh&oacute;a, mặt thắt lưng thiết kế m&agrave;i nh&aacute;m, khắc chữ tinh xảo.</li>\r\n	<li>Chất da sần, đẹp.</li>\r\n	<li>Với 2 mặt sang chảnh, thay đổi kiểu d&aacute;ng.</li>\r\n</ul>\r\n\r\n<p><strong>Chất liệu</strong>: Da cao cấp.</p>\r\n\r\n<p><strong>M&agrave;u sắc</strong>: Đen</p>', 0, 0, 0, '2020-12-15 17:46:57', 50, 1, '2020-12-15 17:46:57'),
(13, 'Đồng hồ cặp nam nữ thời trang', 'dong-ho-cap-nam-nu-thoi-trang', 300000, 0, 5, 0, 0, '2020-12-15__8d676d97d0b42326e389a1f56a3706e0.jpg', 0, 0, 1, 0, '<p>Đồng hồ cặp nam nữ đ&ocirc;i thời trang, thiết kế trẻ trung, kiểu d&aacute;ng ấn tượng, phong c&aacute;ch c&aacute; t&iacute;nh cho bạn trẻ thật nổi bật.</p>', '<p>Th&ocirc;ng tin chi tiết</p>\r\n\r\n<p>Ng&agrave;y nay đồng hồ đeo tay đ&atilde; trở th&agrave;nh 1 phụ kiện thời trang kh&ocirc;ng thể thiếu đối với tất cả mọi người. Ngo&agrave;i chức năng cung cấp th&ocirc;ng th&ocirc;ng tin thời gian, đồng hồ c&ograve;n gi&uacute;p bạn thể hiện được gu thẩm mỹ tinh tế của m&igrave;nh. H&ocirc;m nay ch&uacute;ng t&ocirc;i giới thiệu đến bạn sản phẩm đồng hồ cặp nam nữ Kimio thời trang với thiết kế trẻ trung, kiểu d&aacute;ng thời trang, đẹp mắt, l&agrave; phụ kiện thời trang l&yacute; tưởng d&agrave;nh cho bạn trẻ.</p>', 0, 0, 0, '2020-12-15 17:46:57', 100, 6, '2020-12-15 17:46:57'),
(14, 'Đồng hồ omegga dây thép', 'dong-ho-omegga-day-thep', 500000, 0, 5, 0, 0, '2020-12-15__fcbbe9026bfa6db73f8eabfed6a8a2f7.jpg', 1, 0, 1, 0, '<p>Đ&ocirc;̀ng h&ocirc;̀ Omegga d&acirc;y th&eacute;p chất liệu mặt k&iacute;nh cứng, d&acirc;y kim loại. Thiết kế theo xu hướng cổ điển, sang trọng c&ugrave;ng c&aacute;c chữ số La M&atilde;.</p>', '<p>Cũng như t&uacute;i x&aacute;ch hay gi&agrave;y cao g&oacute;t với nữ giới, chiếc đồng hồ từ l&acirc;u đ&atilde; trở th&agrave;nh phụ kiện kh&ocirc;ng thể thiếu được với c&aacute;c ch&agrave;ng. Một chiếc đồng hồ kh&ocirc;ng đơn giản chỉ để gi&uacute;p c&aacute;c ch&agrave;ng biết được thời gian m&agrave; c&ograve;n tạo n&ecirc;n một phong c&aacute;ch nam t&iacute;nh, lịch l&atilde;m, một ấn tượng kh&oacute; phai. Để thấy ngay &ldquo;ph&eacute;p thuật&rdquo; thời trang của những chiếc đồng hồ, h&ocirc;m nay Si&ecirc;u Mua xin được giới thiệu đến c&aacute;c ch&agrave;ng chiếc&nbsp;<strong><a href=\"http://www.mydeal.vn/danh-muc/8/dong-ho-tui-xach-vi.html\" target=\"_blank\">đồng hồ</a>&nbsp;Omegga d&acirc;y th&eacute;p</strong>&nbsp;với thiết kế v&ocirc; c&ugrave;ng tinh xảo, hứa hẹn sẽ khiến c&aacute;c ch&agrave;ng phải h&agrave;i l&ograve;ng.</p>', 0, 0, 0, '2020-12-15 17:46:57', 0, 1, '2020-12-15 17:46:57'),
(15, 'Áo Vest Nazafu', 'ao-vest-nazafu', 1350000, 0, 13, 0, 10, '2021-05-03__ao-vest-nazafu-xam-chuot-1130-10575-slide-products-5c36c681a3d09.jpg', 3, 0, 1, 0, '<p>Dịp 30/04 v&agrave; 01/05</p>', '<p>Trẻ trung nam t&iacute;nh v&agrave; mạnh mẻ</p>', 1, 5, 5, '2021-05-03 15:41:14', 10, 5, '2021-05-14 06:25:12');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products_attributes`
--

CREATE TABLE `products_attributes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pa_product_id` int(11) NOT NULL DEFAULT 0,
  `pa_attribute_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products_attributes`
--

INSERT INTO `products_attributes` (`id`, `pa_product_id`, `pa_attribute_id`) VALUES
(144, 1, 2),
(145, 1, 3),
(146, 1, 4),
(147, 1, 5),
(148, 1, 22),
(149, 2, 2),
(150, 2, 3),
(151, 2, 4),
(152, 2, 5),
(153, 2, 6),
(154, 2, 7),
(155, 2, 19),
(156, 2, 20),
(157, 2, 21),
(158, 2, 22),
(159, 3, 3),
(160, 3, 4),
(161, 3, 5),
(162, 3, 6),
(163, 3, 7),
(164, 3, 19),
(172, 5, 2),
(173, 5, 3),
(174, 5, 4),
(175, 5, 5),
(176, 5, 18),
(177, 5, 19),
(178, 4, 3),
(179, 4, 4),
(180, 4, 5),
(181, 4, 6),
(182, 4, 7),
(183, 4, 21),
(184, 4, 22),
(185, 6, 2),
(186, 6, 3),
(187, 6, 4),
(188, 6, 5),
(189, 6, 6),
(190, 6, 7),
(191, 6, 18),
(192, 6, 19),
(193, 7, 2),
(194, 7, 3),
(195, 7, 4),
(196, 7, 5),
(197, 7, 6),
(198, 7, 7),
(199, 7, 18),
(200, 7, 21),
(201, 7, 22),
(209, 8, 2),
(210, 8, 3),
(211, 8, 4),
(212, 8, 5),
(213, 8, 6),
(214, 8, 7),
(215, 8, 18),
(252, 10, 3),
(253, 10, 4),
(254, 10, 6),
(255, 10, 7),
(256, 10, 18),
(257, 10, 21),
(258, 10, 22),
(263, 11, 6),
(264, 11, 7),
(265, 11, 18),
(266, 11, 22),
(267, 9, 2),
(268, 9, 3),
(269, 9, 4),
(270, 9, 5),
(271, 9, 6),
(272, 9, 18),
(273, 9, 19),
(274, 9, 22),
(284, 15, 2),
(285, 15, 3),
(286, 15, 4),
(287, 15, 5),
(288, 15, 6),
(289, 15, 7),
(290, 15, 18),
(291, 15, 19),
(292, 15, 20);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products_keywords`
--

CREATE TABLE `products_keywords` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pk_product_id` int(11) NOT NULL DEFAULT 0,
  `pk_keyword_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products_keywords`
--

INSERT INTO `products_keywords` (`id`, `pk_product_id`, `pk_keyword_id`) VALUES
(48, 1, 8),
(49, 2, 8),
(50, 3, 3),
(52, 5, 3),
(53, 4, 3),
(54, 6, 1),
(55, 7, 2),
(56, 7, 4),
(58, 8, 1),
(64, 10, 4),
(68, 11, 4),
(69, 13, 1),
(70, 9, 5),
(72, 15, 8);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_images`
--

CREATE TABLE `product_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pi_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pi_slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pi_product_id` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ratings`
--

CREATE TABLE `ratings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `r_user_id` int(11) NOT NULL DEFAULT 0,
  `r_product_id` int(11) NOT NULL DEFAULT 0,
  `r_number` tinyint(4) NOT NULL DEFAULT 0,
  `r_status` tinyint(4) NOT NULL DEFAULT 0,
  `r_content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `ratings`
--

INSERT INTO `ratings` (`id`, `r_user_id`, `r_product_id`, `r_number`, `r_status`, `r_content`, `created_at`, `updated_at`) VALUES
(4, 4, 15, 5, 0, 'Rất đẹp', '2021-05-14 06:25:12', '2021-05-14 06:25:12'),
(5, 4, 1, 5, 0, 'Tuyệt vời', '2021-05-14 08:01:51', '2021-05-14 08:01:51');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slides`
--

CREATE TABLE `slides` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sd_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sd_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sd_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sd_target` tinyint(4) NOT NULL DEFAULT 1,
  `sd_active` tinyint(4) NOT NULL DEFAULT 1,
  `sd_sort` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `slides`
--

INSERT INTO `slides` (`id`, `sd_title`, `sd_link`, `sd_image`, `sd_target`, `sd_active`, `sd_sort`, `created_at`, `updated_at`) VALUES
(1, 'slide 1', '/', '2020-06-18__banner-vietmax-0406-9675c8d4e6e340379434f671512c09d7-master.jpg', 1, 1, 1, '2020-12-15 17:47:50', '2020-12-15 17:47:50'),
(2, 'slide 2', '/', '2020-06-18__banner-pin-hg-352dd886239a459c84e69029c7c25fa3-master.png', 1, 1, 0, '2020-12-15 17:47:50', '2020-12-15 17:47:50'),
(3, 'slide 3', '/', '2020-06-18__banner-tui-xach-f1a1e16b84e143aa92c57542d2737d9e-master.jpg', 1, 1, 0, '2020-12-15 17:47:50', '2020-12-15 17:47:50');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `statics`
--

CREATE TABLE `statics` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `s_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `s_slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `s_type` tinyint(4) NOT NULL DEFAULT 0,
  `s_md5` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `s_content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `statics`
--

INSERT INTO `statics` (`id`, `s_title`, `s_slug`, `s_type`, `s_md5`, `s_content`, `created_at`, `updated_at`) VALUES
(1, 'Hướng dẫn chi tiết mua hàng', NULL, 1, NULL, '<p>Khi mua h&agrave;ng bạn k&iacute;ch chọn size sản phẩm</p>\r\n\r\n<p>Tiếp theo đ&oacute; k&iacute;ch v&agrave;o mua ngay&nbsp;</p>', '2020-12-15 17:48:10', '2020-12-15 17:48:10');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tst_user_id` int(11) NOT NULL DEFAULT 0,
  `tst_total_money` int(11) NOT NULL DEFAULT 0,
  `tst_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tst_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tst_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tst_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tst_note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tst_status` tinyint(4) NOT NULL DEFAULT 1,
  `tst_type` tinyint(4) NOT NULL DEFAULT 1 COMMENT ' 1 thanh toan thuong, 2 la thanh toan online',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `tst_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `transactions`
--

INSERT INTO `transactions` (`id`, `tst_user_id`, `tst_total_money`, `tst_name`, `tst_email`, `tst_phone`, `tst_address`, `tst_note`, `tst_status`, `tst_type`, `created_at`, `updated_at`, `tst_code`) VALUES
(11, 4, 1550000, 'Hiệp', 'vvhsub1@gmail.com', '56546546546', '06 Trần Văn Ơn, Phường Phú Hoà, TP Thủ Dầu Một', 'abc', 3, 1, '2021-05-03 15:34:36', '2021-05-14 06:27:18', 'urZzJ3lbbsDqdBO'),
(13, 4, 288000, 'Hiệp', 'vvhsub1@gmail.com', '56546546546', '06 Trần Văn Ơn, Phường Phú Hoà, TP Thủ Dầu Một', 'lll', 1, 1, '2021-05-14 07:59:44', NULL, '9JX7VmrFjBHTvZW'),
(14, 4, 306000, 'Hiệp', 'vvhsub1@gmail.com', '56546546546', '06 Trần Văn Ơn, Phường Phú Hoà, TP Thủ Dầu Một', 'ac', 1, 1, '2021-05-14 08:00:19', NULL, 'W5ELo0nGbgIZYhe');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `types`
--

CREATE TABLE `types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `t_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `t_slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `types`
--

INSERT INTO `types` (`id`, `t_name`, `t_slug`, `created_at`, `updated_at`) VALUES
(1, 'Size', 'size', '2020-12-15 17:50:15', '2020-12-15 17:50:15'),
(2, 'Màu sắc', 'mau-sac', '2020-12-15 17:50:15', '2020-12-15 17:50:15');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `log_login` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `count_comment` tinyint(4) NOT NULL DEFAULT 0,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `phone`, `log_login`, `count_comment`, `address`, `avatar`, `remember_token`, `created_at`, `updated_at`) VALUES
(4, 'Hiệp', 'vvhsub1@gmail.com', NULL, '$2y$10$C2M2VzBxo2kvD.I.91YKQ.YNzwlvJrR1E3h.EPQI2FouXx72UgBXq', '56546546546', '[{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"90.0.4430.93\",\"time\":\"2021-05-03T15:25:45.944138Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"90.0.4430.93\",\"time\":\"2021-05-03T15:28:40.460326Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"90.0.4430.93\",\"time\":\"2021-05-04T01:32:57.787210Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"90.0.4430.212\",\"time\":\"2021-05-14T06:23:21.917113Z\"}]', 2, NULL, NULL, NULL, '2021-04-29 14:44:04', NULL),
(5, 'Duoc', 'duocnvoit@gmail.com', NULL, '$2y$10$MlAR1t8BSUYngKWYBM.DaeQkVkaVU0eQ7ik5IoBDV1YRzX6FPEVRy', '32132123123', NULL, 0, NULL, NULL, NULL, '2021-04-29 14:47:15', NULL),
(6, 'Vo Hiệp', 'vovanhieppn@gmail.com', NULL, '$2y$10$QzZwo.iqGJmF1.Nm20iwv.LSCGd5mPVCwhz87s40ZnbkdyWXUAVyy', '0120120', NULL, 0, NULL, NULL, NULL, '2021-05-04 01:38:34', NULL),
(7, 'Vo Hiệp', 'vvhsub3@gmail.com', NULL, '$2y$10$Xif/C.YE7Hl4JtGq3chosOiw/GU/J9Vmmm53.xQ.s2Kz5nKwEDGVy', '0926811099', NULL, 0, NULL, NULL, NULL, '2021-05-14 08:06:52', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_favourite`
--

CREATE TABLE `user_favourite` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uf_product_id` int(11) NOT NULL DEFAULT 0,
  `uf_user_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `user_favourite`
--

INSERT INTO `user_favourite` (`id`, `uf_product_id`, `uf_user_id`) VALUES
(1, 2, 1),
(4, 2, 4),
(2, 10, 2);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`),
  ADD UNIQUE KEY `admins_phone_unique` (`phone`);

--
-- Chỉ mục cho bảng `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `articles_a_slug_index` (`a_slug`),
  ADD KEY `articles_a_hot_index` (`a_hot`),
  ADD KEY `articles_a_active_index` (`a_active`),
  ADD KEY `articles_a_menu_id_index` (`a_menu_id`);

--
-- Chỉ mục cho bảng `attributes`
--
ALTER TABLE `attributes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `attributes_atb_name_unique` (`atb_name`),
  ADD KEY `attributes_atb_type_id_index` (`atb_type_id`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_c_slug_unique` (`c_slug`),
  ADD KEY `categories_c_parent_id_index` (`c_parent_id`);

--
-- Chỉ mục cho bảng `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_cmt_parent_id_index` (`cmt_parent_id`),
  ADD KEY `comments_cmt_product_id_index` (`cmt_product_id`),
  ADD KEY `comments_cmt_admin_id_index` (`cmt_admin_id`),
  ADD KEY `comments_cmt_user_id_index` (`cmt_user_id`);

--
-- Chỉ mục cho bảng `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `keywords`
--
ALTER TABLE `keywords`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `keywords_k_slug_unique` (`k_slug`);

--
-- Chỉ mục cho bảng `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_mn_slug_unique` (`mn_slug`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `producer`
--
ALTER TABLE `producer`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `producer_pdr_slug_unique` (`pdr_slug`),
  ADD UNIQUE KEY `producer_pdr_email_unique` (`pdr_email`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_pro_slug_unique` (`pro_slug`),
  ADD KEY `products_pro_hot_index` (`pro_hot`),
  ADD KEY `products_pro_active_index` (`pro_active`);

--
-- Chỉ mục cho bảng `products_attributes`
--
ALTER TABLE `products_attributes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_attributes_pa_product_id_index` (`pa_product_id`),
  ADD KEY `products_attributes_pa_attribute_id_index` (`pa_attribute_id`);

--
-- Chỉ mục cho bảng `products_keywords`
--
ALTER TABLE `products_keywords`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_keywords_pk_product_id_index` (`pk_product_id`),
  ADD KEY `products_keywords_pk_keyword_id_index` (`pk_keyword_id`);

--
-- Chỉ mục cho bảng `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `slides`
--
ALTER TABLE `slides`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `statics`
--
ALTER TABLE `statics`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_tst_user_id_index` (`tst_user_id`);

--
-- Chỉ mục cho bảng `types`
--
ALTER TABLE `types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `types_t_name_unique` (`t_name`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_phone_unique` (`phone`);

--
-- Chỉ mục cho bảng `user_favourite`
--
ALTER TABLE `user_favourite`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_favourite_uf_product_id_uf_user_id_unique` (`uf_product_id`,`uf_user_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `articles`
--
ALTER TABLE `articles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `attributes`
--
ALTER TABLE `attributes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `events`
--
ALTER TABLE `events`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `keywords`
--
ALTER TABLE `keywords`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `producer`
--
ALTER TABLE `producer`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `products_attributes`
--
ALTER TABLE `products_attributes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=293;

--
-- AUTO_INCREMENT cho bảng `products_keywords`
--
ALTER TABLE `products_keywords`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT cho bảng `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `slides`
--
ALTER TABLE `slides`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `statics`
--
ALTER TABLE `statics`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `types`
--
ALTER TABLE `types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `user_favourite`
--
ALTER TABLE `user_favourite`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
