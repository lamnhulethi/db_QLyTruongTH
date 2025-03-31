INSERT INTO GIAOVIEN (MaGV, HotenGV) VALUES
('GV001', 'Nguyen Thi Be'),
('GV002', 'Tran Van An'),
('GV003', 'Le Thi Cam'),
('GV004', 'Pham Duc Duy'),
('GV005', 'Hoang Minh Ngoc'),
('GV006', 'Vu Thi Phuong'),
('GV007', 'Do Thanh Hai'),
('GV008', 'Bui Thu Huong'),
('GV009', 'Dang Xuan Kien'),
('GV010', 'Truong Thi Lan'),
('GV011', 'Cao Viet Manh'),
('GV012', 'Dinh Thi Nga'),
('GV013', 'Phan Quang Oanh'),
('GV014', 'Mai Thi Phu'),
('GV015', 'Quach Tuan Quynh'),
('GV016', 'Ha Thi Ro'),
('GV017', 'Sam Van Son'),
('GV018', 'Ta Thi Toan'),
('GV019', 'Uong Van Uyen'),
('GV020', 'Vang Thi Van'),
('GV021', 'Xuan Thi Xuyen'),
('GV022', 'Yen Thi Yen'),
('GV023', 'Le Anh Dung'),
('GV024', 'Nguyen Hoang Nam'),
('GV025', 'Tran Thi Thuy'),
('GV026', 'Pham Van Hung'),
('GV027', 'Ho Thi Mai'),
('GV028', 'Vu Duc Long'),
('GV029', 'Do Thi Kim'),
('GV030', 'Bui Xuan Truong');

INSERT INTO LOP (MaLop, TenLop, MaGVCN, NamHoc) VALUES
('L01', 'Lớp 1A', 'GV001', '2023-2024'),
('L02', 'Lớp 1B', 'GV002', '2023-2024'),
('L03', 'Lớp 2A', 'GV003', '2023-2024'),
('L04', 'Lớp 2B', 'GV004', '2023-2024'),
('L05', 'Lớp 3A', 'GV005', '2023-2024'),
('L06', 'Lớp 3B', 'GV006', '2023-2024'),
('L07', 'Lớp 4A', 'GV007', '2023-2024'),
('L08', 'Lớp 4B', 'GV008', '2023-2024'),
('L09', 'Lớp 5A', 'GV009', '2023-2024'),
('L10', 'Lớp 5B', 'GV010', '2023-2024');

UPDATE LOP
SET TenLop = 
    CASE
        WHEN TenLop = 'Lớp 1A' THEN 'Lop 1A'
        WHEN TenLop = 'Lớp 1B' THEN 'Lop 1B'
        WHEN TenLop = 'Lớp 2A' THEN 'Lop 2A'
        WHEN TenLop = 'Lớp 2B' THEN 'Lop 2B'
        WHEN TenLop = 'Lớp 3A' THEN 'Lop 3A'
        WHEN TenLop = 'Lớp 3B' THEN 'Lop 3B'
        WHEN TenLop = 'Lớp 4A' THEN 'Lop 4A'
        WHEN TenLop = 'Lớp 4B' THEN 'Lop 4B'
        WHEN TenLop = 'Lớp 5A' THEN 'Lop 5A'
        WHEN TenLop = 'Lớp 5B' THEN 'Lop 5B'
        ELSE TenLop -- Giữ nguyên nếu không khớp
    END;

INSERT INTO HOCSINH (MaHS, HoTenHS, HoTenPH, GioiTinh, DiaChi, MaLop) VALUES
('HS0001', 'Nguyen Van A', 'Nguyen Thi B', 'Nam', '123 Đường A', 'L01'),
('HS0002', 'Tran Thi D', 'Tran Van E', 'Nu', '456 Đường X', 'L02'),
('HS0003', 'Le Van F', 'Le Thi G', 'Nam', '789 Đường M', 'L03'),
('HS0004', 'Pham Thi H', 'Pham Van I', 'Nu', '101 Đường P', 'L04'),
('HS0005', 'Ho Van K', 'Ho Thi L', 'Nam', '112 Đường S', 'L05'),
('HS0006', 'Vu Thi M', 'Vu Van N', 'Nu', '131 Đường V', 'L06'),
('HS0007', 'Do Van O', 'Do Thi P', 'Nam', '141 Đường Y', 'L07'),
('HS0008', 'Bui Thi Q', 'Bui Van R', 'Nu', '151 Đường B', 'L08'),
('HS0009', 'Dang Van S', 'Dang Thi T', 'Nam', '161 Đường E', 'L09'),
('HS0010', 'Truong Thi U', 'Truong Van V', 'Nu', '171 Đường H', 'L10'),
('HS0011', 'Cao Van W', 'Cao Thi X', 'Nam', '181 Đường L', 'L01'),
('HS0012', 'Dinh Thi Y', 'Dinh Van Z', 'Nu', '191 Đường O', 'L02'),
('HS0013', 'Phan Van AA', 'Phan Thi BB', 'Nam', '201 Đường R', 'L03'),
('HS0014', 'Mai Thi CC', 'Mai Van DD', 'Nu', '211 Đường U', 'L04'),
('HS0015', 'Quach Van EE', 'Quach Thi FF', 'Nam', '221 Đường X', 'L05'),
('HS0016', 'Ha Thi GG', 'Ha Van HH', 'Nu', '231 Đường A', 'L06'),
('HS0017', 'Sam Van II', 'Sam Thi KK', 'Nam', '241 Đường D', 'L07'),
('HS0018', 'Ta Thi LL', 'Ta Van MM', 'Nu', '251 Đường G', 'L08'),
('HS0019', 'Uong Van NN', 'Uong Thi OO', 'Nam', '261 Đường J', 'L09'),
('HS0020', 'Vang Thi PP', 'Vang Van QQ', 'Nu', '271 Đường M', 'L10'),
-- Tiếp tục thêm dữ liệu cho học sinh từ HS0021 đến HS0100, phân bổ đều vào các lớp L01 - L10
('HS0021', 'Xuan Van RR', 'Xuan Thi SS', 'Nam', '281 Đường N', 'L01'),
('HS0022', 'Yen Thi TT', 'Yen Van UU', 'Nu', '291 Đường O', 'L02'),
('HS0023', 'Le Van VV', 'Le Thi WW', 'Nam', '301 Đường P', 'L03'),
('HS0024', 'Nguyen Thi XX', 'Nguyen Van YY', 'Nu', '311 Đường Q', 'L04'),
('HS0025', 'Tran Van ZZ', 'Tran Thi AAA', 'Nam', '321 Đường R', 'L05'),
('HS0026', 'Pham Thi BBB', 'Pham Van CCC', 'Nu', '331 Đường S', 'L06'),
('HS0027', 'Ho Van DDD', 'Ho Thi EEE', 'Nam', '341 Đường T', 'L07'),
('HS0028', 'Vu Thi FFF', 'Vu Van GGG', 'Nu', '351 Đường U', 'L08'),
('HS0029', 'Do Van HHH', 'Do Thi III', 'Nam', '361 Đường V', 'L09'),
('HS0030', 'Bui Thi JJJ', 'Bui Van KKK', 'Nu', '371 Đường W', 'L10');

INSERT INTO HOCSINH (MaHS, HoTenHS, HoTenPH, GioiTinh, DiaChi, MaLop) VALUES
('HS0031', 'Nguyen Van LLL', 'Nguyen Thi MMM', 'Nam', '381 Đường X', 'L01'),
('HS0032', 'Tran Thi NNN', 'Tran Van OOO', 'Nu', '391 Đường Y', 'L02'),
('HS0033', 'Le Van PPP', 'Le Thi QQQ', 'Nam', '401 Đường Z', 'L03'),
('HS0034', 'Pham Thi RRR', 'Pham Van SSS', 'Nu', '411 Đường A', 'L04'),
('HS0035', 'Ho Van TTT', 'Ho Thi UUU', 'Nam', '421 Đường B', 'L05'),
('HS0036', 'Vu Thi VVV', 'Vu Van WWW', 'Nu', '431 Đường C', 'L06'),
('HS0037', 'Do Van XXX', 'Do Thi YYY', 'Nam', '441 Đường D', 'L07'),
('HS0038', 'Bui Thi ZZZ', 'Bui Van AAAA', 'Nu', '451 Đường E', 'L08'),
('HS0039', 'Dang Van BBBB', 'Dang Thi CCCC', 'Nam', '461 Đường F', 'L09'),
('HS0040', 'Truong Thi DDDD', 'Truong Van EEEE', 'Nu', '471 Đường G', 'L10'),
('HS0041', 'Cao Van FFFF', 'Cao Thi GGGG', 'Nam', '481 Đường H', 'L01'),
('HS0042', 'Dinh Thi HHHH', 'Dinh Van IIII', 'Nu', '491 Đường I', 'L02'),
('HS0043', 'Phan Van JJJJ', 'Phan Thi KKKK', 'Nam', '501 Đường J', 'L03'),
('HS0044', 'Mai Thi LLLL', 'Mai Van MMMM', 'Nu', '511 Đường K', 'L04'),
('HS0045', 'Quach Van NNNN', 'Quach Thi OOOO', 'Nam', '521 Đường L', 'L05'),
('HS0046', 'Ha Thi PPPP', 'Ha Van QQQQ', 'Nu', '531 Đường M', 'L06'),
('HS0047', 'Sam Van RRRR', 'Sam Thi SSSS', 'Nam', '541 Đường N', 'L07'),
('HS0048', 'Ta Thi TTTT', 'Ta Van UUUU', 'Nu', '551 Đường O', 'L08'),
('HS0049', 'Uong Van VVVV', 'Uong Thi WWWW', 'Nam', '561 Đường P', 'L09'),
('HS0050', 'Vang Thi XXXX', 'Vang Van YYYY', 'Nu', '571 Đường Q', 'L10'),
('HS0051', 'Xuan Van ZZZZ', 'Xuan Thi AAAAA', 'Nam', '581 Đường R', 'L01'),
('HS0052', 'Yen Thi BBBBB', 'Yen Van CCCCC', 'Nu', '591 Đường S', 'L02'),
('HS0053', 'Le Van DDDDD', 'Le Thi EEEEE', 'Nam', '601 Đường T', 'L03'),
('HS0054', 'Nguyen Thi FFFFF', 'Nguyen Van GGGGG', 'Nu', '611 Đường U', 'L04'),
('HS0055', 'Tran Van HHHHH', 'Tran Thi IIIII', 'Nam', '621 Đường V', 'L05'),
('HS0056', 'Pham Thi JJJJJ', 'Pham Van KKKKK', 'Nu', '631 Đường W', 'L06'),
('HS0057', 'Ho Van LLLLL', 'Ho Thi MMMMM', 'Nam', '641 Đường X', 'L07'),
('HS0058', 'Vu Thi NNNNN', 'Vu Van OOOOO', 'Nu', '651 Đường Y', 'L08'),
('HS0059', 'Do Van PPPPP', 'Do Thi QQQQQ', 'Nam', '661 Đường Z', 'L09'),
('HS0060', 'Bui Thi RRRRR', 'Bui Van SSSSS', 'Nu', '671 Đường A', 'L10');

INSERT INTO HOCSINH (MaHS, HoTenHS, HoTenPH, GioiTinh, DiaChi, MaLop) VALUES
('HS0061', 'Nguyen Van TTTTT', 'Nguyen Thi UUUUU', 'Nam', '681 Đường B', 'L01'),
('HS0062', 'Tran Thi VVVVV', 'Tran Van WWWWW', 'Nu', '691 Đường C', 'L02'),
('HS0063', 'Le Van XXXXX', 'Le Thi YYYYY', 'Nam', '701 Đường D', 'L03'),
('HS0064', 'Pham Thi ZZZZZ', 'Pham Van AAAAAA', 'Nu', '711 Đường E', 'L04'),
('HS0065', 'Ho Van BBBBBB', 'Ho Thi CCCCC', 'Nam', '721 Đường F', 'L05'),
('HS0066', 'Vu Thi DDDDDD', 'Vu Van EEEEEE', 'Nu', '731 Đường G', 'L06'),
('HS0067', 'Do Van FFFFFF', 'Do Thi GGGGGG', 'Nam', '741 Đường H', 'L07'),
('HS0068', 'Bui Thi HHHHHH', 'Bui Van IIIIII', 'Nu', '751 Đường I', 'L08'),
('HS0069', 'Dang Van JJJJJJ', 'Dang Thi KKKKKK', 'Nam', '761 Đường J', 'L09'),
('HS0070', 'Truong Thi LLLLLL', 'Truong Van MMMMMM', 'Nu', '771 Đường K', 'L10'),
('HS0071', 'Cao Van NNNNNN', 'Cao Thi OOOOOO', 'Nam', '781 Đường L', 'L01'),
('HS0072', 'Dinh Thi PPPPPP', 'Dinh Van QQQQQQ', 'Nu', '791 Đường M', 'L02'),
('HS0073', 'Phan Van RRRRRR', 'Phan Thi SSSSSS', 'Nam', '801 Đường N', 'L03'),
('HS0074', 'Mai Thi TTTTTT', 'Mai Van UUUUUU', 'Nu', '811 Đường O', 'L04'),
('HS0075', 'Quach Van VVVVVV', 'Quach Thi WWWWWW', 'Nam', '821 Đường P', 'L05'),
('HS0076', 'Ha Thi XXXXXX', 'Ha Van YYYYYY', 'Nu', '831 Đường Q', 'L06'),
('HS0077', 'Sam Van ZZZZZZ', 'Sam Thi AAAAAAA', 'Nam', '841 Đường R', 'L07'),
('HS0078', 'Ta Thi BBBBBB', 'Ta Van CCCCCCC', 'Nu', '851 Đường S', 'L08'),
('HS0079', 'Uong Van DDDDDD', 'Uong Thi EEEEEE', 'Nam', '861 Đường T', 'L09'),
('HS0080', 'Vang Thi FFFFFF', 'Vang Van GGGGGG', 'Nu', '871 Đường U', 'L10'),
('HS0081', 'Xuan Van HHHHHH', 'Xuan Thi IIIIII', 'Nam', '881 Đường V', 'L01'),
('HS0082', 'Yen Thi JJJJJJ', 'Yen Van KKKKKK', 'Nu', '891 Đường W', 'L02'),
('HS0083', 'Le Van LLLLLL', 'Le Thi MMMMMM', 'Nam', '901 Đường X', 'L03'),
('HS0084', 'Nguyen Thi NNNNNN', 'Nguyen Van OOOOOO', 'Nu', '911 Đường Y', 'L04'),
('HS0085', 'Tran Van PPPPPP', 'Tran Thi QQQQQQ', 'Nam', '921 Đường Z', 'L05'),
('HS0086', 'Pham Thi RRRRRR', 'Pham Van SSSSSS', 'Nu', '931 Đường A', 'L06'),
('HS0087', 'Ho Van TTTTTT', 'Ho Thi UUUUUU', 'Nam', '941 Đường B', 'L07'),
('HS0088', 'Vu Thi VVVVVV', 'Vu Van WWWWWW', 'Nu', '951 Đường C', 'L08'),
('HS0089', 'Do Van XXXXXX', 'Do Thi YYYYYY', 'Nam', '961 Đường D', 'L09'),
('HS0090', 'Bui Thi ZZZZZZ', 'Bui Van AAAAAAA', 'Nu', '971 Đường E', 'L10'),
('HS0091', 'Dang Van BBBBBB', 'Dang Thi CCCCCCC', 'Nam', '981 Đường F', 'L01'),
('HS0092', 'Truong Thi DDDDDD', 'Truong Van EEEEEE', 'Nu', '991 Đường G', 'L02'),
('HS0093', 'Cao Van FFFFFF', 'Cao Thi GGGGGG', 'Nam', '1001 Đường H', 'L03'),
('HS0094', 'Dinh Thi HHHHHH', 'Dinh Van IIIIII', 'Nu', '1011 Đường I', 'L04'),
('HS0095', 'Phan Van JJJJJJ', 'Phan Thi KKKKKK', 'Nam', '1021 Đường J', 'L05'),
('HS0096', 'Mai Thi LLLLLL', 'Mai Van MMMMMM', 'Nu', '1031 Đường K', 'L06'),
('HS0097', 'Quach Van NNNNNN', 'Quach Thi OOOOOO', 'Nam', '1041 Đường L', 'L07'),
('HS0098', 'Ha Thi PPPPPP', 'Ha Van QQQQQQ', 'Nu', '1051 Đường M', 'L08'),
('HS0099', 'Sam Van RRRRRR', 'Sam Thi SSSSSS', 'Nam', '1061 Đường N', 'L09'),
('HS0100', 'Ta Thi TTTTTT', 'Ta Van UUUUUU', 'Nu', '1071 Đường O', 'L10');

INSERT INTO MONHOC (MaMH, TenMH) VALUES
('TV', 'Tiếng Việt'),
('TOAN', 'Toán'),
('TNXH', 'Tự nhiên và Xã hội'),
('DD', 'Đạo đức'),
('MT', 'Mỹ thuật'),
('AN', 'Âm nhạc'),
('TD', 'Thể dục'),
('CN', 'Công nghệ'),
('TA', 'Tiếng Anh'),
('TH', 'Tin học'),
('LS', 'Lịch sử và Địa lý'),
('HDTN', 'Hoạt động trải nghiệm');

INSERT INTO KETQUAHOCTAP (MaHS, HocKy, MaMH, DiemThiGiuaky, DiemThiCuoiky, NgayGioThiCuoiky) VALUES
('HS0001', 1, 'TV', 8.5, 9.0, '2023-12-20 08:00:00'),
('HS0001', 1, 'TOAN', 7.0, 8.0, '2023-12-21 10:00:00'),
('HS0002', 1, 'TV', 9.0, 9.5, '2023-12-20 08:00:00'),
('HS0002', 1, 'TOAN', 8.0, 8.5, '2023-12-21 10:00:00'),
('HS0003', 1, 'TV', 7.5, 8.0, '2023-12-20 08:00:00'),
('HS0003', 1, 'TOAN', 6.5, 7.5, '2023-12-21 10:00:00'),
('HS0004', 1, 'TV', 8.0, 8.5, '2023-12-20 08:00:00'),
('HS0004', 1, 'TOAN', 7.5, 8.0, '2023-12-21 10:00:00'),
('HS0005', 1, 'TV', 9.5, 10.0, '2023-12-20 08:00:00'),
('HS0005', 1, 'TOAN', 9.0, 9.5, '2023-12-21 10:00:00'),
-- Thêm dữ liệu cho các học sinh khác và các môn học khác
('HS0006', 1, 'TV', 7.0, 7.5, '2023-12-20 08:00:00'),
('HS0006', 1, 'TOAN', 6.0, 7.0, '2023-12-21 10:00:00'),
('HS0007', 1, 'TV', 8.5, 9.0, '2023-12-20 08:00:00'),
('HS0007', 1, 'TOAN', 8.0, 8.5, '2023-12-21 10:00:00'),
('HS0008', 1, 'TV', 9.0, 9.5, '2023-12-20 08:00:00'),
('HS0008', 1, 'TOAN', 8.5, 9.0, '2023-12-21 10:00:00'),
('HS0009', 1, 'TV', 7.5, 8.0, '2023-12-20 08:00:00'),
('HS0009', 1, 'TOAN', 7.0, 7.5, '2023-12-21 10:00:00'),
('HS0010', 1, 'TV', 8.0, 8.5, '2023-12-20 08:00:00'),
('HS0010', 1, 'TOAN', 7.5, 8.0, '2023-12-21 10:00:00');

INSERT INTO KETQUAHOCTAP (MaHS, HocKy, MaMH, DiemThiGiuaky, DiemThiCuoiky, NgayGioThiCuoiky) VALUES
('HS0001', 1, 'TNXH', 8.0, 8.5, '2023-12-22 09:00:00'),
('HS0001', 1, 'DD', 9.0, 9.5, '2023-12-22 11:00:00'),
('HS0002', 1, 'TNXH', 7.5, 8.0, '2023-12-22 09:00:00'),
('HS0002', 1, 'DD', 8.5, 9.0, '2023-12-22 11:00:00'),
('HS0003', 1, 'MT', 9.0, 9.5, '2023-12-23 14:00:00'),
('HS0003', 1, 'AN', 8.0, 8.5, '2023-12-23 16:00:00'),
('HS0004', 1, 'MT', 8.5, 9.0, '2023-12-23 14:00:00'),
('HS0004', 1, 'AN', 9.0, 9.5, '2023-12-23 16:00:00'),
('HS0005', 1, 'TD', 9.5, 10.0, '2023-12-24 07:30:00'),
('HS0005', 1, 'CN', 8.0, 8.5, '2023-12-24 10:00:00'),
('HS0006', 1, 'TD', 9.0, 9.5, '2023-12-24 07:30:00'),
('HS0006', 1, 'CN', 8.5, 9.0, '2023-12-24 10:00:00'),
('HS0007', 1, 'TNXH', 8.5, 9.0, '2023-12-22 09:00:00'),
('HS0007', 1, 'DD', 9.5, 10.0, '2023-12-22 11:00:00'),
('HS0008', 1, 'TNXH', 8.0, 8.5, '2023-12-22 09:00:00'),
('HS0008', 1, 'DD', 9.0, 9.5, '2023-12-22 11:00:00'),
('HS0009', 1, 'MT', 7.5, 8.0, '2023-12-23 14:00:00'),
('HS0009', 1, 'AN', 8.5, 9.0, '2023-12-23 16:00:00'),
('HS0010', 1, 'MT', 8.0, 8.5, '2023-12-23 14:00:00'),
('HS0010', 1, 'AN', 9.5, 10.0, '2023-12-23 16:00:00');

--Tao KQHT ngau nhien cho 100 HS
DECLARE @MaHS VARCHAR(6);
DECLARE @HocKy INT = 1;
DECLARE @MaMH VARCHAR(10);
DECLARE @DiemThiGiuaky FLOAT;
DECLARE @DiemThiCuoiky FLOAT;
DECLARE @NgayGioThiCuoiky DATETIME;

DECLARE hs_cursor CURSOR FOR
SELECT MaHS FROM HOCSINH;

OPEN hs_cursor;

FETCH NEXT FROM hs_cursor INTO @MaHS;

WHILE @@FETCH_STATUS = 0
BEGIN
    -- Tạo dữ liệu cho các môn học của học sinh hiện tại
    DECLARE mh_cursor CURSOR FOR
    SELECT MaMH FROM MONHOC;

    OPEN mh_cursor;

    FETCH NEXT FROM mh_cursor INTO @MaMH;

    WHILE @@FETCH_STATUS = 0
    BEGIN
        -- Tạo dữ liệu ngẫu nhiên cho điểm và ngày giờ thi
        SET @DiemThiGiuaky = ROUND(RAND() * 10, 1);
        SET @DiemThiCuoiky = ROUND(RAND() * 10, 1);
        SET @NgayGioThiCuoiky = DATEADD(day, ABS(CHECKSUM(NEWID())) % 30, '2023-12-01');

        -- Chèn dữ liệu vào bảng KETQUAHOCTAP
        INSERT INTO KETQUAHOCTAP (MaHS, HocKy, MaMH, DiemThiGiuaky, DiemThiCuoiky, NgayGioThiCuoiky)
        VALUES (@MaHS, @HocKy, @MaMH, @DiemThiGiuaky, @DiemThiCuoiky, @NgayGioThiCuoiky);

        FETCH NEXT FROM mh_cursor INTO @MaMH;
    END

    CLOSE mh_cursor;
    DEALLOCATE mh_cursor;

    FETCH NEXT FROM hs_cursor INTO @MaHS;
END

CLOSE hs_cursor;
DEALLOCATE hs_cursor;

INSERT INTO PHUTRACHBOMON (MaGVPT, MaLop, MaMH, HocKy) VALUES
-- 10 giáo viên phụ trách 10 lớp dạy Toán và Tiếng Việt
('GV001', 'L01', 'TV', 1),
('GV001', 'L01', 'TOAN', 1),
('GV002', 'L02', 'TV', 1),
('GV002', 'L02', 'TOAN', 1),
('GV003', 'L03', 'TV', 1),
('GV003', 'L03', 'TOAN', 1),
('GV004', 'L04', 'TV', 1),
('GV004', 'L04', 'TOAN', 1),
('GV005', 'L05', 'TV', 1),
('GV005', 'L05', 'TOAN', 1),
('GV006', 'L06', 'TV', 1),
('GV006', 'L06', 'TOAN', 1),
('GV007', 'L07', 'TV', 1),
('GV007', 'L07', 'TOAN', 1),
('GV008', 'L08', 'TV', 1),
('GV008', 'L08', 'TOAN', 1),
('GV009', 'L09', 'TV', 1),
('GV009', 'L09', 'TOAN', 1),
('GV010', 'L10', 'TV', 1),
('GV010', 'L10', 'TOAN', 1),
-- 20 giáo viên còn lại dạy các môn khác
('GV011', 'L01', 'TNXH', 1),
('GV012', 'L02', 'TNXH', 1),
('GV013', 'L03', 'MT', 1),
('GV014', 'L04', 'MT', 1),
('GV015', 'L05', 'TD', 1),
('GV016', 'L06', 'TD', 1),
('GV017', 'L07', 'TNXH', 1),
('GV018', 'L08', 'TNXH', 1),
('GV019', 'L09', 'MT', 1),
('GV020', 'L10', 'MT', 1),
('GV021', 'L01', 'AN', 1),
('GV022', 'L02', 'AN', 1),
('GV023', 'L03', 'DD', 1),
('GV024', 'L04', 'DD', 1),
('GV025', 'L05', 'CN', 1),
('GV026', 'L06', 'CN', 1),
('GV027', 'L07', 'AN', 1),
('GV028', 'L08', 'AN', 1),
('GV029', 'L09', 'DD', 1),
('GV030', 'L10', 'DD', 1);