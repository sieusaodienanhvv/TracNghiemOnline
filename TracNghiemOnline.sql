USE [TracNghiemOnline]
GO
/****** Object:  User [PHAMTRONGTRUONG]    Script Date: 20/12/02 10:00:41 PM ******/
CREATE USER [PHAMTRONGTRUONG] FOR LOGIN [WWW] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[BaiThi_SV]    Script Date: 20/12/02 10:00:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BaiThi_SV](
	[Ma_SV] [bigint] NOT NULL,
	[Ma_De] [bigint] NOT NULL,
	[TrangThai] [bit] NULL,
 CONSTRAINT [PK_BaiThi_SV] PRIMARY KEY CLUSTERED 
(
	[Ma_SV] ASC,
	[Ma_De] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Bo_Cau_hoi]    Script Date: 20/12/02 10:00:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bo_Cau_hoi](
	[MaCauHoi] [bigint] IDENTITY(1,1) NOT NULL,
	[Ma_BoDe] [bigint] NULL,
	[Noi_Dung] [nvarchar](max) NULL,
	[HinhAnh] [nvarchar](50) NULL,
 CONSTRAINT [PK_Bo_Cau_hoi] PRIMARY KEY CLUSTERED 
(
	[MaCauHoi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Bo_Dap_An]    Script Date: 20/12/02 10:00:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bo_Dap_An](
	[Ma_DA] [bigint] IDENTITY(1,1) NOT NULL,
	[MaCauHoi] [bigint] NULL,
	[NoiDung] [nvarchar](max) NULL,
	[HinhAnh] [nchar](50) NULL,
	[TrangThai] [bit] NULL,
 CONSTRAINT [PK_Bo_Dap_An] PRIMARY KEY CLUSTERED 
(
	[Ma_DA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CauHoi]    Script Date: 20/12/02 10:00:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CauHoi](
	[Ma_CauHoi] [bigint] NOT NULL,
	[Ma_De] [bigint] NOT NULL,
 CONSTRAINT [PK_CauHoi] PRIMARY KEY CLUSTERED 
(
	[Ma_CauHoi] ASC,
	[Ma_De] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DA_SVLUACHON]    Script Date: 20/12/02 10:00:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DA_SVLUACHON](
	[Ma_SV] [bigint] NULL,
	[Ma_De] [bigint] NULL,
	[Ma_Da] [bigint] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Danh_Sach_Mon_Day]    Script Date: 20/12/02 10:00:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Danh_Sach_Mon_Day](
	[Ma_Mon] [bigint] NULL,
	[Ma_GV] [bigint] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Danh_Sach_Mon_hoc]    Script Date: 20/12/02 10:00:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Danh_Sach_Mon_hoc](
	[MaSV] [bigint] NULL,
	[Ma_Mon] [bigint] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Danh_Sach_SV]    Script Date: 20/12/02 10:00:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Danh_Sach_SV](
	[MaSV] [bigint] NULL,
	[MaPhong] [bigint] NULL,
	[TrangThai] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DeThi]    Script Date: 20/12/02 10:00:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DeThi](
	[Ma_De] [bigint] NOT NULL,
	[Ma_BoDe] [bigint] NULL,
 CONSTRAINT [PK_DeThi] PRIMARY KEY CLUSTERED 
(
	[Ma_De] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GiaoVien]    Script Date: 20/12/02 10:00:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GiaoVien](
	[MaGV] [bigint] NOT NULL,
	[TenGV] [nvarchar](50) NULL,
	[Ma_Nganh] [bigint] NULL,
 CONSTRAINT [PK_GiaoVien] PRIMARY KEY CLUSTERED 
(
	[MaGV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KetQua]    Script Date: 20/12/02 10:00:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KetQua](
	[Ma_SV] [bigint] NULL,
	[MA_De] [bigint] NULL,
	[Diem] [float] NULL,
	[SoCauDung] [int] NULL,
	[SoCauSai] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kho_De]    Script Date: 20/12/02 10:00:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kho_De](
	[Ma_BoDe] [bigint] IDENTITY(1,1) NOT NULL,
	[TenBoDe] [nvarchar](50) NULL,
	[Ma_Mon] [bigint] NULL,
	[MaGV] [bigint] NULL,
	[TrangThai] [bit] NULL,
	[NgayTao] [datetime] NULL,
 CONSTRAINT [PK_Kho_De] PRIMARY KEY CLUSTERED 
(
	[Ma_BoDe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Lop_Hoc]    Script Date: 20/12/02 10:00:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lop_Hoc](
	[Ma_Lop] [bigint] IDENTITY(1,1) NOT NULL,
	[TenLop] [nvarchar](50) NULL,
 CONSTRAINT [PK_Lop_Hoc] PRIMARY KEY CLUSTERED 
(
	[Ma_Lop] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Mon_Hoc]    Script Date: 20/12/02 10:00:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mon_Hoc](
	[Ma_Mon] [bigint] IDENTITY(1,1) NOT NULL,
	[Ten_Mon] [nvarchar](50) NULL,
	[MaNganh] [bigint] NULL,
 CONSTRAINT [PK_Mon_Hoc] PRIMARY KEY CLUSTERED 
(
	[Ma_Mon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Nganh]    Script Date: 20/12/02 10:00:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nganh](
	[MaNganh] [bigint] IDENTITY(1,1) NOT NULL,
	[Ten_Nganh] [nvarchar](50) NULL,
 CONSTRAINT [PK_Nganh] PRIMARY KEY CLUSTERED 
(
	[MaNganh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhongThi]    Script Date: 20/12/02 10:00:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhongThi](
	[MaPhong] [bigint] NOT NULL,
	[MaKhau] [bigint] NULL,
	[ThoiGianBatDau] [datetime] NULL,
	[ThoiGianKetThuc] [datetime] NULL,
	[TrangThai] [bigint] NULL,
	[MaGV] [bigint] NULL,
	[MaBoDe] [bigint] NULL,
 CONSTRAINT [PK_PhongThi] PRIMARY KEY CLUSTERED 
(
	[MaPhong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sinh_Vien]    Script Date: 20/12/02 10:00:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sinh_Vien](
	[MaSV] [bigint] NOT NULL,
	[Ten] [nvarchar](50) NULL,
	[MaLop] [bigint] IDENTITY(1,1) NOT NULL,
	[Khoa] [nchar](20) NULL,
	[MaNganh] [bigint] NULL,
 CONSTRAINT [PK_Sinh_Vien] PRIMARY KEY CLUSTERED 
(
	[MaSV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 20/12/02 10:00:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiKhoan](
	[TenDangNhap] [bigint] NOT NULL,
	[MatKhau] [nchar](10) NOT NULL,
	[ChucVu] [nvarchar](10) NULL,
 CONSTRAINT [PK_TaiKhoan] PRIMARY KEY CLUSTERED 
(
	[TenDangNhap] ASC,
	[MatKhau] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[BaiThi_SV]  WITH CHECK ADD  CONSTRAINT [FK_BaiThi_SV_DeThi] FOREIGN KEY([Ma_De])
REFERENCES [dbo].[DeThi] ([Ma_De])
GO
ALTER TABLE [dbo].[BaiThi_SV] CHECK CONSTRAINT [FK_BaiThi_SV_DeThi]
GO
ALTER TABLE [dbo].[BaiThi_SV]  WITH CHECK ADD  CONSTRAINT [FK_BaiThi_SV_Sinh_Vien] FOREIGN KEY([Ma_SV])
REFERENCES [dbo].[Sinh_Vien] ([MaSV])
GO
ALTER TABLE [dbo].[BaiThi_SV] CHECK CONSTRAINT [FK_BaiThi_SV_Sinh_Vien]
GO
ALTER TABLE [dbo].[Bo_Dap_An]  WITH CHECK ADD  CONSTRAINT [FK_Bo_Dap_An_Bo_Cau_hoi] FOREIGN KEY([MaCauHoi])
REFERENCES [dbo].[Bo_Cau_hoi] ([MaCauHoi])
GO
ALTER TABLE [dbo].[Bo_Dap_An] CHECK CONSTRAINT [FK_Bo_Dap_An_Bo_Cau_hoi]
GO
ALTER TABLE [dbo].[Bo_Dap_An]  WITH CHECK ADD  CONSTRAINT [FK_Bo_Dap_An_Bo_Cau_hoi1] FOREIGN KEY([MaCauHoi])
REFERENCES [dbo].[Bo_Cau_hoi] ([MaCauHoi])
GO
ALTER TABLE [dbo].[Bo_Dap_An] CHECK CONSTRAINT [FK_Bo_Dap_An_Bo_Cau_hoi1]
GO
ALTER TABLE [dbo].[CauHoi]  WITH CHECK ADD  CONSTRAINT [FK_CauHoi_Bo_Cau_hoi] FOREIGN KEY([Ma_CauHoi])
REFERENCES [dbo].[Bo_Cau_hoi] ([MaCauHoi])
GO
ALTER TABLE [dbo].[CauHoi] CHECK CONSTRAINT [FK_CauHoi_Bo_Cau_hoi]
GO
ALTER TABLE [dbo].[CauHoi]  WITH CHECK ADD  CONSTRAINT [FK_CauHoi_DeThi] FOREIGN KEY([Ma_De])
REFERENCES [dbo].[DeThi] ([Ma_De])
GO
ALTER TABLE [dbo].[CauHoi] CHECK CONSTRAINT [FK_CauHoi_DeThi]
GO
ALTER TABLE [dbo].[DA_SVLUACHON]  WITH CHECK ADD  CONSTRAINT [FK_DA_SVLUACHON_BaiThi_SV] FOREIGN KEY([Ma_De], [Ma_SV])
REFERENCES [dbo].[BaiThi_SV] ([Ma_SV], [Ma_De])
GO
ALTER TABLE [dbo].[DA_SVLUACHON] CHECK CONSTRAINT [FK_DA_SVLUACHON_BaiThi_SV]
GO
ALTER TABLE [dbo].[Danh_Sach_Mon_Day]  WITH CHECK ADD  CONSTRAINT [FK_Danh_Sach_Mon_Day_GiaoVien] FOREIGN KEY([Ma_GV])
REFERENCES [dbo].[GiaoVien] ([MaGV])
GO
ALTER TABLE [dbo].[Danh_Sach_Mon_Day] CHECK CONSTRAINT [FK_Danh_Sach_Mon_Day_GiaoVien]
GO
ALTER TABLE [dbo].[Danh_Sach_Mon_Day]  WITH CHECK ADD  CONSTRAINT [FK_Danh_Sach_Mon_Day_Mon_Hoc] FOREIGN KEY([Ma_Mon])
REFERENCES [dbo].[Mon_Hoc] ([Ma_Mon])
GO
ALTER TABLE [dbo].[Danh_Sach_Mon_Day] CHECK CONSTRAINT [FK_Danh_Sach_Mon_Day_Mon_Hoc]
GO
ALTER TABLE [dbo].[Danh_Sach_Mon_hoc]  WITH CHECK ADD  CONSTRAINT [FK_Danh_Sach_Mon_hoc_Mon_Hoc] FOREIGN KEY([Ma_Mon])
REFERENCES [dbo].[Mon_Hoc] ([Ma_Mon])
GO
ALTER TABLE [dbo].[Danh_Sach_Mon_hoc] CHECK CONSTRAINT [FK_Danh_Sach_Mon_hoc_Mon_Hoc]
GO
ALTER TABLE [dbo].[Danh_Sach_Mon_hoc]  WITH CHECK ADD  CONSTRAINT [FK_Danh_Sach_Mon_hoc_Sinh_Vien] FOREIGN KEY([MaSV])
REFERENCES [dbo].[Sinh_Vien] ([MaSV])
GO
ALTER TABLE [dbo].[Danh_Sach_Mon_hoc] CHECK CONSTRAINT [FK_Danh_Sach_Mon_hoc_Sinh_Vien]
GO
ALTER TABLE [dbo].[Danh_Sach_SV]  WITH CHECK ADD  CONSTRAINT [FK_Danh_Sach_SV_PhongThi] FOREIGN KEY([MaPhong])
REFERENCES [dbo].[PhongThi] ([MaPhong])
GO
ALTER TABLE [dbo].[Danh_Sach_SV] CHECK CONSTRAINT [FK_Danh_Sach_SV_PhongThi]
GO
ALTER TABLE [dbo].[Danh_Sach_SV]  WITH CHECK ADD  CONSTRAINT [FK_Danh_Sach_SV_Sinh_Vien] FOREIGN KEY([MaSV])
REFERENCES [dbo].[Sinh_Vien] ([MaSV])
GO
ALTER TABLE [dbo].[Danh_Sach_SV] CHECK CONSTRAINT [FK_Danh_Sach_SV_Sinh_Vien]
GO
ALTER TABLE [dbo].[DeThi]  WITH CHECK ADD  CONSTRAINT [FK_DeThi_Kho_De] FOREIGN KEY([Ma_BoDe])
REFERENCES [dbo].[Kho_De] ([Ma_BoDe])
GO
ALTER TABLE [dbo].[DeThi] CHECK CONSTRAINT [FK_DeThi_Kho_De]
GO
ALTER TABLE [dbo].[GiaoVien]  WITH CHECK ADD  CONSTRAINT [FK_GiaoVien_Nganh] FOREIGN KEY([Ma_Nganh])
REFERENCES [dbo].[Nganh] ([MaNganh])
GO
ALTER TABLE [dbo].[GiaoVien] CHECK CONSTRAINT [FK_GiaoVien_Nganh]
GO
ALTER TABLE [dbo].[KetQua]  WITH CHECK ADD  CONSTRAINT [FK_KetQua_BaiThi_SV] FOREIGN KEY([Ma_SV], [MA_De])
REFERENCES [dbo].[BaiThi_SV] ([Ma_SV], [Ma_De])
GO
ALTER TABLE [dbo].[KetQua] CHECK CONSTRAINT [FK_KetQua_BaiThi_SV]
GO
ALTER TABLE [dbo].[Kho_De]  WITH CHECK ADD  CONSTRAINT [FK_Kho_De_GiaoVien] FOREIGN KEY([MaGV])
REFERENCES [dbo].[GiaoVien] ([MaGV])
GO
ALTER TABLE [dbo].[Kho_De] CHECK CONSTRAINT [FK_Kho_De_GiaoVien]
GO
ALTER TABLE [dbo].[Kho_De]  WITH CHECK ADD  CONSTRAINT [FK_Kho_De_Mon_Hoc] FOREIGN KEY([Ma_Mon])
REFERENCES [dbo].[Mon_Hoc] ([Ma_Mon])
GO
ALTER TABLE [dbo].[Kho_De] CHECK CONSTRAINT [FK_Kho_De_Mon_Hoc]
GO
ALTER TABLE [dbo].[PhongThi]  WITH CHECK ADD  CONSTRAINT [FK_PhongThi_GiaoVien] FOREIGN KEY([MaGV])
REFERENCES [dbo].[GiaoVien] ([MaGV])
GO
ALTER TABLE [dbo].[PhongThi] CHECK CONSTRAINT [FK_PhongThi_GiaoVien]
GO
ALTER TABLE [dbo].[Sinh_Vien]  WITH CHECK ADD  CONSTRAINT [FK_Sinh_Vien_Lop_Hoc] FOREIGN KEY([MaLop])
REFERENCES [dbo].[Lop_Hoc] ([Ma_Lop])
GO
ALTER TABLE [dbo].[Sinh_Vien] CHECK CONSTRAINT [FK_Sinh_Vien_Lop_Hoc]
GO
ALTER TABLE [dbo].[Sinh_Vien]  WITH CHECK ADD  CONSTRAINT [FK_Sinh_Vien_Nganh] FOREIGN KEY([MaNganh])
REFERENCES [dbo].[Nganh] ([MaNganh])
GO
ALTER TABLE [dbo].[Sinh_Vien] CHECK CONSTRAINT [FK_Sinh_Vien_Nganh]
GO
ALTER TABLE [dbo].[TaiKhoan]  WITH CHECK ADD  CONSTRAINT [FK_TaiKhoan_GiaoVien] FOREIGN KEY([TenDangNhap])
REFERENCES [dbo].[GiaoVien] ([MaGV])
GO
ALTER TABLE [dbo].[TaiKhoan] CHECK CONSTRAINT [FK_TaiKhoan_GiaoVien]
GO
ALTER TABLE [dbo].[TaiKhoan]  WITH CHECK ADD  CONSTRAINT [FK_TaiKhoan_Sinh_Vien] FOREIGN KEY([TenDangNhap])
REFERENCES [dbo].[Sinh_Vien] ([MaSV])
GO
ALTER TABLE [dbo].[TaiKhoan] CHECK CONSTRAINT [FK_TaiKhoan_Sinh_Vien]
GO
