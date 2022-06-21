-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 18, 2022 lúc 06:59 PM
-- Phiên bản máy phục vụ: 10.4.22-MariaDB
-- Phiên bản PHP: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `aura`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitiethoadon`
--

CREATE TABLE `chitiethoadon` (
  `id_chi_tiet_hoadon` bigint(10) NOT NULL,
  `sodh` bigint(20) NOT NULL,
  `masp` bigint(20) NOT NULL,
  `soluong` int(11) NOT NULL,
  `dongia` float NOT NULL,
  `thanhtien` decimal(9,2) NOT NULL,
  `madv` varchar(200) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `chitiethoadon`
--

INSERT INTO `chitiethoadon` (`id_chi_tiet_hoadon`, `sodh`, `masp`, `soluong`, `dongia`, `thanhtien`, `madv`) VALUES
(151, 1, 1, 2, 1.3, '2.60', '15');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dichvu`
--

CREATE TABLE `dichvu` (
  `madv` bigint(20) NOT NULL,
  `tendv` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `gia` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `dichvu`
--

INSERT INTO `dichvu` (`madv`, `tendv`, `gia`) VALUES
(15, 'Đóng hộp', 10),
(16, 'Gói quà tặng', 20);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoadon`
--

CREATE TABLE `hoadon` (
  `sodh` bigint(20) NOT NULL,
  `emailkh` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ngaygiao` date NOT NULL,
  `tenkh` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `diachi` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `dienthoai` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `hinhthucthanhtoan` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `thanhtien` decimal(9,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `hoadon`
--

INSERT INTO `hoadon` (`sodh`, `emailkh`, `ngaygiao`, `tenkh`, `diachi`, `dienthoai`, `hinhthucthanhtoan`, `thanhtien`) VALUES
(1, 'buiducthanh1111@gmail.com', '2022-06-18', 'Bùi Đức Thành', 'nguyễn trãi', '0859391202', 'ATM', '12.60');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loginadmin`
--

CREATE TABLE `loginadmin` (
  `tendangnhap` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `matkhau` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `loginadmin`
--

INSERT INTO `loginadmin` (`tendangnhap`, `matkhau`) VALUES
('admin', 'admin');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loginuser`
--

CREATE TABLE `loginuser` (
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `matkhau` int(200) NOT NULL,
  `HoTen` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `DienThoai` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `loginuser`
--

INSERT INTO `loginuser` (`email`, `matkhau`, `HoTen`, `DienThoai`) VALUES
('buiducthanh1111@gmail.com', 0, 'Bùi Đức Thành', '0859391202'),
('thanh@gmail.com', 123, 'Thanh Truong', '1234567890'),
('tungvu@gmail.com', 123, 'Vũ Đình Tùng', '0123456789');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhaxuatban`
--

CREATE TABLE `nhaxuatban` (
  `ID` bigint(10) NOT NULL,
  `Ten` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nhaxuatban`
--

INSERT INTO `nhaxuatban` (`ID`, `Ten`) VALUES
(20, 'Singapore'),
(21, 'Việt Nam'),
(22, 'Trung Quốc'),
(23, 'Đức');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `ID` bigint(10) NOT NULL,
  `Ten` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `Gia` double NOT NULL,
  `HinhAnh` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `Manhasx` bigint(10) NOT NULL,
  `Mota` text COLLATE utf8_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `KhuyenMai` tinyint(1) NOT NULL,
  `giakhuyenmai` double NOT NULL,
  `tacgia` varchar(256) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`ID`, `Ten`, `Gia`, `HinhAnh`, `Manhasx`, `Mota`, `date`, `KhuyenMai`, `giakhuyenmai`, `tacgia`) VALUES
(1, 'Lin Puffy Backpack - Blue', 1.5, 'Lin Puffy Backpack - Blue.jpg', 20, '<p>Được th&agrave;nh lập v&agrave;o năm 1948 tại Đức,&nbsp;<strong>PUMA&nbsp;</strong>l&agrave; một trong những thương hiệu thể thao h&agrave;ng đầu thế giới về thiết kế, ph&aacute;t triển c&aacute;c mặt h&agrave;ng gi&agrave;y d&eacute;p, quần &aacute;o, phụ kiện. PUMA chuy&ecirc;n sản xuất gi&agrave;y thời trang v&agrave; gi&agrave;y thể thao d&ugrave;ng trong b&oacute;ng đ&aacute;, chạy bộ, gi&agrave;y để tập luyện trong ph&ograve;ng tập, golf v&agrave; đua xe m&ocirc;-t&ocirc;. Thương hiệu hiện ph&acirc;n phối c&aacute;c d&ograve;ng sản phẩm tại hơn 120 quốc gia v&agrave; được ph&acirc;n phối tại Việt Nam bởi Maison JSC.</p>\r\n', '2015-03-20', 1, 1.3, 'Lê Văn Chiến'),
(2, 'Rope Handle Wrinkled Effect Metallic Backpack - Silver', 2700000, 'Rope Handle Wrinkled Effect Metallic Backpack - Silver.jpg', 21, '<p>Xu hướng t&uacute;i nhỏ vẫn đang tiếp tục ph&aacute;t triển mạnh mẽ v&agrave; tất cả ch&uacute;ng ta đều v&igrave; n&oacute;. Bạn c&oacute; thể kh&ocirc;ng để vừa m&aacute;y t&iacute;nh x&aacute;ch tay của m&igrave;nh trong ba l&ocirc; Lin của ch&uacute;ng t&ocirc;i, nhưng n&oacute; chắc chắn to&aacute;t l&ecirc;n phong c&aacute;ch hơn những chiếc t&uacute;i th&ocirc;ng thường của bạn. M&agrave;u xanh coban tươi s&aacute;ng tạo n&ecirc;n sự nổi bật mạnh mẽ trong khi thiết kế phồng vừa ấm c&uacute;ng vừa hiện đại. Ngo&agrave;i ra, c&ograve;n c&oacute; một t&uacute;i ph&iacute;a trước gi&uacute;p tăng gấp đ&ocirc;i kh&ocirc;ng gian lưu trữ của bạn ngay lập tức. Để c&oacute; vẻ ngo&agrave;i sắc sảo, h&atilde;y tạo kiểu với &aacute;o sơ mi oversized, quần short trắng v&agrave; gi&agrave;y mules quai trong</p>\r\n', '2022-06-18', 0, 0, 'Bùi Đức Thành'),
(3, 'Rope Handle Wrinkled Effect Patent Backpack - Green', 10000000, 'Rope Handle Wrinkled Effect Patent Backpack - Green.jpg', 22, '<p>Xu hướng t&uacute;i nhỏ vẫn đang tiếp tục ph&aacute;t triển mạnh mẽ v&agrave; tất cả ch&uacute;ng ta đều v&igrave; n&oacute;. Bạn c&oacute; thể kh&ocirc;ng để vừa m&aacute;y t&iacute;nh x&aacute;ch tay của m&igrave;nh trong ba l&ocirc; Lin của ch&uacute;ng t&ocirc;i, nhưng n&oacute; chắc chắn to&aacute;t l&ecirc;n phong c&aacute;ch hơn những chiếc t&uacute;i th&ocirc;ng thường của bạn. M&agrave;u xanh coban tươi s&aacute;ng tạo n&ecirc;n sự nổi bật mạnh mẽ trong khi thiết kế phồng vừa ấm c&uacute;ng vừa hiện đại. Ngo&agrave;i ra, c&ograve;n c&oacute; một t&uacute;i ph&iacute;a trước gi&uacute;p tăng gấp đ&ocirc;i kh&ocirc;ng gian lưu trữ của bạn ngay lập tức. Để c&oacute; vẻ ngo&agrave;i sắc sảo, h&atilde;y phối với &aacute;o sơ mi oversized, quần short trắng v&agrave; gi&agrave;y mules quai trong.</p>\r\n', '2022-06-18', 1, 1.3, 'Lê Văn Chiến'),
(4, 'Snake Print Mini Bucket Bag - Beige', 10000000, 'Snake Print Mini Bucket Bag - Beige.jpg', 20, '<p>Chiếc t&uacute;i chần b&ocirc;ng cổ điển được y&ecirc;u th&iacute;ch đ&atilde; trở lại với một số cập nhật mới. Được thiết kế với d&acirc;y chuyền t&ocirc;ng m&agrave;u bạc v&agrave; c&oacute; đường viền m&agrave;u xanh nhạt nhẹ nh&agrave;ng, sự lặp lại n&agrave;y sẽ th&ecirc;m m&agrave;u sắc nổi bật cho mọi diện mạo của bạn. Tr&ecirc;n hết, việc đ&oacute;ng kh&oacute;a bằng kh&oacute;a đẩy đảm bảo tất cả c&aacute;c vật dụng cần thiết của bạn được an to&agrave;n v&agrave; trong tầm với. Để c&oacute; một vẻ ngo&agrave;i cực kỳ linh hoạt v&agrave;o ban ng&agrave;y, h&atilde;y kết hợp người đẹp n&agrave;y với bộ quần &aacute;o in h&igrave;nh v&agrave; một đ&ocirc;i xăng đan xỏ ng&oacute;n.</p>\r\n', '2022-06-18', 0, 0, 'BĐT'),
(5, 'Amelia Metallic Push-Lock Crossbody Bag - Black', 3200000000, 'Amelia Metallic Push-Lock Crossbody Bag - Black.jpg', 23, '<p>Thanh lịch, sang trọng v&agrave; tiện dụng, đ&aacute;p ứng người bạn đồng h&agrave;nh mới nhất h&agrave;ng ng&agrave;y của bạn. V&iacute; dụ điển h&igrave;nh: v&iacute; zip cổ điển của ch&uacute;ng t&ocirc;i. Được chế t&aacute;c trong một m&agrave;u xanh m&ograve;ng k&eacute;t tinh tế, con số nhỏ tiện lợi n&agrave;y chắc chắn sẽ l&agrave;m tăng thương hiệu phong c&aacute;ch của bạn ngay lập tức. Mở ra để lộ nhiều ngăn cho thẻ, tiền mặt, tiền xu v&agrave; hơn thế nữa, giữ cho tất cả c&aacute;c vật dụng của bạn lu&ocirc;n gọn g&agrave;ng v&agrave; ngăn nắp chưa bao giờ dễ d&agrave;ng hơn thế. H&atilde;y giữ n&oacute; trong l&ograve;ng b&agrave;n tay của bạn v&agrave; thể hiện n&oacute; v&agrave;o giờ nghỉ trưa tiếp theo của bạn.</p>\r\n', '2022-06-18', 1, 300000000, 'Lê Văn Chiến'),
(6, 'Amelia Metallic Push-Lock Crossbody Bag - Peacock', 2700000, 'Amelia Metallic Push-Lock Crossbody Bag - Peacock.jpg', 20, '<p>Thanh lịch, sang trọng v&agrave; tiện dụng, đ&aacute;p ứng người bạn đồng h&agrave;nh mới nhất h&agrave;ng ng&agrave;y của bạn. V&iacute; dụ điển h&igrave;nh: v&iacute; zip cổ điển của ch&uacute;ng t&ocirc;i. Được chế t&aacute;c trong một m&agrave;u xanh m&ograve;ng k&eacute;t tinh tế, con số nhỏ tiện lợi n&agrave;y chắc chắn sẽ l&agrave;m tăng thương hiệu phong c&aacute;ch của bạn ngay lập tức. Mở ra để lộ nhiều ngăn cho thẻ, tiền mặt, tiền xu v&agrave; hơn thế nữa, giữ cho tất cả c&aacute;c vật dụng của bạn lu&ocirc;n gọn g&agrave;ng v&agrave; ngăn nắp chưa bao giờ dễ d&agrave;ng hơn thế. H&atilde;y giữ n&oacute; trong l&ograve;ng b&agrave;n tay của bạn v&agrave; thể hiện n&oacute; v&agrave;o giờ nghỉ trưa tiếp theo của bạn.</p>\r\n', '2022-06-18', 1, 2500000, 'Bùi Đức Thành'),
(7, 'Drawstring Bucket Bag - Ivory', 12000, 'Drawstring Bucket Bag - Ivory.jpg', 20, '<p>Nổi bật v&igrave; tất cả những l&yacute; do ph&ugrave; hợp v&agrave;o m&ugrave;a xu&acirc;n n&agrave;y với chiếc t&uacute;i x&ocirc; cỡ trung n&agrave;y được thiết kế để chứa tất cả những g&igrave; bạn cần trong một ng&agrave;y, v&agrave; sau đ&oacute; l&agrave; một số. Việc đ&oacute;ng bằng d&acirc;y r&uacute;t gi&uacute;p đ&oacute;ng nắp đồ đạc c&aacute; nh&acirc;n của bạn trong khi cho ph&eacute;p bạn lấy đồ dễ d&agrave;ng. Được trang bị d&acirc;y đeo c&oacute; thể điều chỉnh được cho ph&eacute;p bạn mang theo chiều d&agrave;i mong muốn, tối đa h&oacute;a sự thoải m&aacute;i trong khi tr&ocirc;ng sang trọng bằng c&aacute;ch kết hợp vẻ đẹp ngọc ng&agrave; n&agrave;y với v&aacute;y thun v&agrave; xăng đan quai mảnh. Điểm thưởng cho tay cầm tr&ecirc;n c&ugrave;ng được trang tr&iacute;.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div>\r\n<div style=\"color: rgb(37, 37, 37); font-family: Roboto, arial, sans-serif; font-size: 14px; display: inline;\">\r\n<div class=\"gtx-body\" style=\"display: inline; font-size: 18px; margin: 5px auto; padding: 5px 0px;\">&nbsp;</div>\r\n</div>\r\n</div>\r\n', '2022-06-18', 1, 2500000, 'Bùi Đức Thành'),
(8, 'Linear Metallic Accent Shoulder Bag - Olive', 10000000, 'Linear Metallic Accent Shoulder Bag - Olive.jpg', 21, '<p>Th&ecirc;m n&eacute;t thanh lịch cho vẻ ngo&agrave;i cả ng&agrave;y của bạn khi bạn kết hợp ch&uacute;ng với chiếc t&uacute;i đeo vai v&ocirc; c&ugrave;ng xinh xắn của ch&uacute;ng t&ocirc;i c&oacute; m&agrave;u hồng nhạt. Được chế tạo để quay đầu, chiếc t&uacute;i n&agrave;y c&oacute; điểm nhấn bằng kim loại tinh tế v&agrave; kh&oacute;a đ&oacute;ng từ t&iacute;nh để giữ an to&agrave;n cho tất cả c&aacute;c vật dụng của bạn. D&acirc;y đeo c&oacute; thể th&aacute;o rời cho ph&eacute;p bạn rảnh tay bất cứ khi n&agrave;o bạn cảm thấy th&iacute;ch v&agrave; điều chỉnh để t&igrave;m chiều d&agrave;i mang theo l&yacute; tưởng của bạn. Ch&uacute;ng t&ocirc;i rất th&iacute;ch nh&igrave;n thấy bạn tạo kiểu với một chiếc v&aacute;y x&ugrave; v&agrave; đ&ocirc;i xăng đan cao g&oacute;t c&oacute; quai v&agrave;o buổi hẹn ăn trưa tiếp theo của bạn</p>\r\n', '2022-06-18', 1, 4500000, 'Lê Văn Chiến'),
(9, 'Chain Link Turn-Lock Bag - Khaki', 12000, 'Chain Link Turn-Lock Bag - Khaki.jpg', 20, '<p>Thay đổi mọi thứ một ch&uacute;t bằng c&aacute;ch với lấy mảnh kaki tuyệt đẹp n&agrave;y. Ho&agrave;n hảo cho bữa s&aacute;ng muộn hoặc buổi tối đi chơi của c&aacute;c qu&yacute; c&ocirc;, chiếc t&uacute;i đeo vai n&agrave;y đi k&egrave;m với d&acirc;y x&iacute;ch gi&uacute;p n&acirc;ng tầm vẻ quyến rũ của bạn l&ecirc;n một v&agrave;i kh&iacute;a cạnh. Bỏ những vật dụng cần thiết h&agrave;ng ng&agrave;y của bạn v&agrave;o đ&oacute; v&agrave; giữ ch&uacute;ng an to&agrave;n với kh&oacute;a đ&oacute;ng theo kiểu ch&igrave;a kh&oacute;a trao tay. Tr&ocirc;ng mọi thứ đều giống một người mẫu ngoại cỡ khi bạn phối n&oacute; với quần jean cắt thẳng, &aacute;o sơ mi trắng v&agrave; gi&agrave;y bốt đến mắt c&aacute; ch&acirc;n.</p>\r\n', '2022-06-18', 1, 10000, 'Lê Văn Chiến'),
(10, 'Gabine Crossbody Bag - Pink', 2700000, 'Gabine Crossbody Bag - Pink.jpg', 22, '<p>Chiếc t&uacute;i đeo ch&eacute;o tiện dụng n&agrave;y sẽ kết hợp ho&agrave;n hảo với mọi trang phục trong tủ đồ của bạn. Mang đến một ch&uacute;t ngọt ng&agrave;o cho vẻ ngo&agrave;i của bạn với m&agrave;u hồng của n&oacute;, sản phẩm n&agrave;y cũng được trang tr&iacute; bằng một kh&oacute;a kim loại để tăng th&ecirc;m độ b&oacute;ng. Từ b&agrave;n l&agrave;m việc đến bữa tối với phong c&aacute;ch tuyệt đối khi bạn kết hợp chiếc t&uacute;i n&agrave;y với v&aacute;y băng v&agrave; &aacute;o voan. Ho&agrave;n thiện bộ trang phục của bạn bằng c&aacute;ch xỏ v&agrave;o đ&ocirc;i gi&agrave;y cao g&oacute;t.</p>\r\n', '2022-06-18', 1, 2500000, 'Lê Văn Chiến'),
(11, 'Leather _ Lace Bead-Handle Bag - White', 15000, 'Leather _ Lace Bead-Handle Bag - White.jpg', 23, '<p>Được chế t&aacute;c từ chất liệu ren tinh tế v&agrave; lớp ho&agrave;n thiện bằng da b&ecirc; tự nhi&ecirc;n, chiếc t&uacute;i c&oacute; tay cầm đ&iacute;nh hạt của ch&uacute;ng t&ocirc;i mang đến sự kết hợp ho&agrave;n hảo giữa n&eacute;t sang trọng hiện đại v&agrave; n&eacute;t thanh lịch mềm mại. Được tạo điểm nhấn bởi tay cầm tr&ecirc;n c&oacute; đ&iacute;nh hạt bắt mắt v&agrave; h&igrave;nh d&aacute;ng c&oacute; cấu tr&uacute;c, chiếc số tuyệt đẹp n&agrave;y sẽ l&agrave; người bạn đồng h&agrave;nh ho&agrave;n hảo cho những buổi chụp h&igrave;nh trước đ&aacute;m cưới v&agrave; sự kiện đ&aacute;m cưới tiếp theo của bạn. M&agrave;u trắng vượt thời gian đảm bảo rằng t&aacute;c phẩm n&agrave;y sẽ trường tồn với thời gian. Sử dụng c&aacute;c dịch vụ nhiều d&acirc;y đeo để tạo n&ecirc;n vẻ ngo&agrave;i ho&agrave;n hảo cho đ&aacute;m cưới.</p>\r\n', '2022-06-18', 1, 13000, 'Lê Văn Chiến'),
(12, 'Leather _ Lace Ruched Top Handle Bag - White', 24000, 'Leather _ Lace Ruched Top Handle Bag - White.jpg', 23, '<p>Kh&ocirc;ng c&oacute; bất kỳ sự t&ocirc; điểm n&agrave;o, m&oacute;n đồ sang trọng n&agrave;y mang lại tất cả thời trang m&agrave; kh&ocirc;ng g&acirc;y ồn &agrave;o. Bạn sẽ th&iacute;ch tay cầm tr&ecirc;n c&ugrave;ng c&oacute; nếp gấp, được thiết kế để tạo ra một tuy&ecirc;n bố đ&aacute;ng kinh ngạc trong khi tăng th&ecirc;m n&eacute;t tinh tế l&atilde;ng mạn v&agrave; sự th&uacute; vị về thị gi&aacute;c cho sản phẩm to&agrave;n m&agrave;u trắng n&agrave;y. Cung cấp kh&ocirc;ng chỉ một m&agrave; hai d&acirc;y đai c&oacute; thể th&aacute;o rời, h&atilde;y tận dụng t&iacute;nh linh hoạt của t&uacute;i để tạo n&ecirc;n một bộ quần &aacute;o cưới ho&agrave;n hảo trong ng&agrave;y trọng đại của bạn.</p>\r\n', '2022-06-18', 0, 0, 'BĐT');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  ADD PRIMARY KEY (`id_chi_tiet_hoadon`),
  ADD KEY `chitiethoadon` (`sodh`);

--
-- Chỉ mục cho bảng `dichvu`
--
ALTER TABLE `dichvu`
  ADD PRIMARY KEY (`madv`);

--
-- Chỉ mục cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  ADD PRIMARY KEY (`sodh`);

--
-- Chỉ mục cho bảng `loginadmin`
--
ALTER TABLE `loginadmin`
  ADD PRIMARY KEY (`tendangnhap`);

--
-- Chỉ mục cho bảng `loginuser`
--
ALTER TABLE `loginuser`
  ADD PRIMARY KEY (`email`);

--
-- Chỉ mục cho bảng `nhaxuatban`
--
ALTER TABLE `nhaxuatban`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `Ten` (`Ten`),
  ADD KEY `sanpham` (`Manhasx`),
  ADD KEY `giakhuyenmai` (`giakhuyenmai`),
  ADD KEY `giakhuyenmai_2` (`giakhuyenmai`),
  ADD KEY `giakhuyenmai_3` (`giakhuyenmai`),
  ADD KEY `giakhuyenmai_4` (`giakhuyenmai`),
  ADD KEY `giakhuyenmai_5` (`giakhuyenmai`);
ALTER TABLE `sanpham` ADD FULLTEXT KEY `Ten_2` (`Ten`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  MODIFY `id_chi_tiet_hoadon` bigint(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=152;

--
-- AUTO_INCREMENT cho bảng `dichvu`
--
ALTER TABLE `dichvu`
  MODIFY `madv` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  MODIFY `sodh` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `nhaxuatban`
--
ALTER TABLE `nhaxuatban`
  MODIFY `ID` bigint(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `ID` bigint(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  ADD CONSTRAINT `chitiethoadon` FOREIGN KEY (`sodh`) REFERENCES `hoadon` (`sodh`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `sanpham` FOREIGN KEY (`Manhasx`) REFERENCES `nhaxuatban` (`ID`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
