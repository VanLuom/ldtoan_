-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th9 04, 2022 lúc 04:52 AM
-- Phiên bản máy phục vụ: 10.4.22-MariaDB
-- Phiên bản PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `dior`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `desc` varchar(1024) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `name`, `desc`) VALUES
(1, 'APPLE', 'Apple'),
(2, 'SAMSUNG', 'Samsung\r\n'),
(3, 'OPPO', 'Oppo'),
(4, 'XIAOMI', 'Xiaomi'),
(5, 'REAMLE', 'Reamle'),
(6, 'NOKIA', 'phone'),
(7, 'ASUS', 'phone,laptop\r\n'),
(8, 'VIVO', 'phone'),
(9, 'MORE', 'phone,laptop,watch,technology');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `code` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `code`, `status`, `user_id`, `created_at`) VALUES
(13, '9BnrOlfT', 'Delivered', 14, '2022-09-02'),
(14, 'JUyQc7J5', 'Delivered', 14, '2022-09-02'),
(15, 'M2S0d9dx', 'Shipping', 15, '2022-09-02'),
(16, 'cd6eHdtW', 'Shipping', 15, '2022-09-03'),
(17, '5Lb7b5Hc', 'Pending', 14, '2022-09-03'),
(18, 'Ff9OyjPv', 'Pending', 14, '2022-09-03'),
(19, 'sa80vg7d', 'Canceled', 17, '2022-09-03');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders_details`
--

CREATE TABLE `orders_details` (
  `id` int(11) NOT NULL,
  `quantity` int(11) DEFAULT 0,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `orders_details`
--

INSERT INTO `orders_details` (`id`, `quantity`, `order_id`, `product_id`) VALUES
(15, 1, 13, 2),
(16, 1, 14, 6),
(17, 1, 15, 10),
(18, 1, 15, 13),
(19, 2, 16, 1),
(20, 1, 16, 7),
(21, 1, 16, 9),
(22, 1, 16, 10),
(23, 1, 16, 12),
(24, 1, 17, 6),
(25, 1, 18, 4),
(26, 1, 18, 2),
(27, 1, 18, 11),
(28, 1, 18, 13),
(29, 1, 18, 14),
(30, 1, 19, 1),
(31, 1, 19, 7);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `img` varchar(1024) COLLATE utf8_unicode_ci DEFAULT NULL,
  `desc` varchar(1024) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` double DEFAULT NULL,
  `quantity` int(11) DEFAULT 0,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `img`, `desc`, `price`, `quantity`, `category_id`) VALUES
(1, 'IPhone 13(Pink)', 'http://localhost:8080/Cellphones/public/anh1/dress12.jpg\r\n', 'iPhone 13 Pro Max chắc chắn sẽ là chiếc smartphone cao cấp được quan tâm nhiều nhất trong năm 2021. Dòng iPhone 13 series được ra mắt vào ngày 14 tháng 9 năm 2021 tại sự kiện \"California Streaming\" diễn ra trực tuyến tương tự năm ngoái cùng với 3 phiên bản khác là iPhone 13, 13 mini và 13 Pro.', 1050, 1, 1),
(2, 'Samsung Galaxy Z Fold4\r\n', 'http://localhost:8080/Cellphones/public/anh1/dress15.webp\r\n', 'Theo các nguồn thông tin gần đây, điện thoại Galaxy Z Fold 2022 sẽ có những điểm mới về màu sắc, phiên bản dung lượng bộ nhớ, hiệu năng, camera cùng thiết kế mới. Dưới đây là những tin tức rò rỉ mới nhất về siêu phẩm được cho sẽ có tên là Samsung Z Fold 4 sắp được trình làng trong thời gian tới.', 2500, 1, 2),
(3, 'IPhone 11(Pink)', 'http://localhost:8080/Cellphones/public/anh1/dress10.webp\r\n', 'iPhone 13 Pro Max chắc chắn sẽ là chiếc smartphone cao cấp được quan tâm nhiều nhất trong năm 2021. Dòng iPhone 13 series được ra mắt vào ngày 14 tháng 9 năm 2021 tại sự kiện \"California Streaming\" diễn ra trực tuyến tương tự năm ngoái cùng với 3 phiên bản khác là iPhone 13, 13 mini và 13 Pro.', 1200, 1, 1),
(4, 'Samsung Galaxy Z Fold3 5G', 'http://localhost:8080/Cellphones/public/anh1/logo04.jpg\n', 'Với sự thành công đáng kinh ngạc và luôn cháy hàng từ lúc ra mắt đến thời điểm hiện tại của hai thế hệ trước là Fold 1 và Z Fold 2. Phiên bản Samsung Galaxy Z Fold3 lần này được ra mắt với độ hoàn thiện cao về thiết kế và hiệu năng. Mang đến cho người dùng một trải nghiệm cực kỳ thú vị hơn.', 820, 1, 2),
(5, 'Xiaomi Redmi Note 11 Pro Plus 5G', 'http://localhost:8080/Cellphones/public/anh1/logo02.jpg\r\n', 'Redmi Note 11 Pro Plus chính là mẫu smartphone tầm trung tiếp theo được Xiaomi cho ra mắt với giá hấp dẫn cùng với thiết kế mới tinh tế, cấu hình mạnh mẽ và cụm camera chất lượng cao cho trải nghiệm nhiếp ảnh đầy hứa hẹn.Điện thoại Redmi Note 11 Pro+ có thiết kế thanh lịch và vuông vắn hơn, mặt trước và sau được vát phẳng hơn mang đến kiểu dáng hiện đại, hợp xu hướng. Bốn góc của smartphone vẫn được bo cong để hài hòa với tổng thể, mềm mại cũng như cầm nắm thoải mái.', 930, 1, 4),
(6, 'Apple Macbook Air M2 2022 8GB 256GB', 'http://localhost:8080/Cellphones/public/anh1/logo06.jpg\r\n', 'Sau thành công của dòng Macbook M1 thì Apple lại chuẩn bị mang đến cho người dùng dòng sản phẩm Macbook Air 2022 với những điểm nâng cấp đáng chú ý. Bên cạnh đó mức giá thành lại thấp hơn so với hiện tại, chắc chắn rằng các iFan đang rất nóng lòng chờ đón sự xuất hiện của dòng sản phẩm mới này. ', 1350, 1, 1),
(7, 'Apple MacBook Air M1 256GB 2020', 'http://localhost:8080/Cellphones/public/anh1/logo07.jpg\r\n', 'Là dòng sản phẩm có thiết kế mỏng nhẹ, sang trọng và tinh tế cùng với đó là giá thành phải chăng nên MacBook Air đã thu hút được đông đảo người dùng yêu thích và lựa chọn. Một trong những phiên bản mới nhất mà khách hàng không thể bỏ qua khi đến với CellphoneS đó là MacBook Air M1. Dưới đây là chi tiết về thiết kế, cấu hình của máy.', 1000, 1, 1),
(8, 'Apple iPad mini 6 WiFi 64GB', 'http://localhost:8080/Cellphones/public/anh1/logo11.jpg\n', 'Với sự thành công của các thế hệ iPad mini trước iPad mini 6 là sản phẩm kế nhiệm mới với nhiều tính năng hiện kèm nhiều sự nâng cấp đáng chú ý dành cho người dùng trong năm nay. Nếu bạn đang có nhu cầu mua cho mình một chiếc máy tính bảng iPad để phục vụ cho nhu cầu sử dụng thì iPad Mini 6 sẽ là sự lựa chọn hoàn hảo cho bạn vào thời điểm này cho nhu cầu sử dụng tablet kích thước vừa phải.', 630, 1, 1),
(9, 'Tai nghe chụp tai chống ồn Apple AirPods Max', 'http://localhost:8080/Cellphones/public/anh1/tainghe4.jpg', 'Từ trước đến nay Apple chỉ cho ra mắt dòng tai nghe kích thước nhỏ duy nhất là dòng Airpods. Nắm bắt được nhu cầu người dùng Apple đã cho ra mắt một sản phẩm mới đó là  Airpods Max với nhiều tính năng tiện lợi như chống ồn kèm theo đó là chất lượng âm thanh rất tuyệt vời.', 820, 1, 1),
(10, 'Apple Watch SE 40mm (GPS) Viền Nhôm - Dây Cao Su', 'http://localhost:8080/Cellphones/public/anh1/dongho3.jpg', 'Năm 2020, chắc hẳn các iFan đang háo hức đón chờ các siêu phẩm được ra mắt từ Apple. Đặc biệt Apple Watch SE 40mm  GPS) là một trong những phiên bản được Apple ra mắt vào năm 2020 và đang được nhiều người dùng quan tâm không kém gì phiên bản chính thức cao cấp.', 320, 1, 1),
(11, 'Samsung Galaxy Watch5', 'http://localhost:8080/Cellphones/public/anh1/dongho1.png', 'Đồng hồ Galaxy Watch5 là thế hệ đồng hồ đeo tay thông minh tiếp theo được Samsung ra mắt trong năm nay. Với thiết kế đột phá cùng các công nghệ mới nhất thì đây là lựa chọn tuyệt vời cho những ai yêu thích sự trẻ trung và sang trọng.', 300, 1, 2),
(12, 'Tai nghe Bluetooth Apple AirPods 2 VN/A', 'http://localhost:8080/Cellphones/public/anh1/tainghe1.jpg', 'Vừa qua, Apple đã chính thức cho ra mắt chiếc tai nghe Airpods 2. Thế hệ thứ 2 lần này không có nhiều sự khác biệt so với thế hệ đầu về ngoại hình, trừ một số chi tiết về đèn báo hiệu cũng như ra mắt thêm phiên bản sạc không dây và sạc thường (sạc có dây). Ngoài ra, bạn có thể tham khảo thêm Apple Airpods Pro, sắp được ra mắt trong thời gian tới.', 120, 1, 1),
(13, 'Samsung Galaxy Z Flip3 5G', 'http://localhost:8080/Cellphones/public/anh1/ss1.png', 'Bên cạnh các siêu phẩm của dòng S hay dòng Note thì Samsung còn trình làng một dòng điện thoại siêu đặc biệt. Và cho đến 2021 hãng đã phát triển đến thế hệ thứ ba, với tên gọi Galaxy Z Flip 3. Ngoài sở hữu thiết kế gập độc đáo thì nó còn sở hữu tính năng gì mới hãy cùng chúng tôi xem qua bài viết bên dưới đây nhé.\r\n\r\nZ Flip 3 5G đã được Samsung trình làng cùng với điện thoại Galaxy Z Fold 3 tại sự kiện ra mắt trực tuyến Unpacked diễn ra vào ngày 11/8.', 900, 1, 2),
(14, 'Samsung Galaxy A53 (5G)', 'http://localhost:8080/Cellphones/public/anh1/ss2.jpg', 'Đúng như các nguồn tin rò rỉ trước đó, điện thoại Samsung A53 được nâng cấp đáng kể so với thế hệ tiền nhiệm. Sau đây là những đánh giá về thiết kế, màn hình, cấu hình, hiệu năng, camera, pin và tính năng để bạn có được cái nhìn chi tiết nhất về smartphone này trước khi quyết định có nên mua hay không nhé.', 390, 1, 2),
(15, 'OPPO Reno8', 'http://localhost:8080/Cellphones/public/anh1/rn1.png', 'OPPO Reno8 - chuyên gia chụp ảnh chân dung hàng đầu nhờ sự kết hợp giữa cảm biến cao cấp Sony IMX709(camera trước) và IMX766(camera sau) với ống kính Micro30x. Ngoài ra, phiên bản Reno 8 mang lại cho người dùng khả năng cân bằng cuộc sống theo khung giờ 8 tiếng giúp làm việc hiệu quả và nghỉ ngơi đầy đủ. Hiệu năng mà OPPO Reno 8 sở hữu 8GB RAM, 256GB bộ nhớ trong đi cùng với vi xử lý MediaTek Dimensity 1300 giúp tối ưu các tác vụ hiệu quả cùng hiệu năng chơi game đỉnh cao.', 350, 1, 3),
(16, 'OPPO Reno8 5G 8GB 256GB', 'http://localhost:8080/Cellphones/public/anh1/rn2.png', 'OPPO Reno8 - chuyên gia chụp ảnh chân dung hàng đầu nhờ sự kết hợp giữa cảm biến cao cấp Sony IMX709(camera trước) và IMX766(camera sau) với ống kính Micro30x. Ngoài ra, Reno 8 mang lại cho người dùng khả năng cân bằng cuộc sống theo khung giờ 8 tiếng giúp làm việc hiệu quả và nghỉ ngơi đầy đủ. Hiệu năng mà OPPO Reno 8 5G sở hữu 8GB RAM, 256GB bộ nhớ trong đi cùng với vi xử lý Mediatek Dimensity 1300 5G giúp tối ưu các tác vụ hiệu quả cùng hiệu năng chơi game đỉnh cao.', 570, 1, 3),
(17, 'OPPO Pad Air', 'http://localhost:8080/Cellphones/public/anh1/rn3.png', 'OPPO Pad Air tuy chỉ mới được ra mắt trong thời gian gần đây nhưng đã thu hút được rất nhiều sự quan tâm từ phía người tiêu dùng và được cho là sản phẩm tốt nhất trong phân khúc giá. Chiếc máy tính bảng OPPO gây ấn tượng bởi thiết kế mỏng nhẹ, dung lượng pin lớn, cùng hiệu năng hoạt động ổn định và nhanh chóng.', 390, 1, 3),
(18, 'OPPO Reno7 (5G)', 'http://localhost:8080/Cellphones/public/anh1/rn4.png', 'OPPO là thương hiệu điện thoại nổi tiếng với khả năng chụp hình đẹp và mẫu smartphone mới OPPO Reno7 cũng không ngoại lệ. Điện thoại không chỉ sở hữu thiết kế bắt mắt, camera chất lượng mà còn được trang bị một hiệu năng vượt trội.\r\n\r\nNgoài ra, bạn cũng có thể tham khảo thêm điện thoại OPPO Reno7 Z 5G với mức giá tốt hơn.', 550, 1, 3),
(19, 'Xiaomi Redmi 9T 4GB 64GB\r\n', 'http://localhost:8080/Cellphones/public/anh1/rm1.jpg', 'Điện thoại Xiaomi Redmi 9T phiên bản 4GB/64GB được trang bị Snapdragon 662, viên pin khủng lên đến 6000mAh mang đến cho người dùng những trải nghiệm tuyệt vời.', 200, 1, 4),
(20, 'Realme 8', 'http://localhost:8080/Cellphones/public/anh1/rm2.png', 'Realme là một thương hiệu điện thoại đang dần nhận được sự quan tâm từ người dùng khi hãng luôn cho ra mắt các sản phẩm có nhiều điểm nổi bật trong thiết kế và cấu hình, dẫn đầu xu hướng. Và với Realme 8 vừa ra mắt cùng với Realme 8 Pro cao cấp hơn, người dùng sẽ có cơ hội để trải nghiệm thêm một sản phẩm tuyệt vời của hãng.\r\n\r\n>> Tham khảo ngay điện thoại Realme 9 với nhiều cải tiến đáng kể về cấu hình, thiết kế cũng như camera.', 300, 1, 5),
(21, 'Realme 9i 4GB 64GB', 'http://localhost:8080/Cellphones/public/anh1/rm3.png', 'Realme là một thương hiệu điện thoại đang dần nhận được sự quan tâm từ người dùng khi hãng luôn cho ra mắt các sản phẩm có nhiều điểm nổi bật trong thiết kế và cấu hình, dẫn đầu xu hướng. Và với Realme 8 vừa ra mắt cùng với Realme 8 Pro cao cấp hơn, người dùng sẽ có cơ hội để trải nghiệm thêm một sản phẩm tuyệt vời của hãng.', 390, 1, 5),
(22, 'Vivo Y02s 3G 32GB', 'http://localhost:8080/Cellphones/public/anh1/vv1.jpg', 'Nếu bạn đang tìm một chiếc smartphone giải trí tuyệt đỉnh trong phân khúc phổ thông, điện thoại Vivo Y02s - với dung lượng pin tận 5000mAh, màn hình 6.51 inch và chip xử lý mạnh mẽ sẽ đảm bảo trải nghiệm sử dụng hấp dẫn mọi thời điểm. Vivo Y02s mang đến cho người dùng những ưu điểm sau:', 150, 1, 8),
(23, 'Vivo Y33S', 'http://localhost:8080/Cellphones/public/anh1/vv2.jpg', 'Là một hãng điện thoại Trung với nhiều mẫu điện thoại chất lượng, Vivo mới đây đã cho ra mắt mẫu điện thoại mới mang tên Vivo Y33S. Đây là mẫu điện thoại tầm trung mang lại trải nghiệm chụp hình ấn tượng với thuật toán Super Night.', 350, 1, 8),
(24, 'Asus ROG Phone 6 12GB 256GB', 'http://localhost:8080/Cellphones/public/anh1/as2.png', 'Với những game thủ chuyên nghiệp mong muốn sở hữu một chiếc smartphone gaming có hiệu năng \"siêu cấp\" cho những tựa game MOBA hoặc sinh tồn đình đám hiện nay sẽ là chiếc điện thoại có thể giúp bạn thoải mái chiến game mượt mà với cấu hình cực đại.\r\n\r\nNgoài ra, bạn cũng có thể tham khảo thêm điện thoại Asus ROG Phone 6 có nhiều cải tiến về cấu hình và màn hình.', 3600, 1, 7),
(25, 'ASUS ROG Phone 5S 8GB 128GB', 'http://localhost:8080/Cellphones/public/anh1/as1.jpg', 'Với những game thủ chuyên nghiệp mong muốn sở hữu một chiếc smartphone gaming có hiệu năng \"siêu cấp\" cho những tựa game MOBA hoặc sinh tồn đình đám hiện nay sẽ là chiếc điện thoại có thể giúp bạn thoải mái chiến game mượt mà với cấu hình cực đại.\r\n\r\nNgoài ra, bạn cũng có thể tham khảo thêm điện thoại Asus ROG Phone 6 có nhiều cải tiến về cấu hình và màn hình.', 5200, 1, 7),
(26, 'Nokia G11 Plus 3GB 64GB', 'http://localhost:8080/Cellphones/public/anh1/nk1.jpg', 'Phân khúc smartphone phổ thông chuẩn bị đón nhận thêm một sản phẩm mới đến từ hãng Nokia nổi tiếng đó là điện thoại Nokia G11 Plus. Với thiết kế linh hoạt cùng hiệu năng ổn định và nằm trong phân khúc thị trường giá rẻ giúp cho Nokia G11 Plus trở thành chiếc máy đáng chú ý với những người dùng smartphone.', 170, 1, 6),
(27, 'Nokia Xr20', 'http://localhost:8080/Cellphones/public/anh1/nk2.jpg', 'HMD Global đã mang đến cho chúng ta những chiến binh của thương hiệu lịch sử Nokia và lần này lại là một chiến binh tinh nhuệ khác mang tên Nokia XR20. Tiếp tục thừa hưởng những di sản mà Nokia đã khai thác từ trước khi trở lại cho đến nay, điện thoại Nokia XR20 hưởng những tinh hoa đó và phát triển nó lên một tầm cao mới, không có sự nhàm chán mà chỉ có sự cải tiến, hãy cùng xem chiếc điện thoại này làm được những gì.', 670, 1, 6),
(33, 'iPhone 13 Pro Max 128GB | Chính hãng VN/A', 'http://localhost:8080/Cellphones/public/anh1/ip1.jpg', 'iPhone 13 Pro Max chắc chắn sẽ là chiếc smartphone cao cấp được quan tâm nhiều nhất trong năm 2021. Dòng iPhone 13 series được ra mắt vào ngày 14 tháng 9 năm 2021 tại sự kiện \"California Streaming\" diễn ra trực tuyến tương tự năm ngoái cùng với 3 phiên bản khác là iPhone 13, 13 mini và 13 Pro. Vậy điện thoại 13 Pro Max giá bao nhiêu? Có gì nổi bật? Cùng tìm hiểu ngay nhé!', 1030, 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `role` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `role`) VALUES
(14, 'win@gmail.com', '202cb962ac59075b964b07152d234b70', 'user'),
(15, '123123@gmail.com', '202cb962ac59075b964b07152d234b70', 'user'),
(16, 'admin@gmail.com', '202cb962ac59075b964b07152d234b70', 'Admin'),
(17, 'minhanh@gmail.com', '202cb962ac59075b964b07152d234b70', 'user');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders_details`
--
ALTER TABLE `orders_details`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `orders_details`
--
ALTER TABLE `orders_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
