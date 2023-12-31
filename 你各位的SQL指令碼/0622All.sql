USE [Flex]
GO
/****** Object:  User [sa5]    Script Date: 2023/6/26 下午 10:32:35 ******/
CREATE USER [sa5] FOR LOGIN [sa5] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [sa5]
GO
/****** Object:  Table [dbo].[Activities]    Script Date: 2023/6/26 下午 10:32:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Activities](
	[ActivityId] [int] IDENTITY(1,1) NOT NULL,
	[ActivityName] [nvarchar](50) NOT NULL,
	[fk_ActivityCategoryId] [int] NOT NULL,
	[ActivityDate] [datetime] NOT NULL,
	[fk_SpeakerId] [int] NOT NULL,
	[ActivityPlace] [nvarchar](100) NOT NULL,
	[ActivityImage] [nvarchar](300) NOT NULL,
	[ActivityBookStartTime] [datetime] NOT NULL,
	[ActivityBookEndTime] [datetime] NOT NULL,
	[ActivityAge] [tinyint] NOT NULL,
	[ActivitySalePrice] [int] NOT NULL,
	[ActivityOriginalPrice] [int] NOT NULL,
	[ActivityDescription] [nvarchar](300) NULL,
	[fk_ActivityStatusId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ActivityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ActivityCategories]    Script Date: 2023/6/26 下午 10:32:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ActivityCategories](
	[ActivityCategoryId] [int] IDENTITY(1,1) NOT NULL,
	[ActivityCategoryName] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ActivityCategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ActivityStatuses]    Script Date: 2023/6/26 下午 10:32:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ActivityStatuses](
	[ActivityStatusId] [int] IDENTITY(1,1) NOT NULL,
	[ActivityStatusDescription] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ActivityStatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AlternateAddresses]    Script Date: 2023/6/26 下午 10:32:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AlternateAddresses](
	[AddressId] [int] IDENTITY(501,1) NOT NULL,
	[AlternateAddress1] [nvarchar](300) NULL,
	[AlternateAddress2] [nvarchar](300) NULL,
	[fk_MemberId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[AddressId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BlackLists]    Script Date: 2023/6/26 下午 10:32:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BlackLists](
	[BlackListId] [int] IDENTITY(101,1) NOT NULL,
	[Behavior] [nvarchar](30) NOT NULL,
	[CreatedAt] [datetime] NULL,
 CONSTRAINT [PK__BlackLis__B54E3C740D440FFD] PRIMARY KEY CLUSTERED 
(
	[BlackListId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Branches]    Script Date: 2023/6/26 下午 10:32:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Branches](
	[BranchId] [int] IDENTITY(1,1) NOT NULL,
	[BranchName] [nvarchar](50) NOT NULL,
	[BranchAddress] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[BranchId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CartItems]    Script Date: 2023/6/26 下午 10:32:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CartItems](
	[CartItemId] [int] IDENTITY(1,1) NOT NULL,
	[fk_CardId] [int] NOT NULL,
	[fk_Type] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[Description] [nvarchar](700) NOT NULL,
	[Qty] [int] NOT NULL,
 CONSTRAINT [PK_CartItem] PRIMARY KEY CLUSTERED 
(
	[CartItemId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[closes]    Script Date: 2023/6/26 下午 10:32:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[closes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[close] [bit] NULL,
	[close_date] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ColorCategories]    Script Date: 2023/6/26 下午 10:32:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ColorCategories](
	[ColorId] [int] IDENTITY(1,1) NOT NULL,
	[ColorName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_ColorCategory] PRIMARY KEY CLUSTERED 
(
	[ColorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CouponCategories]    Script Date: 2023/6/26 下午 10:32:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CouponCategories](
	[CouponCategoryId] [int] NOT NULL,
	[CouponCategoryName] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_coupon_category] PRIMARY KEY CLUSTERED 
(
	[CouponCategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Coupons]    Script Date: 2023/6/26 下午 10:32:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Coupons](
	[CouponId] [int] IDENTITY(1,1) NOT NULL,
	[fk_CouponCategoryId] [int] NOT NULL,
	[CouponName] [nvarchar](50) NOT NULL,
	[CouponCode] [nvarchar](50) NOT NULL,
	[MinimumPurchaseAmount] [int] NOT NULL,
	[DiscountType] [int] NOT NULL,
	[DiscountValue] [int] NOT NULL,
	[StartDate] [datetime] NOT NULL,
	[EndType] [bit] NOT NULL,
	[EndDays] [int] NULL,
	[EndDate] [datetime] NULL,
	[PersonMaxUsage] [int] NULL,
	[RequirementType] [int] NULL,
	[Requirement] [int] NULL,
	[fk_RequiredProjectTagID] [int] NULL,
 CONSTRAINT [PK_Coupon] PRIMARY KEY CLUSTERED 
(
	[CouponId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CouponSendings]    Script Date: 2023/6/26 下午 10:32:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CouponSendings](
	[SendingId] [int] IDENTITY(1,1) NOT NULL,
	[fk_CouponId] [int] NOT NULL,
	[fk_MemberId] [int] NULL,
	[SentDate] [datetime] NOT NULL,
	[RedemptionStatus] [bit] NOT NULL,
	[RedeemedDate] [datetime] NULL,
 CONSTRAINT [PK_CouponSending] PRIMARY KEY CLUSTERED 
(
	[SendingId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customized_materials]    Script Date: 2023/6/26 下午 10:32:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customized_materials](
	[Shoesmaterial_Id] [int] IDENTITY(1,1) NOT NULL,
	[material_Name] [nvarchar](50) NOT NULL,
	[material_ColorId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Shoesmaterial_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customized_Shoes]    Script Date: 2023/6/26 下午 10:32:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customized_Shoes](
	[ShoesProductId] [int] IDENTITY(1,1) NOT NULL,
	[ShoesName] [nvarchar](254) NOT NULL,
	[ShoesDescription] [nvarchar](254) NULL,
	[ShoesOrigin] [nvarchar](50) NULL,
	[ShoesUnitPrice] [int] NOT NULL,
	[StartTime] [datetime] NULL,
	[EndTime] [datetime] NULL,
	[fk_ShoesCategoryId] [int] NULL,
	[fk_ShoesColorId] [int] NULL,
	[DataCreateTime] [datetime] NULL,
	[DataEditTime] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ShoesProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CustomizedOrders]    Script Date: 2023/6/26 下午 10:32:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomizedOrders](
	[Customized_Id] [int] IDENTITY(1,1) NOT NULL,
	[Customized_number] [varchar](6000) NOT NULL,
	[Customized_Shoes_Id] [int] NULL,
	[Fk_ForMemberCustomized_Id] [int] NULL,
	[Customized_Eyelet] [int] NULL,
	[Customized_EdgeProtection] [int] NULL,
	[Customized_Rear] [int] NULL,
	[Customized_Tongue] [int] NULL,
	[Customized_Toe] [int] NULL,
	[Remark] [nvarchar](254) NULL,
	[OrderCreateTime] [datetime] NULL,
	[OrderEditTime] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Customized_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Departments]    Script Date: 2023/6/26 下午 10:32:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Departments](
	[DepartmentId] [int] IDENTITY(4001,1) NOT NULL,
	[DepartmentName] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[DepartmentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Discounts]    Script Date: 2023/6/26 下午 10:32:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Discounts](
	[DiscountId] [int] IDENTITY(1,1) NOT NULL,
	[DiscountName] [nvarchar](20) NOT NULL,
	[DiscountDescription] [nvarchar](50) NOT NULL,
	[fk_ProjectTagId] [int] NULL,
	[DiscountType] [int] NOT NULL,
	[DiscountValue] [int] NOT NULL,
	[ConditionType] [int] NOT NULL,
	[ConditionValue] [int] NOT NULL,
	[StartDate] [datetime] NOT NULL,
	[EndDate] [datetime] NULL,
	[DiscountOrder] [int] NULL,
 CONSTRAINT [PK_Discount] PRIMARY KEY CLUSTERED 
(
	[DiscountId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JobTitles]    Script Date: 2023/6/26 下午 10:32:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JobTitles](
	[TitleId] [int] IDENTITY(3001,1) NOT NULL,
	[TitleName] [nvarchar](50) NULL,
	[fk_StaffPermissions] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[TitleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[logistics_companies]    Script Date: 2023/6/26 下午 10:32:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[logistics_companies](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
	[tel] [varchar](12) NULL,
	[logistics_description] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MemberPoints]    Script Date: 2023/6/26 下午 10:32:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MemberPoints](
	[MemberPointsId] [int] IDENTITY(801,1) NOT NULL,
	[PointSubtotal] [int] NOT NULL,
	[fk_PointHistoryId] [int] NOT NULL,
	[fk_MemberId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MemberPointsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Members]    Script Date: 2023/6/26 下午 10:32:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Members](
	[MemberId] [int] IDENTITY(401,1) NOT NULL,
	[Name] [nvarchar](30) NOT NULL,
	[Age] [tinyint] NULL,
	[Gender] [bit] NULL,
	[Mobile] [varchar](10) NOT NULL,
	[Email] [nvarchar](300) NOT NULL,
	[Birthday] [date] NULL,
	[CommonAddress] [nvarchar](100) NOT NULL,
	[Account] [varchar](30) NOT NULL,
	[EncryptedPassword] [varchar](70) NOT NULL,
	[Registration] [datetime] NULL,
	[IsConfirmed] [bit] NULL,
	[Confirmed] [varchar](50) NULL,
	[fk_LevelId] [int] NOT NULL,
	[fk_BlackListId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MemberId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MembershipLevelPrivileges]    Script Date: 2023/6/26 下午 10:32:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MembershipLevelPrivileges](
	[fk_LevelId] [int] NOT NULL,
	[fk_PrivilegeId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[fk_LevelId] ASC,
	[fk_PrivilegeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MembershipLevels]    Script Date: 2023/6/26 下午 10:32:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MembershipLevels](
	[LevelId] [int] IDENTITY(201,1) NOT NULL,
	[LevelName] [nvarchar](10) NOT NULL,
	[MinSpending] [varchar](30) NOT NULL,
	[Discount] [int] NULL,
	[Description] [nvarchar](300) NULL,
 CONSTRAINT [PK__Membersh__09F03C26F7CA5148] PRIMARY KEY CLUSTERED 
(
	[LevelId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OneToOneReservations]    Script Date: 2023/6/26 下午 10:32:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OneToOneReservations](
	[ReservationId] [int] IDENTITY(1,1) NOT NULL,
	[fk_BookerId] [int] NOT NULL,
	[ReservationStartTime] [datetime] NOT NULL,
	[ReservationEndTime] [datetime] NOT NULL,
	[fk_BranchId] [int] NOT NULL,
	[fk_ReservationSpeakerId] [int] NOT NULL,
	[fk_ReservationStatusId] [int] NOT NULL,
	[ReservationCreatedDate] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ReservationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[order_statuses]    Script Date: 2023/6/26 下午 10:32:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[order_statuses](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[order_status] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[orderItems]    Script Date: 2023/6/26 下午 10:32:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[orderItems](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[order_Id] [int] NOT NULL,
	[product_name] [nvarchar](50) NULL,
	[fk_typeId] [int] NOT NULL,
	[per_price] [int] NULL,
	[quantity] [int] NULL,
	[discount_name] [nvarchar](50) NULL,
	[subtotal] [int] NULL,
	[discount_subtotal] [int] NULL,
	[Items_description] [nvarchar](50) NULL,
 CONSTRAINT [PK__orderIte__3214EC0749CD6A99] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[orders]    Script Date: 2023/6/26 下午 10:32:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[orders](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ordertime] [datetime] NOT NULL,
	[fk_member_Id] [int] NOT NULL,
	[total_quantity] [int] NOT NULL,
	[logistics_company_Id] [int] NOT NULL,
	[order_status_Id] [int] NOT NULL,
	[pay_method_Id] [int] NOT NULL,
	[pay_status_Id] [int] NOT NULL,
	[coupon_name] [nvarchar](50) NULL,
	[coupon_discount] [int] NULL,
	[freight] [int] NULL,
	[cellphone] [varchar](12) NOT NULL,
	[receipt] [varchar](50) NULL,
	[receiver] [nvarchar](50) NULL,
	[recipient_address] [nvarchar](50) NULL,
	[order_description] [nvarchar](50) NULL,
	[close_Id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pay_methods]    Script Date: 2023/6/26 下午 10:32:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pay_methods](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[pay_method] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pay_statuses]    Script Date: 2023/6/26 下午 10:32:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pay_statuses](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[pay_status] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PointCategories]    Script Date: 2023/6/26 下午 10:32:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PointCategories](
	[PointCategoryId] [int] IDENTITY(801,1) NOT NULL,
	[PointCategoryName] [nvarchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[PointCategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PointHistories]    Script Date: 2023/6/26 下午 10:32:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PointHistories](
	[PointHistoryId] [int] IDENTITY(701,1) NOT NULL,
	[GetOrDeduct] [bit] NOT NULL,
	[UsageAmount] [int] NOT NULL,
	[EffectiveDate] [datetime] NULL,
	[fk_MemberId] [int] NULL,
	[fk_OrderId] [int] NULL,
	[OrderName] [nvarchar](50) NULL,
	[fk_PointCategoryId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[PointHistoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PointManage]    Script Date: 2023/6/26 下午 10:32:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PointManage](
	[PointManageId] [int] IDENTITY(1,1) NOT NULL,
	[PointManageName] [nvarchar](30) NOT NULL,
	[PointClassify] [nvarchar](10) NOT NULL,
	[GetOrDeduct] [bit] NOT NULL,
	[Amount] [int] NOT NULL,
	[fk_TypeId] [int] NOT NULL,
	[TypeProductId] [int] NULL,
	[PointExpirationDate] [datetime] NULL,
 CONSTRAINT [PK_PointManage] PRIMARY KEY CLUSTERED 
(
	[PointManageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PointTradeIn]    Script Date: 2023/6/26 下午 10:32:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PointTradeIn](
	[PointTradeInId] [int] NOT NULL,
	[fk_MemberId] [int] NOT NULL,
	[fk_OrderId] [int] NOT NULL,
	[GiftThreshold] [nvarchar](30) NOT NULL,
	[GetPoints] [varchar](30) NULL,
	[MaxGetPoints] [varchar](30) NULL,
	[EffectiveDate] [datetime] NOT NULL,
	[ExpirationDate] [datetime] NOT NULL,
 CONSTRAINT [PK_PointTradeIn] PRIMARY KEY CLUSTERED 
(
	[PointTradeInId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Privileges]    Script Date: 2023/6/26 下午 10:32:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Privileges](
	[PrivilegeId] [int] IDENTITY(301,1) NOT NULL,
	[PrivilegeName] [nvarchar](30) NOT NULL,
	[Description] [nvarchar](300) NULL,
PRIMARY KEY CLUSTERED 
(
	[PrivilegeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductCategories]    Script Date: 2023/6/26 下午 10:32:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductCategories](
	[ProductCategoryId] [int] IDENTITY(1,1) NOT NULL,
	[ProductCategoryName] [nvarchar](50) NOT NULL,
	[fk_SalesCategoryId] [int] NOT NULL,
	[CategoryPath] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_ProductCategory] PRIMARY KEY CLUSTERED 
(
	[ProductCategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductGroups]    Script Date: 2023/6/26 下午 10:32:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductGroups](
	[ProductGroupId] [int] IDENTITY(1000,1) NOT NULL,
	[fk_ProductId] [varchar](254) NOT NULL,
	[fk_ColorId] [int] NOT NULL,
	[fk_SizeID] [int] NOT NULL,
	[Qty] [int] NOT NULL,
 CONSTRAINT [PK_ProductGroups] PRIMARY KEY CLUSTERED 
(
	[ProductGroupId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductImgs]    Script Date: 2023/6/26 下午 10:32:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductImgs](
	[ProductImgId] [int] IDENTITY(1,1) NOT NULL,
	[fk_ProductId] [varchar](254) NOT NULL,
	[ImgPath] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_ProductImg] PRIMARY KEY CLUSTERED 
(
	[ProductImgId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 2023/6/26 下午 10:32:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[ProductId] [varchar](254) NOT NULL,
	[ProductName] [nvarchar](254) NOT NULL,
	[ProductDescription] [nvarchar](max) NOT NULL,
	[ProductMaterial] [nvarchar](50) NULL,
	[ProductOrigin] [nvarchar](50) NOT NULL,
	[UnitPrice] [int] NULL,
	[SalesPrice] [int] NOT NULL,
	[StartTime] [datetime] NOT NULL,
	[EndTime] [datetime] NULL,
	[LogOut] [bit] NOT NULL,
	[Tag] [nvarchar](100) NULL,
	[fk_ProductSubCategoryID] [int] NOT NULL,
	[CreateTime] [datetime] NOT NULL,
	[EditTime] [datetime] NOT NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductSubCategories]    Script Date: 2023/6/26 下午 10:32:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductSubCategories](
	[ProductSubCategoryId] [int] IDENTITY(1,1) NOT NULL,
	[ProductSubCategoryName] [nvarchar](50) NOT NULL,
	[fk_ProductCategoryId] [int] NOT NULL,
	[SubCategoryPath] [nvarchar](150) NOT NULL,
 CONSTRAINT [PK_ProductSubCategory] PRIMARY KEY CLUSTERED 
(
	[ProductSubCategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProjectTagItems]    Script Date: 2023/6/26 下午 10:32:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProjectTagItems](
	[fk_ProjectTagId] [int] NOT NULL,
	[fk_ProductId] [varchar](254) NOT NULL,
 CONSTRAINT [PK_discount_group_item] PRIMARY KEY CLUSTERED 
(
	[fk_ProjectTagId] ASC,
	[fk_ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProjectTags]    Script Date: 2023/6/26 下午 10:32:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProjectTags](
	[ProjectTagId] [int] IDENTITY(1,1) NOT NULL,
	[ProjectTagName] [nvarchar](30) NOT NULL,
	[CreateAt] [datetime] NOT NULL,
	[ModifiedAt] [datetime] NOT NULL,
	[status] [bit] NOT NULL,
 CONSTRAINT [PK_discount_group] PRIMARY KEY CLUSTERED 
(
	[ProjectTagId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ReservationStatuses]    Script Date: 2023/6/26 下午 10:32:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReservationStatuses](
	[ReservationId] [int] NOT NULL,
	[ReservationStatusDescription] [nvarchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ReservationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SalesCategories]    Script Date: 2023/6/26 下午 10:32:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SalesCategories](
	[SalesCategoryId] [int] IDENTITY(1,1) NOT NULL,
	[SalesCategoryName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_SalesCategory] PRIMARY KEY CLUSTERED 
(
	[SalesCategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ShoesCategories]    Script Date: 2023/6/26 下午 10:32:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ShoesCategories](
	[ShoesCategoryId] [int] IDENTITY(1,1) NOT NULL,
	[ShoesCategoryName] [nvarchar](254) NOT NULL,
	[CategoryCreateTime] [datetime] NULL,
	[CategoryEditTime] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ShoesCategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ShoesColorCategories]    Script Date: 2023/6/26 下午 10:32:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ShoesColorCategories](
	[ShoesColorId] [int] IDENTITY(1,1) NOT NULL,
	[ColorName] [nvarchar](50) NOT NULL,
	[ColorCode] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[ShoesColorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ShoesPictures]    Script Date: 2023/6/26 下午 10:32:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ShoesPictures](
	[ShoesPicture_Id] [int] IDENTITY(1,1) NOT NULL,
	[ShoesPictureUrl] [nvarchar](4000) NULL,
	[fk_ShoesPictureProduct_Id] [int] NULL,
	[fk_ShoesProductOrder_Id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ShoesPicture_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ShoppingCarts]    Script Date: 2023/6/26 下午 10:32:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ShoppingCarts](
	[CartId] [int] IDENTITY(1,1) NOT NULL,
	[fk_MemberID] [int] NOT NULL,
 CONSTRAINT [PK_ShoppingCart] PRIMARY KEY CLUSTERED 
(
	[CartId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SizeCategories]    Script Date: 2023/6/26 下午 10:32:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SizeCategories](
	[SizeId] [int] IDENTITY(1,1) NOT NULL,
	[SizeName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_SizeCategories] PRIMARY KEY CLUSTERED 
(
	[SizeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SpeakerFields]    Script Date: 2023/6/26 下午 10:32:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SpeakerFields](
	[FieldId] [int] IDENTITY(1,1) NOT NULL,
	[FieldName] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[FieldId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Speakers]    Script Date: 2023/6/26 下午 10:32:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Speakers](
	[SpeakerId] [int] IDENTITY(1,1) NOT NULL,
	[SpeakerName] [nvarchar](50) NOT NULL,
	[SpeakerPhone] [varchar](10) NULL,
	[fk_SpeakerFieldId] [int] NOT NULL,
	[SpeakerImg] [varchar](300) NULL,
	[fk_SpeakerBranchId] [int] NULL,
	[SpeakerDescription] [nvarchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[SpeakerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StaffPermissions]    Script Date: 2023/6/26 下午 10:32:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StaffPermissions](
	[PermissionsId] [int] IDENTITY(1001,1) NOT NULL,
	[LevelName] [nvarchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[PermissionsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Staffs]    Script Date: 2023/6/26 下午 10:32:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Staffs](
	[staffId] [int] IDENTITY(2001,1) NOT NULL,
	[Name] [nvarchar](30) NOT NULL,
	[Age] [tinyint] NULL,
	[Gender] [bit] NULL,
	[Mobile] [varchar](10) NOT NULL,
	[Email] [nvarchar](300) NOT NULL,
	[Birthday] [date] NULL,
	[Account] [varchar](30) NOT NULL,
	[Password] [varchar](70) NOT NULL,
	[dueDate] [date] NULL,
	[fk_PermissionsId] [int] NOT NULL,
	[fk_TitleId] [int] NOT NULL,
	[fk_DepartmentId] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Suppliers]    Script Date: 2023/6/26 下午 10:32:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Suppliers](
	[SupplierId] [int] IDENTITY(1,1) NOT NULL,
	[SupplierCompanyName] [nvarchar](50) NOT NULL,
	[HasCertificate] [bit] NULL,
	[Supply_Material] [nvarchar](50) NULL,
	[SupplierCompanyPhone] [int] NULL,
	[SupplierCompanyEmail] [nvarchar](250) NULL,
	[SupplierCompanyAddress] [nvarchar](250) NULL,
	[SupplierCompanyNumber] [int] NULL,
	[SupplierStartDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[SupplierId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Type]    Script Date: 2023/6/26 下午 10:32:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Type](
	[TypeId] [int] IDENTITY(1,1) NOT NULL,
	[TypeName] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_Type] PRIMARY KEY CLUSTERED 
(
	[TypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Activities] ON 

INSERT [dbo].[Activities] ([ActivityId], [ActivityName], [fk_ActivityCategoryId], [ActivityDate], [fk_SpeakerId], [ActivityPlace], [ActivityImage], [ActivityBookStartTime], [ActivityBookEndTime], [ActivityAge], [ActivitySalePrice], [ActivityOriginalPrice], [ActivityDescription], [fk_ActivityStatusId]) VALUES (1, N'2023台北歡慶雙十節路跑', 1, CAST(N'2023-10-10T07:00:00.000' AS DateTime), 1, N'臺北市政府市民廣場', N'D:\期中專題 Flex\FLEX活動照片\活動照片\2023台北歡慶雙十節路跑.jpg', CAST(N'2023-08-10T00:00:00.000' AS DateTime), CAST(N'2023-10-10T23:59:59.000' AS DateTime), 7, 600, 700, N'一起在清晨享受健康的路跑活動慶祝台灣的生日吧！', 1)
INSERT [dbo].[Activities] ([ActivityId], [ActivityName], [fk_ActivityCategoryId], [ActivityDate], [fk_SpeakerId], [ActivityPlace], [ActivityImage], [ActivityBookStartTime], [ActivityBookEndTime], [ActivityAge], [ActivitySalePrice], [ActivityOriginalPrice], [ActivityDescription], [fk_ActivityStatusId]) VALUES (2, N'2023新竹馬拉松', 2, CAST(N'2023-06-25T09:30:00.000' AS DateTime), 3, N'竹南寮十七公里海岸線', N'D:\期中專題 Flex\FLEX活動照片\活動照片\2023新竹馬拉松.png', CAST(N'2023-03-25T00:00:00.000' AS DateTime), CAST(N'2023-05-25T23:59:59.000' AS DateTime), 7, 600, 700, N'邀請您，一起來感受新竹南寮十七公里海岸線的無敵海景。', 3)
INSERT [dbo].[Activities] ([ActivityId], [ActivityName], [fk_ActivityCategoryId], [ActivityDate], [fk_SpeakerId], [ActivityPlace], [ActivityImage], [ActivityBookStartTime], [ActivityBookEndTime], [ActivityAge], [ActivitySalePrice], [ActivityOriginalPrice], [ActivityDescription], [fk_ActivityStatusId]) VALUES (3, N'2023太平山自行車挑戰賽', 3, CAST(N'2023-07-30T08:00:00.000' AS DateTime), 4, N'宜蘭太平山國家森林遊樂區', N'D:\期中專題 Flex\FLEX活動照片\活動照片\2023太平山自行車挑戰賽.jpg', CAST(N'2023-04-30T10:00:00.000' AS DateTime), CAST(N'2023-06-30T23:59:59.000' AS DateTime), 16, 850, 1000, N'一起騎著自行車遊覽台灣的美景吧！', 2)
INSERT [dbo].[Activities] ([ActivityId], [ActivityName], [fk_ActivityCategoryId], [ActivityDate], [fk_SpeakerId], [ActivityPlace], [ActivityImage], [ActivityBookStartTime], [ActivityBookEndTime], [ActivityAge], [ActivitySalePrice], [ActivityOriginalPrice], [ActivityDescription], [fk_ActivityStatusId]) VALUES (4, N'2023登峰造極之嘉明湖登山體驗', 4, CAST(N'2023-08-19T06:30:00.000' AS DateTime), 7, N'台東向陽森林遊樂區登山口', N'D:\期中專題 Flex\FLEX活動照片\活動照片\2023登峰造極之嘉明湖登山體驗.jpg', CAST(N'2023-05-19T00:00:00.000' AS DateTime), CAST(N'2023-07-19T23:59:59.000' AS DateTime), 18, 3300, 3500, N'一睹「?高山藍寶石」、「天使的眼淚」嘉明湖', 2)
INSERT [dbo].[Activities] ([ActivityId], [ActivityName], [fk_ActivityCategoryId], [ActivityDate], [fk_SpeakerId], [ActivityPlace], [ActivityImage], [ActivityBookStartTime], [ActivityBookEndTime], [ActivityAge], [ActivitySalePrice], [ActivityOriginalPrice], [ActivityDescription], [fk_ActivityStatusId]) VALUES (5, N'2023第6屆桃園健行嘉年華', 5, CAST(N'2023-12-10T10:00:00.000' AS DateTime), 9, N'聖德基督教學院', N'D:\期中專題 Flex\FLEX活動照片\活動照片\2023第6屆桃園健行嘉年華.png', CAST(N'2023-08-10T00:00:00.000' AS DateTime), CAST(N'2023-10-10T23:59:59.000' AS DateTime), 7, 699, 799, N'加入我們，一同參加2023第6屆桃園健行嘉年華！這是一個充滿活力和健康的盛會，旨在鼓勵人們關注身心健康，享受戶外運動的樂趣。在這次活動中，您將有機會體驗桃園美麗的自然風光和豐富的運動活動。', 1)
SET IDENTITY_INSERT [dbo].[Activities] OFF
GO
SET IDENTITY_INSERT [dbo].[ActivityCategories] ON 

INSERT [dbo].[ActivityCategories] ([ActivityCategoryId], [ActivityCategoryName]) VALUES (1, N'路跑')
INSERT [dbo].[ActivityCategories] ([ActivityCategoryId], [ActivityCategoryName]) VALUES (2, N'鐵人三項')
INSERT [dbo].[ActivityCategories] ([ActivityCategoryId], [ActivityCategoryName]) VALUES (3, N'自行車')
INSERT [dbo].[ActivityCategories] ([ActivityCategoryId], [ActivityCategoryName]) VALUES (4, N'健行')
INSERT [dbo].[ActivityCategories] ([ActivityCategoryId], [ActivityCategoryName]) VALUES (5, N'登山')
INSERT [dbo].[ActivityCategories] ([ActivityCategoryId], [ActivityCategoryName]) VALUES (6, N'瑜珈')
SET IDENTITY_INSERT [dbo].[ActivityCategories] OFF
GO
SET IDENTITY_INSERT [dbo].[ActivityStatuses] ON 

INSERT [dbo].[ActivityStatuses] ([ActivityStatusId], [ActivityStatusDescription]) VALUES (3, N'已下架')
INSERT [dbo].[ActivityStatuses] ([ActivityStatusId], [ActivityStatusDescription]) VALUES (2, N'已上架')
INSERT [dbo].[ActivityStatuses] ([ActivityStatusId], [ActivityStatusDescription]) VALUES (1, N'待上架')
SET IDENTITY_INSERT [dbo].[ActivityStatuses] OFF
GO
SET IDENTITY_INSERT [dbo].[AlternateAddresses] ON 

INSERT [dbo].[AlternateAddresses] ([AddressId], [AlternateAddress1], [AlternateAddress2], [fk_MemberId]) VALUES (501, N'Alternate Address 1', NULL, 401)
INSERT [dbo].[AlternateAddresses] ([AddressId], [AlternateAddress1], [AlternateAddress2], [fk_MemberId]) VALUES (502, N'Alternate Address 3', N'Alternate Address 4', 402)
INSERT [dbo].[AlternateAddresses] ([AddressId], [AlternateAddress1], [AlternateAddress2], [fk_MemberId]) VALUES (503, N'Alternate Address 5', NULL, 403)
INSERT [dbo].[AlternateAddresses] ([AddressId], [AlternateAddress1], [AlternateAddress2], [fk_MemberId]) VALUES (504, N'Alternate Address 7', N'Alternate Address 8', 404)
INSERT [dbo].[AlternateAddresses] ([AddressId], [AlternateAddress1], [AlternateAddress2], [fk_MemberId]) VALUES (505, N'Alternate Address 9', NULL, 405)
SET IDENTITY_INSERT [dbo].[AlternateAddresses] OFF
GO
SET IDENTITY_INSERT [dbo].[BlackLists] ON 

INSERT [dbo].[BlackLists] ([BlackListId], [Behavior], [CreatedAt]) VALUES (101, N'詐欺行為', CAST(N'2023-06-17T08:54:17.723' AS DateTime))
INSERT [dbo].[BlackLists] ([BlackListId], [Behavior], [CreatedAt]) VALUES (102, N'未經授權的行為', CAST(N'2023-06-17T08:54:17.723' AS DateTime))
INSERT [dbo].[BlackLists] ([BlackListId], [Behavior], [CreatedAt]) VALUES (103, N'違反使用條款', CAST(N'2023-06-17T08:54:17.723' AS DateTime))
SET IDENTITY_INSERT [dbo].[BlackLists] OFF
GO
SET IDENTITY_INSERT [dbo].[Branches] ON 

INSERT [dbo].[Branches] ([BranchId], [BranchName], [BranchAddress]) VALUES (1, N'新北永和店', N'234新北市永和區文化路7號')
INSERT [dbo].[Branches] ([BranchId], [BranchName], [BranchAddress]) VALUES (2, N'新北板橋店', N'220新北市板橋區文化路一段135號')
INSERT [dbo].[Branches] ([BranchId], [BranchName], [BranchAddress]) VALUES (3, N'桃園中壢店', N'桃園縣中壢市中正路89號1樓')
INSERT [dbo].[Branches] ([BranchId], [BranchName], [BranchAddress]) VALUES (4, N'新竹站前店', N'300新竹市東區中華路二段458號')
INSERT [dbo].[Branches] ([BranchId], [BranchName], [BranchAddress]) VALUES (5, N'新竹竹北店', N'302新竹縣竹北市莊敬北路130號')
INSERT [dbo].[Branches] ([BranchId], [BranchName], [BranchAddress]) VALUES (6, N'台中逢甲店', N'407台中市西屯區西屯路二段272-3號1樓')
INSERT [dbo].[Branches] ([BranchId], [BranchName], [BranchAddress]) VALUES (7, N'台北市府店', N'110台北市信義區松高路11號B2樓')
SET IDENTITY_INSERT [dbo].[Branches] OFF
GO
SET IDENTITY_INSERT [dbo].[ColorCategories] ON 

INSERT [dbo].[ColorCategories] ([ColorId], [ColorName]) VALUES (1, N'黑')
INSERT [dbo].[ColorCategories] ([ColorId], [ColorName]) VALUES (2, N'白')
INSERT [dbo].[ColorCategories] ([ColorId], [ColorName]) VALUES (3, N'灰')
INSERT [dbo].[ColorCategories] ([ColorId], [ColorName]) VALUES (4, N'紅')
INSERT [dbo].[ColorCategories] ([ColorId], [ColorName]) VALUES (5, N'藍')
INSERT [dbo].[ColorCategories] ([ColorId], [ColorName]) VALUES (6, N'黃')
SET IDENTITY_INSERT [dbo].[ColorCategories] OFF
GO
INSERT [dbo].[CouponCategories] ([CouponCategoryId], [CouponCategoryName]) VALUES (3, N'生日券')
INSERT [dbo].[CouponCategories] ([CouponCategoryId], [CouponCategoryName]) VALUES (2, N'註冊券')
INSERT [dbo].[CouponCategories] ([CouponCategoryId], [CouponCategoryName]) VALUES (5, N'會員等級券')
INSERT [dbo].[CouponCategories] ([CouponCategoryId], [CouponCategoryName]) VALUES (1, N'優惠券')
INSERT [dbo].[CouponCategories] ([CouponCategoryId], [CouponCategoryName]) VALUES (4, N'購物獎勵券')
GO
SET IDENTITY_INSERT [dbo].[Coupons] ON 

INSERT [dbo].[Coupons] ([CouponId], [fk_CouponCategoryId], [CouponName], [CouponCode], [MinimumPurchaseAmount], [DiscountType], [DiscountValue], [StartDate], [EndType], [EndDays], [EndDate], [PersonMaxUsage], [RequirementType], [Requirement], [fk_RequiredProjectTagID]) VALUES (1, 1, N'Coupon1', N'CODE1', 100, 1, 10, CAST(N'2023-06-23T00:00:00.000' AS DateTime), 0, NULL, NULL, 1, 0, NULL, NULL)
INSERT [dbo].[Coupons] ([CouponId], [fk_CouponCategoryId], [CouponName], [CouponCode], [MinimumPurchaseAmount], [DiscountType], [DiscountValue], [StartDate], [EndType], [EndDays], [EndDate], [PersonMaxUsage], [RequirementType], [Requirement], [fk_RequiredProjectTagID]) VALUES (2, 2, N'Coupon2', N'CODE2', 200, 2, 20, CAST(N'2023-06-23T00:00:00.000' AS DateTime), 1, 7, NULL, 2, 1, 500, 1)
INSERT [dbo].[Coupons] ([CouponId], [fk_CouponCategoryId], [CouponName], [CouponCode], [MinimumPurchaseAmount], [DiscountType], [DiscountValue], [StartDate], [EndType], [EndDays], [EndDate], [PersonMaxUsage], [RequirementType], [Requirement], [fk_RequiredProjectTagID]) VALUES (3, 3, N'Coupon3', N'CODE3', 0, 1, 15, CAST(N'2023-06-24T00:00:00.000' AS DateTime), 0, NULL, NULL, 1, 2, 100, 2)
INSERT [dbo].[Coupons] ([CouponId], [fk_CouponCategoryId], [CouponName], [CouponCode], [MinimumPurchaseAmount], [DiscountType], [DiscountValue], [StartDate], [EndType], [EndDays], [EndDate], [PersonMaxUsage], [RequirementType], [Requirement], [fk_RequiredProjectTagID]) VALUES (4, 4, N'Coupon4', N'CODE4', 50, 2, 30, CAST(N'2023-06-24T00:00:00.000' AS DateTime), 1, 14, NULL, 2, 3, 200, 3)
INSERT [dbo].[Coupons] ([CouponId], [fk_CouponCategoryId], [CouponName], [CouponCode], [MinimumPurchaseAmount], [DiscountType], [DiscountValue], [StartDate], [EndType], [EndDays], [EndDate], [PersonMaxUsage], [RequirementType], [Requirement], [fk_RequiredProjectTagID]) VALUES (5, 5, N'Coupon5', N'CODE5', 0, 1, 20, CAST(N'2023-06-25T00:00:00.000' AS DateTime), 0, NULL, NULL, 1, 0, NULL, NULL)
INSERT [dbo].[Coupons] ([CouponId], [fk_CouponCategoryId], [CouponName], [CouponCode], [MinimumPurchaseAmount], [DiscountType], [DiscountValue], [StartDate], [EndType], [EndDays], [EndDate], [PersonMaxUsage], [RequirementType], [Requirement], [fk_RequiredProjectTagID]) VALUES (6, 1, N'Coupon6', N'CODE6', 100, 2, 25, CAST(N'2023-06-25T00:00:00.000' AS DateTime), 1, 30, NULL, 2, 2, 300, 4)
INSERT [dbo].[Coupons] ([CouponId], [fk_CouponCategoryId], [CouponName], [CouponCode], [MinimumPurchaseAmount], [DiscountType], [DiscountValue], [StartDate], [EndType], [EndDays], [EndDate], [PersonMaxUsage], [RequirementType], [Requirement], [fk_RequiredProjectTagID]) VALUES (7, 2, N'Coupon7', N'CODE7', 150, 1, 10, CAST(N'2023-06-26T00:00:00.000' AS DateTime), 0, NULL, NULL, 1, 0, NULL, NULL)
INSERT [dbo].[Coupons] ([CouponId], [fk_CouponCategoryId], [CouponName], [CouponCode], [MinimumPurchaseAmount], [DiscountType], [DiscountValue], [StartDate], [EndType], [EndDays], [EndDate], [PersonMaxUsage], [RequirementType], [Requirement], [fk_RequiredProjectTagID]) VALUES (8, 3, N'Coupon8', N'CODE8', 0, 2, 30, CAST(N'2023-06-26T00:00:00.000' AS DateTime), 1, 7, NULL, 2, 1, 400, 1)
INSERT [dbo].[Coupons] ([CouponId], [fk_CouponCategoryId], [CouponName], [CouponCode], [MinimumPurchaseAmount], [DiscountType], [DiscountValue], [StartDate], [EndType], [EndDays], [EndDate], [PersonMaxUsage], [RequirementType], [Requirement], [fk_RequiredProjectTagID]) VALUES (9, 4, N'Coupon9', N'CODE9', 0, 1, 25, CAST(N'2023-06-27T00:00:00.000' AS DateTime), 0, NULL, NULL, 1, 3, 150, 2)
INSERT [dbo].[Coupons] ([CouponId], [fk_CouponCategoryId], [CouponName], [CouponCode], [MinimumPurchaseAmount], [DiscountType], [DiscountValue], [StartDate], [EndType], [EndDays], [EndDate], [PersonMaxUsage], [RequirementType], [Requirement], [fk_RequiredProjectTagID]) VALUES (10, 5, N'Coupon10', N'CODE10', 200, 2, 15, CAST(N'2023-06-27T00:00:00.000' AS DateTime), 1, 14, NULL, 2, 2, 250, 3)
SET IDENTITY_INSERT [dbo].[Coupons] OFF
GO
SET IDENTITY_INSERT [dbo].[Customized_materials] ON 

INSERT [dbo].[Customized_materials] ([Shoesmaterial_Id], [material_Name], [material_ColorId]) VALUES (1, N'帆布', 7)
INSERT [dbo].[Customized_materials] ([Shoesmaterial_Id], [material_Name], [material_ColorId]) VALUES (2, N'皮革', 4)
INSERT [dbo].[Customized_materials] ([Shoesmaterial_Id], [material_Name], [material_ColorId]) VALUES (3, N'緞紋皮革', 9)
INSERT [dbo].[Customized_materials] ([Shoesmaterial_Id], [material_Name], [material_ColorId]) VALUES (4, N'牛皮', 5)
SET IDENTITY_INSERT [dbo].[Customized_materials] OFF
GO
SET IDENTITY_INSERT [dbo].[Customized_Shoes] ON 

INSERT [dbo].[Customized_Shoes] ([ShoesProductId], [ShoesName], [ShoesDescription], [ShoesOrigin], [ShoesUnitPrice], [StartTime], [EndTime], [fk_ShoesCategoryId], [fk_ShoesColorId], [DataCreateTime], [DataEditTime]) VALUES (1, N'BS00101', N'專為您訂製最舒適的籃球鞋，於籃球場上揮灑您的青春汗水', N'台灣', 5000, CAST(N'2023-06-21T12:41:48.237' AS DateTime), NULL, 3, 2, CAST(N'2023-06-21T12:41:48.237' AS DateTime), CAST(N'2023-06-21T12:41:48.237' AS DateTime))
INSERT [dbo].[Customized_Shoes] ([ShoesProductId], [ShoesName], [ShoesDescription], [ShoesOrigin], [ShoesUnitPrice], [StartTime], [EndTime], [fk_ShoesCategoryId], [fk_ShoesColorId], [DataCreateTime], [DataEditTime]) VALUES (2, N'LF00101', N'適用於多種場合，為您訂製屬於自己的都市風格', N'台灣', 4000, CAST(N'2023-06-21T12:41:48.237' AS DateTime), NULL, 1, 5, CAST(N'2023-06-21T12:41:48.237' AS DateTime), CAST(N'2023-06-21T12:41:48.237' AS DateTime))
INSERT [dbo].[Customized_Shoes] ([ShoesProductId], [ShoesName], [ShoesDescription], [ShoesOrigin], [ShoesUnitPrice], [StartTime], [EndTime], [fk_ShoesCategoryId], [fk_ShoesColorId], [DataCreateTime], [DataEditTime]) VALUES (3, N'RN00101', N'訂製專屬於您的跑步鞋，用力奔跑，繼續於前進的道路上發揚夢想', N'台灣', 4500, CAST(N'2023-06-21T12:41:48.237' AS DateTime), NULL, 2, 1, CAST(N'2023-06-21T12:41:48.237' AS DateTime), CAST(N'2023-06-21T12:41:48.237' AS DateTime))
SET IDENTITY_INSERT [dbo].[Customized_Shoes] OFF
GO
SET IDENTITY_INSERT [dbo].[CustomizedOrders] ON 

INSERT [dbo].[CustomizedOrders] ([Customized_Id], [Customized_number], [Customized_Shoes_Id], [Fk_ForMemberCustomized_Id], [Customized_Eyelet], [Customized_EdgeProtection], [Customized_Rear], [Customized_Tongue], [Customized_Toe], [Remark], [OrderCreateTime], [OrderEditTime]) VALUES (1, N'SHOESMADE-2023-001', 1, NULL, 1, 2, 1, 2, 1, N'Size請幫我做成男生台灣尺寸75吋', CAST(N'2023-06-21T12:42:28.720' AS DateTime), CAST(N'2023-06-21T12:42:28.720' AS DateTime))
INSERT [dbo].[CustomizedOrders] ([Customized_Id], [Customized_number], [Customized_Shoes_Id], [Fk_ForMemberCustomized_Id], [Customized_Eyelet], [Customized_EdgeProtection], [Customized_Rear], [Customized_Tongue], [Customized_Toe], [Remark], [OrderCreateTime], [OrderEditTime]) VALUES (2, N'SHOESMADE-2023-002', 2, NULL, 2, 3, 2, 3, 1, N'Size請幫我做成女生美國尺寸5.5吋', CAST(N'2023-06-21T12:42:28.720' AS DateTime), CAST(N'2023-06-21T12:42:28.720' AS DateTime))
SET IDENTITY_INSERT [dbo].[CustomizedOrders] OFF
GO
SET IDENTITY_INSERT [dbo].[Departments] ON 

INSERT [dbo].[Departments] ([DepartmentId], [DepartmentName]) VALUES (4001, N'行銷部門')
INSERT [dbo].[Departments] ([DepartmentId], [DepartmentName]) VALUES (4002, N'技術部門')
INSERT [dbo].[Departments] ([DepartmentId], [DepartmentName]) VALUES (4003, N'銷售部門')
INSERT [dbo].[Departments] ([DepartmentId], [DepartmentName]) VALUES (4004, N'商品部門')
INSERT [dbo].[Departments] ([DepartmentId], [DepartmentName]) VALUES (4005, N'客服部門')
SET IDENTITY_INSERT [dbo].[Departments] OFF
GO
SET IDENTITY_INSERT [dbo].[Discounts] ON 

INSERT [dbo].[Discounts] ([DiscountId], [DiscountName], [DiscountDescription], [fk_ProjectTagId], [DiscountType], [DiscountValue], [ConditionType], [ConditionValue], [StartDate], [EndDate], [DiscountOrder]) VALUES (2, N'Summer Sale', N'Enjoy special discounts during summer', 1, 1, 20, 1, 100, CAST(N'2023-07-01T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Discounts] ([DiscountId], [DiscountName], [DiscountDescription], [fk_ProjectTagId], [DiscountType], [DiscountValue], [ConditionType], [ConditionValue], [StartDate], [EndDate], [DiscountOrder]) VALUES (3, N'New User Discount', N'Get 10% off on your first purchase', 2, 2, 10, 2, 0, CAST(N'2023-06-21T00:00:00.000' AS DateTime), CAST(N'2023-09-30T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Discounts] ([DiscountId], [DiscountName], [DiscountDescription], [fk_ProjectTagId], [DiscountType], [DiscountValue], [ConditionType], [ConditionValue], [StartDate], [EndDate], [DiscountOrder]) VALUES (4, N'Flash Sale', N'Limited time offer with huge discounts', 1, 1, 30, 1, 200, CAST(N'2023-06-28T00:00:00.000' AS DateTime), CAST(N'2023-06-29T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Discounts] ([DiscountId], [DiscountName], [DiscountDescription], [fk_ProjectTagId], [DiscountType], [DiscountValue], [ConditionType], [ConditionValue], [StartDate], [EndDate], [DiscountOrder]) VALUES (5, N'VIP Exclusive', N'Special discounts for VIP members', 3, 1, 15, 2, 500, CAST(N'2023-06-21T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Discounts] ([DiscountId], [DiscountName], [DiscountDescription], [fk_ProjectTagId], [DiscountType], [DiscountValue], [ConditionType], [ConditionValue], [StartDate], [EndDate], [DiscountOrder]) VALUES (6, N'Clearance Sale', N'Up to 50% off on selected items', 4, 1, 50, 1, 0, CAST(N'2023-07-15T00:00:00.000' AS DateTime), CAST(N'2023-08-15T00:00:00.000' AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[Discounts] OFF
GO
SET IDENTITY_INSERT [dbo].[JobTitles] ON 

INSERT [dbo].[JobTitles] ([TitleId], [TitleName], [fk_StaffPermissions]) VALUES (3001, N'經理', 1003)
INSERT [dbo].[JobTitles] ([TitleId], [TitleName], [fk_StaffPermissions]) VALUES (3002, N'主管', 1003)
INSERT [dbo].[JobTitles] ([TitleId], [TitleName], [fk_StaffPermissions]) VALUES (3003, N'專員', 1002)
INSERT [dbo].[JobTitles] ([TitleId], [TitleName], [fk_StaffPermissions]) VALUES (3004, N'助理', 1001)
INSERT [dbo].[JobTitles] ([TitleId], [TitleName], [fk_StaffPermissions]) VALUES (3005, N'工讀生', 1001)
SET IDENTITY_INSERT [dbo].[JobTitles] OFF
GO
SET IDENTITY_INSERT [dbo].[MemberPoints] ON 

INSERT [dbo].[MemberPoints] ([MemberPointsId], [PointSubtotal], [fk_PointHistoryId], [fk_MemberId]) VALUES (801, 130, 701, 401)
INSERT [dbo].[MemberPoints] ([MemberPointsId], [PointSubtotal], [fk_PointHistoryId], [fk_MemberId]) VALUES (802, 75, 702, 403)
INSERT [dbo].[MemberPoints] ([MemberPointsId], [PointSubtotal], [fk_PointHistoryId], [fk_MemberId]) VALUES (803, 33, 705, 404)
INSERT [dbo].[MemberPoints] ([MemberPointsId], [PointSubtotal], [fk_PointHistoryId], [fk_MemberId]) VALUES (804, 1556, 703, 402)
INSERT [dbo].[MemberPoints] ([MemberPointsId], [PointSubtotal], [fk_PointHistoryId], [fk_MemberId]) VALUES (805, 63, 704, 405)
SET IDENTITY_INSERT [dbo].[MemberPoints] OFF
GO
SET IDENTITY_INSERT [dbo].[Members] ON 

INSERT [dbo].[Members] ([MemberId], [Name], [Age], [Gender], [Mobile], [Email], [Birthday], [CommonAddress], [Account], [EncryptedPassword], [Registration], [IsConfirmed], [Confirmed], [fk_LevelId], [fk_BlackListId]) VALUES (401, N'John Doe', 25, 1, N'0934567890', N'johndoe@example.com', CAST(N'1997-05-10' AS Date), N'新北市土城區學府路9號', N'johndoe123', N'123', CAST(N'2023-06-20T17:15:07.790' AS DateTime), 1, N'Confirmed', 201, NULL)
INSERT [dbo].[Members] ([MemberId], [Name], [Age], [Gender], [Mobile], [Email], [Birthday], [CommonAddress], [Account], [EncryptedPassword], [Registration], [IsConfirmed], [Confirmed], [fk_LevelId], [fk_BlackListId]) VALUES (402, N'Jane Smith', 30, 0, N'0976543210', N'janesmith@example.com', CAST(N'1992-08-15' AS Date), N'新竹市東區元化路11號', N'janesmith456', N'456', CAST(N'2023-06-20T17:15:07.790' AS DateTime), 1, N'Confirmed', 202, 101)
INSERT [dbo].[Members] ([MemberId], [Name], [Age], [Gender], [Mobile], [Email], [Birthday], [CommonAddress], [Account], [EncryptedPassword], [Registration], [IsConfirmed], [Confirmed], [fk_LevelId], [fk_BlackListId]) VALUES (403, N'Michael Johnson', 35, 1, N'0958889999', N'michaeljohnson@example.com', CAST(N'1987-03-20' AS Date), N'臺東市正氣路56號', N'mjohnson789', N'789', CAST(N'2023-06-20T17:15:07.790' AS DateTime), 1, N'Pending', 202, NULL)
INSERT [dbo].[Members] ([MemberId], [Name], [Age], [Gender], [Mobile], [Email], [Birthday], [CommonAddress], [Account], [EncryptedPassword], [Registration], [IsConfirmed], [Confirmed], [fk_LevelId], [fk_BlackListId]) VALUES (404, N'Emily Davis', 28, 0, N'0972221111', N'emilydavis@example.com', CAST(N'1993-11-05' AS Date), N'臺中市太平區中山路一段6號', N'emilyd321', N'741', CAST(N'2023-06-20T17:15:07.790' AS DateTime), 1, N'Confirmed', 201, NULL)
INSERT [dbo].[Members] ([MemberId], [Name], [Age], [Gender], [Mobile], [Email], [Birthday], [CommonAddress], [Account], [EncryptedPassword], [Registration], [IsConfirmed], [Confirmed], [fk_LevelId], [fk_BlackListId]) VALUES (405, N'David Wilson', 32, 1, N'0947778888', N'davidwilson@example.com', CAST(N'1989-07-12' AS Date), N'臺北市大安區忠孝東路三段299號', N'dwilson567', N'852', CAST(N'2023-06-20T17:15:07.790' AS DateTime), 1, N'Confirmed', 201, NULL)
SET IDENTITY_INSERT [dbo].[Members] OFF
GO
INSERT [dbo].[MembershipLevelPrivileges] ([fk_LevelId], [fk_PrivilegeId]) VALUES (201, 301)
INSERT [dbo].[MembershipLevelPrivileges] ([fk_LevelId], [fk_PrivilegeId]) VALUES (202, 301)
INSERT [dbo].[MembershipLevelPrivileges] ([fk_LevelId], [fk_PrivilegeId]) VALUES (202, 302)
INSERT [dbo].[MembershipLevelPrivileges] ([fk_LevelId], [fk_PrivilegeId]) VALUES (203, 301)
INSERT [dbo].[MembershipLevelPrivileges] ([fk_LevelId], [fk_PrivilegeId]) VALUES (203, 302)
INSERT [dbo].[MembershipLevelPrivileges] ([fk_LevelId], [fk_PrivilegeId]) VALUES (203, 303)
INSERT [dbo].[MembershipLevelPrivileges] ([fk_LevelId], [fk_PrivilegeId]) VALUES (203, 304)
GO
SET IDENTITY_INSERT [dbo].[MembershipLevels] ON 

INSERT [dbo].[MembershipLevels] ([LevelId], [LevelName], [MinSpending], [Discount], [Description]) VALUES (201, N'一般會員', N'0', 0, N'新註冊的會員自動成為基本級別會員')
INSERT [dbo].[MembershipLevels] ([LevelId], [LevelName], [MinSpending], [Discount], [Description]) VALUES (202, N'VIP', N'8888', 0, N'消費門檻達8,888即可升級')
INSERT [dbo].[MembershipLevels] ([LevelId], [LevelName], [MinSpending], [Discount], [Description]) VALUES (203, N'VVIP', N'12000', 0, N'消費門檻達12,000即可升級')
SET IDENTITY_INSERT [dbo].[MembershipLevels] OFF
GO
SET IDENTITY_INSERT [dbo].[OneToOneReservations] ON 

INSERT [dbo].[OneToOneReservations] ([ReservationId], [fk_BookerId], [ReservationStartTime], [ReservationEndTime], [fk_BranchId], [fk_ReservationSpeakerId], [fk_ReservationStatusId], [ReservationCreatedDate]) VALUES (1, 401, CAST(N'2023-06-21T09:00:00.000' AS DateTime), CAST(N'2023-06-21T11:00:00.000' AS DateTime), 1, 1, 0, CAST(N'2023-06-21T12:12:18.357' AS DateTime))
INSERT [dbo].[OneToOneReservations] ([ReservationId], [fk_BookerId], [ReservationStartTime], [ReservationEndTime], [fk_BranchId], [fk_ReservationSpeakerId], [fk_ReservationStatusId], [ReservationCreatedDate]) VALUES (2, 402, CAST(N'2023-06-22T14:00:00.000' AS DateTime), CAST(N'2023-06-22T16:00:00.000' AS DateTime), 3, 3, 1, CAST(N'2023-06-21T12:12:18.357' AS DateTime))
INSERT [dbo].[OneToOneReservations] ([ReservationId], [fk_BookerId], [ReservationStartTime], [ReservationEndTime], [fk_BranchId], [fk_ReservationSpeakerId], [fk_ReservationStatusId], [ReservationCreatedDate]) VALUES (3, 403, CAST(N'2023-06-23T11:00:00.000' AS DateTime), CAST(N'2023-06-23T13:00:00.000' AS DateTime), 2, 2, 1, CAST(N'2023-06-21T12:12:18.357' AS DateTime))
INSERT [dbo].[OneToOneReservations] ([ReservationId], [fk_BookerId], [ReservationStartTime], [ReservationEndTime], [fk_BranchId], [fk_ReservationSpeakerId], [fk_ReservationStatusId], [ReservationCreatedDate]) VALUES (4, 404, CAST(N'2023-06-24T16:00:00.000' AS DateTime), CAST(N'2023-06-24T18:00:00.000' AS DateTime), 5, 5, 0, CAST(N'2023-06-21T12:12:18.357' AS DateTime))
INSERT [dbo].[OneToOneReservations] ([ReservationId], [fk_BookerId], [ReservationStartTime], [ReservationEndTime], [fk_BranchId], [fk_ReservationSpeakerId], [fk_ReservationStatusId], [ReservationCreatedDate]) VALUES (5, 405, CAST(N'2023-06-25T13:00:00.000' AS DateTime), CAST(N'2023-06-25T14:00:00.000' AS DateTime), 4, 4, 0, CAST(N'2023-06-21T12:12:18.357' AS DateTime))
INSERT [dbo].[OneToOneReservations] ([ReservationId], [fk_BookerId], [ReservationStartTime], [ReservationEndTime], [fk_BranchId], [fk_ReservationSpeakerId], [fk_ReservationStatusId], [ReservationCreatedDate]) VALUES (6, 403, CAST(N'2023-06-26T10:00:00.000' AS DateTime), CAST(N'2023-06-26T12:00:00.000' AS DateTime), 6, 6, 1, CAST(N'2023-06-21T12:12:18.357' AS DateTime))
INSERT [dbo].[OneToOneReservations] ([ReservationId], [fk_BookerId], [ReservationStartTime], [ReservationEndTime], [fk_BranchId], [fk_ReservationSpeakerId], [fk_ReservationStatusId], [ReservationCreatedDate]) VALUES (7, 402, CAST(N'2023-06-27T15:00:00.000' AS DateTime), CAST(N'2023-06-27T17:00:00.000' AS DateTime), 1, 1, 0, CAST(N'2023-06-21T12:12:18.357' AS DateTime))
INSERT [dbo].[OneToOneReservations] ([ReservationId], [fk_BookerId], [ReservationStartTime], [ReservationEndTime], [fk_BranchId], [fk_ReservationSpeakerId], [fk_ReservationStatusId], [ReservationCreatedDate]) VALUES (8, 401, CAST(N'2023-06-28T13:00:00.000' AS DateTime), CAST(N'2023-06-28T15:00:00.000' AS DateTime), 3, 3, 1, CAST(N'2023-06-21T12:12:18.357' AS DateTime))
INSERT [dbo].[OneToOneReservations] ([ReservationId], [fk_BookerId], [ReservationStartTime], [ReservationEndTime], [fk_BranchId], [fk_ReservationSpeakerId], [fk_ReservationStatusId], [ReservationCreatedDate]) VALUES (9, 405, CAST(N'2023-06-29T12:00:00.000' AS DateTime), CAST(N'2023-06-29T14:00:00.000' AS DateTime), 2, 2, 1, CAST(N'2023-06-21T12:12:18.357' AS DateTime))
INSERT [dbo].[OneToOneReservations] ([ReservationId], [fk_BookerId], [ReservationStartTime], [ReservationEndTime], [fk_BranchId], [fk_ReservationSpeakerId], [fk_ReservationStatusId], [ReservationCreatedDate]) VALUES (10, 404, CAST(N'2023-06-30T17:00:00.000' AS DateTime), CAST(N'2023-06-30T19:00:00.000' AS DateTime), 7, 7, 0, CAST(N'2023-06-21T12:12:18.357' AS DateTime))
SET IDENTITY_INSERT [dbo].[OneToOneReservations] OFF
GO
SET IDENTITY_INSERT [dbo].[PointCategories] ON 

INSERT [dbo].[PointCategories] ([PointCategoryId], [PointCategoryName]) VALUES (802, N'活動')
INSERT [dbo].[PointCategories] ([PointCategoryId], [PointCategoryName]) VALUES (801, N'購物')
SET IDENTITY_INSERT [dbo].[PointCategories] OFF
GO
SET IDENTITY_INSERT [dbo].[PointHistories] ON 

INSERT [dbo].[PointHistories] ([PointHistoryId], [GetOrDeduct], [UsageAmount], [EffectiveDate], [fk_MemberId], [fk_OrderId], [OrderName], [fk_PointCategoryId]) VALUES (701, 1, 300, CAST(N'2023-06-20T17:17:02.860' AS DateTime), 401, NULL, NULL, 801)
INSERT [dbo].[PointHistories] ([PointHistoryId], [GetOrDeduct], [UsageAmount], [EffectiveDate], [fk_MemberId], [fk_OrderId], [OrderName], [fk_PointCategoryId]) VALUES (702, 0, 11, CAST(N'2023-06-20T17:17:02.860' AS DateTime), 403, NULL, NULL, 801)
INSERT [dbo].[PointHistories] ([PointHistoryId], [GetOrDeduct], [UsageAmount], [EffectiveDate], [fk_MemberId], [fk_OrderId], [OrderName], [fk_PointCategoryId]) VALUES (703, 1, 2, CAST(N'2023-06-20T17:17:02.860' AS DateTime), 403, NULL, NULL, 802)
INSERT [dbo].[PointHistories] ([PointHistoryId], [GetOrDeduct], [UsageAmount], [EffectiveDate], [fk_MemberId], [fk_OrderId], [OrderName], [fk_PointCategoryId]) VALUES (704, 1, 56, CAST(N'2023-06-20T17:17:02.860' AS DateTime), 405, NULL, NULL, 802)
INSERT [dbo].[PointHistories] ([PointHistoryId], [GetOrDeduct], [UsageAmount], [EffectiveDate], [fk_MemberId], [fk_OrderId], [OrderName], [fk_PointCategoryId]) VALUES (705, 1, 44, CAST(N'2023-06-20T17:17:02.860' AS DateTime), 405, NULL, NULL, 801)
SET IDENTITY_INSERT [dbo].[PointHistories] OFF
GO
SET IDENTITY_INSERT [dbo].[Privileges] ON 

INSERT [dbo].[Privileges] ([PrivilegeId], [PrivilegeName], [Description]) VALUES (301, N'生日優惠', N'根據會員的生日提供獨家優惠和禮物')
INSERT [dbo].[Privileges] ([PrivilegeId], [PrivilegeName], [Description]) VALUES (302, N'專屬活動', N'邀請特定等級的會員參加線上或線下的活動')
INSERT [dbo].[Privileges] ([PrivilegeId], [PrivilegeName], [Description]) VALUES (303, N'訪問新品', N'新品推出優先讓VVIP會員購買')
INSERT [dbo].[Privileges] ([PrivilegeId], [PrivilegeName], [Description]) VALUES (304, N'限量商品', N'限量商品僅限VVIP會員購買')
SET IDENTITY_INSERT [dbo].[Privileges] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductCategories] ON 

INSERT [dbo].[ProductCategories] ([ProductCategoryId], [ProductCategoryName], [fk_SalesCategoryId], [CategoryPath]) VALUES (1, N'上衣', 1, N'男裝/上衣')
INSERT [dbo].[ProductCategories] ([ProductCategoryId], [ProductCategoryName], [fk_SalesCategoryId], [CategoryPath]) VALUES (2, N'上衣', 2, N'女裝/上衣')
INSERT [dbo].[ProductCategories] ([ProductCategoryId], [ProductCategoryName], [fk_SalesCategoryId], [CategoryPath]) VALUES (3, N'上衣', 3, N'童裝/上衣')
INSERT [dbo].[ProductCategories] ([ProductCategoryId], [ProductCategoryName], [fk_SalesCategoryId], [CategoryPath]) VALUES (4, N'褲子', 1, N'男裝/褲子')
INSERT [dbo].[ProductCategories] ([ProductCategoryId], [ProductCategoryName], [fk_SalesCategoryId], [CategoryPath]) VALUES (5, N'褲子', 2, N'女裝/褲子')
INSERT [dbo].[ProductCategories] ([ProductCategoryId], [ProductCategoryName], [fk_SalesCategoryId], [CategoryPath]) VALUES (6, N'褲子', 3, N'童裝/褲子')
INSERT [dbo].[ProductCategories] ([ProductCategoryId], [ProductCategoryName], [fk_SalesCategoryId], [CategoryPath]) VALUES (7, N'鞋子', 1, N'男裝/鞋子')
INSERT [dbo].[ProductCategories] ([ProductCategoryId], [ProductCategoryName], [fk_SalesCategoryId], [CategoryPath]) VALUES (8, N'鞋子', 2, N'女裝/鞋子')
INSERT [dbo].[ProductCategories] ([ProductCategoryId], [ProductCategoryName], [fk_SalesCategoryId], [CategoryPath]) VALUES (9, N'鞋子', 3, N'童裝/鞋子')
INSERT [dbo].[ProductCategories] ([ProductCategoryId], [ProductCategoryName], [fk_SalesCategoryId], [CategoryPath]) VALUES (10, N'配件', 1, N'男裝/配件')
INSERT [dbo].[ProductCategories] ([ProductCategoryId], [ProductCategoryName], [fk_SalesCategoryId], [CategoryPath]) VALUES (11, N'配件', 2, N'女裝/配件')
INSERT [dbo].[ProductCategories] ([ProductCategoryId], [ProductCategoryName], [fk_SalesCategoryId], [CategoryPath]) VALUES (12, N'配件', 3, N'童裝/配件')
SET IDENTITY_INSERT [dbo].[ProductCategories] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductGroups] ON 

INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1000, N'M_CL_ST_0001', 1, 1, 100)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1001, N'M_CL_ST_0001', 1, 2, 200)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1002, N'M_CL_ST_0001', 1, 3, 80)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1003, N'M_CL_ST_0001', 1, 4, 110)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1004, N'M_CL_ST_0001', 2, 1, 120)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1005, N'M_CL_ST_0001', 2, 2, 900)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1006, N'M_CL_ST_0001', 2, 3, 220)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1007, N'M_CL_ST_0001', 2, 4, 50)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1008, N'M_CL_ST_0002', 3, 1, 220)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1009, N'M_CL_ST_0002', 3, 2, 100)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1010, N'M_CL_ST_0002', 3, 3, 80)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1011, N'M_CL_ST_0002', 3, 4, 130)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1012, N'M_CL_ST_0002', 4, 1, 190)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1013, N'M_CL_ST_0002', 4, 2, 300)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1014, N'M_CL_ST_0002', 4, 3, 220)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1015, N'M_CL_ST_0002', 4, 4, 50)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1016, N'F_CL_ST_0001', 2, 1, 220)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1017, N'F_CL_ST_0001', 2, 2, 100)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1018, N'F_CL_ST_0001', 2, 3, 80)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1019, N'F_CL_ST_0001', 2, 4, 130)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1020, N'F_CL_ST_0001', 2, 5, 30)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1021, N'F_CL_ST_0001', 6, 1, 190)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1022, N'F_CL_ST_0001', 6, 2, 300)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1023, N'F_CL_ST_0001', 6, 3, 220)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1024, N'F_CL_ST_0001', 6, 4, 50)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1025, N'F_CL_ST_0001', 6, 5, 30)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1026, N'F_CL_ST_0002', 3, 1, 220)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1027, N'F_CL_ST_0002', 3, 2, 100)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1028, N'F_CL_ST_0002', 3, 3, 80)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1029, N'F_CL_ST_0002', 3, 4, 130)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1030, N'F_CL_ST_0002', 3, 5, 30)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1031, N'F_CL_ST_0002', 5, 1, 190)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1032, N'F_CL_ST_0002', 5, 2, 300)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1033, N'F_CL_ST_0002', 5, 3, 220)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1034, N'F_CL_ST_0002', 5, 4, 50)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1035, N'F_CL_ST_0002', 5, 5, 30)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1036, N'C_CL_ST_0001', 1, 1, 220)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1037, N'C_CL_ST_0001', 1, 2, 100)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1038, N'C_CL_ST_0001', 1, 3, 80)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1039, N'C_CL_ST_0001', 1, 4, 130)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1040, N'C_CL_ST_0001', 1, 5, 30)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1041, N'C_CL_ST_0001', 2, 1, 190)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1042, N'C_CL_ST_0001', 2, 2, 300)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1043, N'C_CL_ST_0001', 2, 3, 220)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1044, N'C_CL_ST_0001', 2, 4, 50)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1045, N'C_CL_ST_0001', 2, 5, 30)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1046, N'C_CL_ST_0002', 1, 1, 220)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1047, N'C_CL_ST_0002', 1, 2, 100)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1048, N'C_CL_ST_0002', 1, 3, 80)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1049, N'C_CL_ST_0002', 1, 4, 130)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1050, N'C_CL_ST_0002', 1, 5, 30)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1051, N'C_CL_ST_0002', 3, 1, 190)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1052, N'C_CL_ST_0002', 3, 2, 300)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1053, N'C_CL_ST_0002', 3, 3, 220)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1054, N'C_CL_ST_0002', 3, 4, 50)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1055, N'M_CL_LG_0001', 2, 1, 220)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1056, N'M_CL_LG_0001', 2, 2, 100)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1057, N'M_CL_LG_0001', 2, 3, 80)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1058, N'M_CL_LG_0001', 2, 4, 130)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1059, N'M_CL_LG_0001', 2, 5, 30)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1060, N'M_CL_LG_0001', 3, 1, 190)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1061, N'M_CL_LG_0001', 3, 2, 300)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1062, N'M_CL_LG_0001', 3, 3, 220)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1063, N'M_CL_LG_0001', 3, 4, 50)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1064, N'M_CL_LG_0002', 4, 1, 0)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1065, N'M_CL_LG_0002', 4, 2, 0)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1066, N'M_CL_LG_0002', 4, 3, 0)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1067, N'M_CL_LG_0002', 4, 4, 0)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1068, N'M_CL_LG_0002', 4, 5, 0)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1069, N'M_CL_LG_0002', 5, 1, 0)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1070, N'M_CL_LG_0002', 5, 2, 0)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1071, N'M_CL_LG_0002', 5, 3, 0)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1072, N'M_CL_LG_0002', 5, 4, 0)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1073, N'F_CL_LG_0001', 1, 1, 220)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1074, N'F_CL_LG_0001', 1, 2, 100)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1075, N'F_CL_LG_0001', 1, 3, 80)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1076, N'F_CL_LG_0001', 1, 4, 130)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1077, N'F_CL_LG_0001', 1, 5, 30)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1078, N'F_CL_LG_0001', 2, 1, 190)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1079, N'F_CL_LG_0001', 2, 2, 300)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1080, N'F_CL_LG_0001', 2, 3, 220)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1081, N'F_CL_LG_0001', 2, 4, 50)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1082, N'F_CL_LG_0002', 1, 1, 220)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1083, N'F_CL_LG_0002', 1, 2, 100)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1084, N'F_CL_LG_0002', 1, 3, 80)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1085, N'F_CL_LG_0002', 1, 4, 130)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1086, N'F_CL_LG_0002', 1, 5, 30)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1087, N'F_CL_LG_0002', 3, 1, 190)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1088, N'F_CL_LG_0002', 3, 2, 300)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1089, N'F_CL_LG_0002', 3, 3, 220)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1090, N'F_CL_LG_0002', 3, 4, 50)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1091, N'C_CL_LG_0001', 1, 1, 220)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1092, N'C_CL_LG_0001', 1, 2, 100)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1093, N'C_CL_LG_0001', 1, 3, 80)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1094, N'C_CL_LG_0001', 1, 4, 130)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1095, N'C_CL_LG_0001', 1, 5, 30)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1096, N'C_CL_LG_0002', 1, 1, 220)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1097, N'C_CL_LG_0002', 1, 2, 100)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1098, N'C_CL_LG_0002', 1, 3, 80)
GO
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1099, N'C_CL_LG_0002', 1, 4, 130)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1100, N'C_CL_LG_0002', 1, 5, 30)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1101, N'M_PA_ST_0001', 1, 1, 100)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1102, N'M_PA_ST_0001', 1, 2, 200)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1103, N'M_PA_ST_0001', 1, 3, 80)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1104, N'M_PA_ST_0001', 1, 4, 110)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1105, N'M_PA_ST_0001', 2, 1, 120)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1106, N'M_PA_ST_0001', 2, 2, 900)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1107, N'M_PA_ST_0001', 2, 3, 220)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1108, N'M_PA_ST_0001', 2, 4, 50)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1109, N'M_PA_ST_0002', 3, 1, 220)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1110, N'M_PA_ST_0002', 3, 2, 100)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1111, N'M_PA_ST_0002', 3, 3, 80)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1112, N'M_PA_ST_0002', 3, 4, 130)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1113, N'M_PA_ST_0002', 4, 1, 190)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1114, N'M_PA_ST_0002', 4, 2, 300)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1115, N'M_PA_ST_0002', 4, 3, 220)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1116, N'M_PA_ST_0002', 4, 4, 50)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1117, N'F_PA_ST_0001', 2, 1, 220)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1118, N'F_PA_ST_0001', 2, 2, 100)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1119, N'F_PA_ST_0001', 2, 3, 80)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1120, N'F_PA_ST_0001', 2, 4, 130)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1121, N'F_PA_ST_0001', 2, 5, 30)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1122, N'F_PA_ST_0001', 6, 1, 190)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1123, N'F_PA_ST_0001', 6, 2, 300)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1124, N'F_PA_ST_0001', 6, 3, 220)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1125, N'F_PA_ST_0001', 6, 4, 50)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1126, N'F_PA_ST_0001', 6, 5, 30)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1127, N'F_PA_ST_0002', 3, 1, 220)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1128, N'F_PA_ST_0002', 3, 2, 100)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1129, N'F_PA_ST_0002', 3, 3, 80)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1130, N'F_PA_ST_0002', 3, 4, 130)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1131, N'F_PA_ST_0002', 3, 5, 30)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1132, N'F_PA_ST_0002', 5, 1, 190)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1133, N'F_PA_ST_0002', 5, 2, 300)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1134, N'F_PA_ST_0002', 5, 3, 220)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1135, N'F_PA_ST_0002', 5, 4, 50)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1136, N'F_PA_ST_0002', 5, 5, 30)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1137, N'C_PA_ST_0001', 1, 1, 220)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1138, N'C_PA_ST_0001', 1, 2, 100)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1139, N'C_PA_ST_0001', 1, 3, 80)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1140, N'C_PA_ST_0001', 1, 4, 130)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1141, N'C_PA_ST_0001', 1, 5, 30)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1142, N'C_PA_ST_0001', 2, 1, 190)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1143, N'C_PA_ST_0001', 2, 2, 300)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1144, N'C_PA_ST_0001', 2, 3, 220)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1145, N'C_PA_ST_0001', 2, 4, 50)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1146, N'C_PA_ST_0001', 2, 5, 30)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1147, N'C_PA_ST_0002', 1, 1, 220)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1148, N'C_PA_ST_0002', 1, 2, 100)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1149, N'C_PA_ST_0002', 1, 3, 80)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1150, N'C_PA_ST_0002', 1, 4, 130)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1151, N'C_PA_ST_0002', 1, 5, 30)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1152, N'C_PA_ST_0002', 3, 1, 190)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1153, N'C_PA_ST_0002', 3, 2, 300)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1154, N'C_PA_ST_0002', 3, 3, 220)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1155, N'C_PA_ST_0002', 3, 4, 50)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1156, N'M_PA_LG_0001', 1, 1, 100)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1157, N'M_PA_LG_0001', 1, 2, 200)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1158, N'M_PA_LG_0001', 1, 3, 80)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1159, N'M_PA_LG_0001', 1, 4, 110)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1160, N'M_PA_LG_0001', 2, 1, 120)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1161, N'M_PA_LG_0001', 2, 2, 900)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1162, N'M_PA_LG_0001', 2, 3, 220)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1163, N'M_PA_LG_0001', 2, 4, 50)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1164, N'M_PA_LG_0002', 3, 1, 220)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1165, N'M_PA_LG_0002', 3, 2, 100)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1166, N'M_PA_LG_0002', 3, 3, 80)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1167, N'M_PA_LG_0002', 3, 4, 130)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1168, N'M_PA_LG_0002', 4, 1, 190)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1169, N'M_PA_LG_0002', 4, 2, 300)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1170, N'M_PA_LG_0002', 4, 3, 220)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1171, N'M_PA_LG_0002', 4, 4, 50)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1172, N'F_PA_LG_0001', 2, 1, 220)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1173, N'F_PA_LG_0001', 2, 2, 100)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1174, N'F_PA_LG_0001', 2, 3, 80)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1175, N'F_PA_LG_0001', 2, 4, 130)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1176, N'F_PA_LG_0001', 2, 5, 30)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1177, N'F_PA_LG_0001', 6, 1, 190)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1178, N'F_PA_LG_0001', 6, 2, 300)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1179, N'F_PA_LG_0001', 6, 3, 220)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1180, N'F_PA_LG_0001', 6, 4, 50)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1181, N'F_PA_LG_0001', 6, 5, 30)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1182, N'F_PA_LG_0002', 3, 1, 220)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1183, N'F_PA_LG_0002', 3, 2, 100)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1184, N'F_PA_LG_0002', 3, 3, 80)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1185, N'F_PA_LG_0002', 3, 4, 130)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1186, N'F_PA_LG_0002', 3, 5, 30)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1187, N'F_PA_LG_0002', 5, 1, 190)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1188, N'F_PA_LG_0002', 5, 2, 300)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1189, N'F_PA_LG_0002', 5, 3, 220)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1190, N'F_PA_LG_0002', 5, 4, 50)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1191, N'F_PA_LG_0002', 5, 5, 30)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1192, N'C_PA_LG_0001', 1, 1, 220)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1193, N'C_PA_LG_0001', 1, 2, 100)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1194, N'C_PA_LG_0001', 1, 3, 80)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1195, N'C_PA_LG_0001', 1, 4, 130)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1196, N'C_PA_LG_0001', 1, 5, 30)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1197, N'C_PA_LG_0001', 2, 1, 190)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1198, N'C_PA_LG_0001', 2, 2, 300)
GO
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1199, N'C_PA_LG_0001', 2, 3, 220)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1200, N'C_PA_LG_0001', 2, 4, 50)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1201, N'C_PA_LG_0001', 2, 5, 30)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1202, N'C_PA_LG_0002', 1, 1, 220)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1203, N'C_PA_LG_0002', 1, 2, 100)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1204, N'C_PA_LG_0002', 1, 3, 80)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1205, N'C_PA_LG_0002', 1, 4, 130)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1206, N'C_PA_LG_0002', 1, 5, 30)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1207, N'C_PA_LG_0002', 3, 1, 190)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1208, N'C_PA_LG_0002', 3, 2, 300)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1209, N'C_PA_LG_0002', 3, 3, 220)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1210, N'C_PA_LG_0002', 3, 4, 50)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1211, N'M_SH_CL_0001', 1, 28, 100)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1212, N'M_SH_CL_0001', 1, 29, 200)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1213, N'M_SH_CL_0001', 1, 30, 80)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1214, N'M_SH_CL_0001', 1, 31, 110)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1215, N'M_SH_CL_0001', 1, 32, 110)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1216, N'M_SH_CL_0001', 2, 28, 120)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1217, N'M_SH_CL_0001', 2, 29, 900)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1218, N'M_SH_CL_0001', 2, 30, 220)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1219, N'M_SH_CL_0001', 2, 31, 100)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1220, N'M_SH_CL_0001', 2, 32, 50)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1221, N'M_SH_CL_0002', 3, 28, 220)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1222, N'M_SH_CL_0002', 3, 29, 100)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1223, N'M_SH_CL_0002', 3, 30, 80)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1224, N'M_SH_CL_0002', 3, 31, 130)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1225, N'M_SH_CL_0002', 4, 28, 190)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1226, N'M_SH_CL_0002', 4, 29, 300)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1227, N'M_SH_CL_0002', 4, 30, 220)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1228, N'M_SH_CL_0002', 4, 31, 50)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1229, N'F_SH_CL_0001', 2, 20, 220)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1230, N'F_SH_CL_0001', 2, 21, 100)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1231, N'F_SH_CL_0001', 2, 22, 80)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1232, N'F_SH_CL_0001', 2, 23, 130)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1233, N'F_SH_CL_0001', 2, 24, 30)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1234, N'F_SH_CL_0001', 6, 20, 190)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1235, N'F_SH_CL_0001', 6, 21, 300)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1236, N'F_SH_CL_0001', 6, 22, 220)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1237, N'F_SH_CL_0001', 6, 23, 50)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1238, N'F_SH_CL_0001', 6, 24, 30)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1239, N'F_SH_CL_0002', 1, 20, 220)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1240, N'F_SH_CL_0002', 1, 21, 100)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1241, N'F_SH_CL_0002', 1, 22, 80)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1242, N'F_SH_CL_0002', 1, 23, 130)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1243, N'F_SH_CL_0002', 1, 24, 30)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1244, N'F_SH_CL_0002', 2, 20, 190)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1245, N'F_SH_CL_0002', 2, 21, 300)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1246, N'F_SH_CL_0002', 2, 22, 220)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1247, N'F_SH_CL_0002', 2, 23, 50)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1248, N'F_SH_CL_0002', 2, 24, 30)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1249, N'C_SH_CL_0001', 1, 8, 220)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1250, N'C_SH_CL_0001', 1, 9, 100)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1251, N'C_SH_CL_0001', 1, 10, 80)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1252, N'C_SH_CL_0001', 1, 11, 130)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1253, N'C_SH_CL_0001', 1, 12, 30)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1254, N'C_SH_CL_0001', 2, 8, 190)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1255, N'C_SH_CL_0001', 2, 9, 300)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1256, N'C_SH_CL_0001', 2, 10, 220)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1257, N'C_SH_CL_0001', 2, 11, 50)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1258, N'C_SH_CL_0001', 2, 12, 30)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1259, N'C_SH_CL_0002', 1, 8, 220)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1260, N'C_SH_CL_0002', 1, 9, 100)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1261, N'C_SH_CL_0002', 1, 10, 80)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1262, N'C_SH_CL_0002', 1, 11, 130)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1263, N'C_SH_CL_0002', 1, 12, 30)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1264, N'C_SH_CL_0002', 3, 8, 190)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1265, N'C_SH_CL_0002', 3, 9, 300)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1266, N'C_SH_CL_0002', 3, 10, 220)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1267, N'C_SH_CL_0002', 3, 11, 50)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1268, N'C_SH_CL_0002', 3, 12, 50)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1269, N'M_SH_SP_0001', 1, 28, 100)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1270, N'M_SH_SP_0001', 1, 29, 200)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1271, N'M_SH_SP_0001', 1, 30, 80)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1272, N'M_SH_SP_0001', 1, 31, 110)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1273, N'M_SH_SP_0001', 1, 32, 110)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1274, N'M_SH_SP_0001', 2, 28, 120)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1275, N'M_SH_SP_0001', 2, 29, 900)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1276, N'M_SH_SP_0001', 2, 30, 220)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1277, N'M_SH_SP_0001', 2, 31, 100)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1278, N'M_SH_SP_0001', 2, 32, 50)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1279, N'M_SH_SP_0002', 3, 28, 220)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1280, N'M_SH_SP_0002', 3, 29, 100)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1281, N'M_SH_SP_0002', 3, 30, 80)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1282, N'M_SH_SP_0002', 3, 31, 130)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1283, N'M_SH_SP_0002', 4, 28, 190)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1284, N'M_SH_SP_0002', 4, 29, 300)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1285, N'M_SH_SP_0002', 4, 30, 220)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1286, N'M_SH_SP_0002', 4, 31, 50)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1287, N'F_SH_SP_0001', 2, 20, 220)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1288, N'F_SH_SP_0001', 2, 21, 100)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1289, N'F_SH_SP_0001', 2, 22, 80)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1290, N'F_SH_SP_0001', 2, 23, 130)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1291, N'F_SH_SP_0001', 2, 24, 30)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1292, N'F_SH_SP_0001', 6, 20, 190)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1293, N'F_SH_SP_0001', 6, 21, 300)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1294, N'F_SH_SP_0001', 6, 22, 220)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1295, N'F_SH_SP_0001', 6, 23, 50)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1296, N'F_SH_SP_0001', 6, 24, 30)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1297, N'F_SH_SP_0002', 1, 20, 220)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1298, N'F_SH_SP_0002', 1, 21, 100)
GO
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1299, N'F_SH_SP_0002', 1, 22, 80)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1300, N'F_SH_SP_0002', 1, 23, 130)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1301, N'F_SH_SP_0002', 1, 24, 30)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1302, N'F_SH_SP_0002', 2, 20, 190)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1303, N'F_SH_SP_0002', 2, 21, 300)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1304, N'F_SH_SP_0002', 2, 22, 220)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1305, N'F_SH_SP_0002', 2, 23, 50)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1306, N'F_SH_SP_0002', 2, 24, 30)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1307, N'C_SH_SP_0001', 1, 8, 220)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1308, N'C_SH_SP_0001', 1, 9, 100)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1309, N'C_SH_SP_0001', 1, 10, 80)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1310, N'C_SH_SP_0001', 1, 11, 130)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1311, N'C_SH_SP_0001', 1, 12, 30)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1312, N'C_SH_SP_0001', 2, 8, 190)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1313, N'C_SH_SP_0001', 2, 9, 300)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1314, N'C_SH_SP_0001', 2, 10, 220)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1315, N'C_SH_SP_0001', 2, 11, 50)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1316, N'C_SH_SP_0001', 2, 12, 30)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1317, N'C_SH_SP_0002', 1, 8, 220)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1318, N'C_SH_SP_0002', 1, 9, 100)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1319, N'C_SH_SP_0002', 1, 10, 80)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1320, N'C_SH_SP_0002', 1, 11, 130)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1321, N'C_SH_SP_0002', 1, 12, 30)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1322, N'C_SH_SP_0002', 3, 8, 190)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1323, N'C_SH_SP_0002', 3, 9, 300)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1324, N'C_SH_SP_0002', 3, 10, 220)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1325, N'C_SH_SP_0002', 3, 11, 50)
INSERT [dbo].[ProductGroups] ([ProductGroupId], [fk_ProductId], [fk_ColorId], [fk_SizeID], [Qty]) VALUES (1326, N'C_SH_SP_0002', 3, 12, 50)
SET IDENTITY_INSERT [dbo].[ProductGroups] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductImgs] ON 

INSERT [dbo].[ProductImgs] ([ProductImgId], [fk_ProductId], [ImgPath]) VALUES (1, N'M_CL_ST_0001', N'Product_0011.jpg')
INSERT [dbo].[ProductImgs] ([ProductImgId], [fk_ProductId], [ImgPath]) VALUES (2, N'M_CL_ST_0001', N'Product_0012.jpg')
INSERT [dbo].[ProductImgs] ([ProductImgId], [fk_ProductId], [ImgPath]) VALUES (3, N'M_CL_ST_0001', N'Product_0013.jpg')
INSERT [dbo].[ProductImgs] ([ProductImgId], [fk_ProductId], [ImgPath]) VALUES (4, N'M_CL_ST_0001', N'Product_0014.jpg')
INSERT [dbo].[ProductImgs] ([ProductImgId], [fk_ProductId], [ImgPath]) VALUES (5, N'M_CL_ST_0001', N'Product_0015.jpg')
INSERT [dbo].[ProductImgs] ([ProductImgId], [fk_ProductId], [ImgPath]) VALUES (6, N'M_CL_ST_0001', N'Product_0016.jpg')
INSERT [dbo].[ProductImgs] ([ProductImgId], [fk_ProductId], [ImgPath]) VALUES (7, N'M_CL_ST_0002', N'Product_0021.jpg')
INSERT [dbo].[ProductImgs] ([ProductImgId], [fk_ProductId], [ImgPath]) VALUES (8, N'M_CL_ST_0002', N'Product_0022.jpg')
INSERT [dbo].[ProductImgs] ([ProductImgId], [fk_ProductId], [ImgPath]) VALUES (9, N'M_CL_ST_0002', N'Product_0023.jpg')
INSERT [dbo].[ProductImgs] ([ProductImgId], [fk_ProductId], [ImgPath]) VALUES (10, N'M_CL_ST_0002', N'Product_0024.jpg')
INSERT [dbo].[ProductImgs] ([ProductImgId], [fk_ProductId], [ImgPath]) VALUES (11, N'M_CL_ST_0002', N'Product_0025.jpg')
INSERT [dbo].[ProductImgs] ([ProductImgId], [fk_ProductId], [ImgPath]) VALUES (12, N'M_CL_ST_0002', N'Product_0026.jpg')
INSERT [dbo].[ProductImgs] ([ProductImgId], [fk_ProductId], [ImgPath]) VALUES (13, N'F_CL_ST_0001', N'Product_0031.jpg')
INSERT [dbo].[ProductImgs] ([ProductImgId], [fk_ProductId], [ImgPath]) VALUES (14, N'F_CL_ST_0001', N'Product_0032.jpg')
INSERT [dbo].[ProductImgs] ([ProductImgId], [fk_ProductId], [ImgPath]) VALUES (15, N'F_CL_ST_0001', N'Product_0033.jpg')
INSERT [dbo].[ProductImgs] ([ProductImgId], [fk_ProductId], [ImgPath]) VALUES (16, N'F_CL_ST_0001', N'Product_0034.jpg')
INSERT [dbo].[ProductImgs] ([ProductImgId], [fk_ProductId], [ImgPath]) VALUES (17, N'F_CL_ST_0001', N'Product_0035.jpg')
INSERT [dbo].[ProductImgs] ([ProductImgId], [fk_ProductId], [ImgPath]) VALUES (18, N'F_CL_ST_0001', N'Product_0036.jpg')
INSERT [dbo].[ProductImgs] ([ProductImgId], [fk_ProductId], [ImgPath]) VALUES (19, N'F_CL_ST_0002', N'Product_0041.jpg')
INSERT [dbo].[ProductImgs] ([ProductImgId], [fk_ProductId], [ImgPath]) VALUES (20, N'F_CL_ST_0002', N'Product_0042.jpg')
INSERT [dbo].[ProductImgs] ([ProductImgId], [fk_ProductId], [ImgPath]) VALUES (21, N'F_CL_ST_0002', N'Product_0043.jpg')
INSERT [dbo].[ProductImgs] ([ProductImgId], [fk_ProductId], [ImgPath]) VALUES (22, N'F_CL_ST_0002', N'Product_0044.jpg')
INSERT [dbo].[ProductImgs] ([ProductImgId], [fk_ProductId], [ImgPath]) VALUES (23, N'F_CL_ST_0002', N'Product_0045.jpg')
INSERT [dbo].[ProductImgs] ([ProductImgId], [fk_ProductId], [ImgPath]) VALUES (24, N'F_CL_ST_0002', N'Product_0046.jpg')
INSERT [dbo].[ProductImgs] ([ProductImgId], [fk_ProductId], [ImgPath]) VALUES (25, N'C_CL_ST_0001', N'Product_0051.jpg')
INSERT [dbo].[ProductImgs] ([ProductImgId], [fk_ProductId], [ImgPath]) VALUES (26, N'C_CL_ST_0001', N'Product_0052.jpg')
INSERT [dbo].[ProductImgs] ([ProductImgId], [fk_ProductId], [ImgPath]) VALUES (27, N'C_CL_ST_0001', N'Product_0053.jpg')
INSERT [dbo].[ProductImgs] ([ProductImgId], [fk_ProductId], [ImgPath]) VALUES (28, N'C_CL_ST_0001', N'Product_0054.jpg')
INSERT [dbo].[ProductImgs] ([ProductImgId], [fk_ProductId], [ImgPath]) VALUES (29, N'C_CL_ST_0001', N'Product_0055.jpg')
INSERT [dbo].[ProductImgs] ([ProductImgId], [fk_ProductId], [ImgPath]) VALUES (30, N'C_CL_ST_0001', N'Product_0056.jpg')
INSERT [dbo].[ProductImgs] ([ProductImgId], [fk_ProductId], [ImgPath]) VALUES (31, N'C_CL_ST_0002', N'Product_0061.jpg')
INSERT [dbo].[ProductImgs] ([ProductImgId], [fk_ProductId], [ImgPath]) VALUES (32, N'C_CL_ST_0002', N'Product_0062.jpg')
INSERT [dbo].[ProductImgs] ([ProductImgId], [fk_ProductId], [ImgPath]) VALUES (33, N'C_CL_ST_0002', N'Product_0063.jpg')
INSERT [dbo].[ProductImgs] ([ProductImgId], [fk_ProductId], [ImgPath]) VALUES (34, N'C_CL_ST_0002', N'Product_0064.jpg')
INSERT [dbo].[ProductImgs] ([ProductImgId], [fk_ProductId], [ImgPath]) VALUES (35, N'C_CL_ST_0002', N'Product_0065.jpg')
INSERT [dbo].[ProductImgs] ([ProductImgId], [fk_ProductId], [ImgPath]) VALUES (36, N'C_CL_ST_0002', N'Product_0066.jpg')
INSERT [dbo].[ProductImgs] ([ProductImgId], [fk_ProductId], [ImgPath]) VALUES (37, N'M_CL_LG_0001', N'Product_0071.jpg')
INSERT [dbo].[ProductImgs] ([ProductImgId], [fk_ProductId], [ImgPath]) VALUES (38, N'M_CL_LG_0001', N'Product_0072.jpg')
INSERT [dbo].[ProductImgs] ([ProductImgId], [fk_ProductId], [ImgPath]) VALUES (39, N'M_CL_LG_0001', N'Product_0073.jpg')
INSERT [dbo].[ProductImgs] ([ProductImgId], [fk_ProductId], [ImgPath]) VALUES (40, N'M_CL_LG_0001', N'Product_0074.jpg')
INSERT [dbo].[ProductImgs] ([ProductImgId], [fk_ProductId], [ImgPath]) VALUES (41, N'M_CL_LG_0001', N'Product_0075.jpg')
INSERT [dbo].[ProductImgs] ([ProductImgId], [fk_ProductId], [ImgPath]) VALUES (42, N'M_CL_LG_0001', N'Product_0076.jpg')
INSERT [dbo].[ProductImgs] ([ProductImgId], [fk_ProductId], [ImgPath]) VALUES (43, N'M_CL_LG_0002', N'Product_0081.jpg')
INSERT [dbo].[ProductImgs] ([ProductImgId], [fk_ProductId], [ImgPath]) VALUES (44, N'M_CL_LG_0002', N'Product_0082.jpg')
INSERT [dbo].[ProductImgs] ([ProductImgId], [fk_ProductId], [ImgPath]) VALUES (45, N'M_CL_LG_0002', N'Product_0083.jpg')
INSERT [dbo].[ProductImgs] ([ProductImgId], [fk_ProductId], [ImgPath]) VALUES (46, N'M_CL_LG_0002', N'Product_0084.jpg')
INSERT [dbo].[ProductImgs] ([ProductImgId], [fk_ProductId], [ImgPath]) VALUES (47, N'M_CL_LG_0002', N'Product_0085.jpg')
INSERT [dbo].[ProductImgs] ([ProductImgId], [fk_ProductId], [ImgPath]) VALUES (48, N'M_CL_LG_0002', N'Product_0086.jpg')
INSERT [dbo].[ProductImgs] ([ProductImgId], [fk_ProductId], [ImgPath]) VALUES (49, N'F_CL_LG_0001', N'Product_0091.jpg')
INSERT [dbo].[ProductImgs] ([ProductImgId], [fk_ProductId], [ImgPath]) VALUES (50, N'F_CL_LG_0001', N'Product_0092.jpg')
INSERT [dbo].[ProductImgs] ([ProductImgId], [fk_ProductId], [ImgPath]) VALUES (51, N'F_CL_LG_0001', N'Product_0093.jpg')
INSERT [dbo].[ProductImgs] ([ProductImgId], [fk_ProductId], [ImgPath]) VALUES (52, N'F_CL_LG_0001', N'Product_0094.jpg')
INSERT [dbo].[ProductImgs] ([ProductImgId], [fk_ProductId], [ImgPath]) VALUES (53, N'F_CL_LG_0001', N'Product_0095.jpg')
INSERT [dbo].[ProductImgs] ([ProductImgId], [fk_ProductId], [ImgPath]) VALUES (54, N'F_CL_LG_0001', N'Product_0096.jpg')
INSERT [dbo].[ProductImgs] ([ProductImgId], [fk_ProductId], [ImgPath]) VALUES (55, N'F_CL_LG_0002', N'Product_00101.jpg')
INSERT [dbo].[ProductImgs] ([ProductImgId], [fk_ProductId], [ImgPath]) VALUES (56, N'F_CL_LG_0002', N'Product_00102.jpg')
INSERT [dbo].[ProductImgs] ([ProductImgId], [fk_ProductId], [ImgPath]) VALUES (57, N'F_CL_LG_0002', N'Product_00103.jpg')
INSERT [dbo].[ProductImgs] ([ProductImgId], [fk_ProductId], [ImgPath]) VALUES (58, N'F_CL_LG_0002', N'Product_00104.jpg')
INSERT [dbo].[ProductImgs] ([ProductImgId], [fk_ProductId], [ImgPath]) VALUES (59, N'F_CL_LG_0002', N'Product_00105.jpg')
INSERT [dbo].[ProductImgs] ([ProductImgId], [fk_ProductId], [ImgPath]) VALUES (60, N'F_CL_LG_0002', N'Product_00106.jpg')
INSERT [dbo].[ProductImgs] ([ProductImgId], [fk_ProductId], [ImgPath]) VALUES (61, N'C_CL_LG_0001', N'Product_00111.jpg')
INSERT [dbo].[ProductImgs] ([ProductImgId], [fk_ProductId], [ImgPath]) VALUES (62, N'C_CL_LG_0001', N'Product_00112.jpg')
INSERT [dbo].[ProductImgs] ([ProductImgId], [fk_ProductId], [ImgPath]) VALUES (63, N'C_CL_LG_0001', N'Product_00113.jpg')
INSERT [dbo].[ProductImgs] ([ProductImgId], [fk_ProductId], [ImgPath]) VALUES (64, N'C_CL_LG_0001', N'Product_00114.jpg')
INSERT [dbo].[ProductImgs] ([ProductImgId], [fk_ProductId], [ImgPath]) VALUES (65, N'C_CL_LG_0001', N'Product_00115.jpg')
INSERT [dbo].[ProductImgs] ([ProductImgId], [fk_ProductId], [ImgPath]) VALUES (66, N'C_CL_LG_0001', N'Product_00116.jpg')
INSERT [dbo].[ProductImgs] ([ProductImgId], [fk_ProductId], [ImgPath]) VALUES (67, N'C_CL_LG_0002', N'Product_00121.jpg')
INSERT [dbo].[ProductImgs] ([ProductImgId], [fk_ProductId], [ImgPath]) VALUES (68, N'C_CL_LG_0002', N'Product_00122.jpg')
INSERT [dbo].[ProductImgs] ([ProductImgId], [fk_ProductId], [ImgPath]) VALUES (69, N'C_CL_LG_0002', N'Product_00123.jpg')
INSERT [dbo].[ProductImgs] ([ProductImgId], [fk_ProductId], [ImgPath]) VALUES (70, N'C_CL_LG_0002', N'Product_00124.jpg')
INSERT [dbo].[ProductImgs] ([ProductImgId], [fk_ProductId], [ImgPath]) VALUES (71, N'C_CL_LG_0002', N'Product_00125.jpg')
INSERT [dbo].[ProductImgs] ([ProductImgId], [fk_ProductId], [ImgPath]) VALUES (72, N'C_CL_LG_0002', N'Product_00126.jpg')
INSERT [dbo].[ProductImgs] ([ProductImgId], [fk_ProductId], [ImgPath]) VALUES (73, N'M_PA_ST_0001', N'Product_00131.jpg')
INSERT [dbo].[ProductImgs] ([ProductImgId], [fk_ProductId], [ImgPath]) VALUES (74, N'M_PA_ST_0001', N'Product_00132.jpg')
INSERT [dbo].[ProductImgs] ([ProductImgId], [fk_ProductId], [ImgPath]) VALUES (75, N'M_PA_ST_0002', N'Product_00141.jpg')
INSERT [dbo].[ProductImgs] ([ProductImgId], [fk_ProductId], [ImgPath]) VALUES (76, N'M_PA_ST_0002', N'Product_00142.jpg')
INSERT [dbo].[ProductImgs] ([ProductImgId], [fk_ProductId], [ImgPath]) VALUES (77, N'F_PA_ST_0001', N'Product_00151.jpg')
INSERT [dbo].[ProductImgs] ([ProductImgId], [fk_ProductId], [ImgPath]) VALUES (78, N'F_PA_ST_0001', N'Product_00152.jpg')
INSERT [dbo].[ProductImgs] ([ProductImgId], [fk_ProductId], [ImgPath]) VALUES (79, N'F_PA_ST_0002', N'Product_00161.jpg')
INSERT [dbo].[ProductImgs] ([ProductImgId], [fk_ProductId], [ImgPath]) VALUES (80, N'F_PA_ST_0002', N'Product_00162.jpg')
INSERT [dbo].[ProductImgs] ([ProductImgId], [fk_ProductId], [ImgPath]) VALUES (81, N'C_PA_ST_0001', N'Product_00161.jpg')
INSERT [dbo].[ProductImgs] ([ProductImgId], [fk_ProductId], [ImgPath]) VALUES (82, N'C_PA_ST_0001', N'Product_00162.jpg')
INSERT [dbo].[ProductImgs] ([ProductImgId], [fk_ProductId], [ImgPath]) VALUES (83, N'C_PA_ST_0001', N'Product_00163.jpg')
INSERT [dbo].[ProductImgs] ([ProductImgId], [fk_ProductId], [ImgPath]) VALUES (84, N'C_PA_ST_0001', N'Product_00164.jpg')
INSERT [dbo].[ProductImgs] ([ProductImgId], [fk_ProductId], [ImgPath]) VALUES (85, N'C_PA_ST_0002', N'Product_00171.jpg')
INSERT [dbo].[ProductImgs] ([ProductImgId], [fk_ProductId], [ImgPath]) VALUES (86, N'C_PA_ST_0002', N'Product_00172.jpg')
INSERT [dbo].[ProductImgs] ([ProductImgId], [fk_ProductId], [ImgPath]) VALUES (87, N'M_PA_LG_0001', N'Product_00181.jpg')
INSERT [dbo].[ProductImgs] ([ProductImgId], [fk_ProductId], [ImgPath]) VALUES (88, N'M_PA_LG_0001', N'Product_00182.jpg')
INSERT [dbo].[ProductImgs] ([ProductImgId], [fk_ProductId], [ImgPath]) VALUES (89, N'M_PA_LG_0002', N'Product_00191.jpg')
INSERT [dbo].[ProductImgs] ([ProductImgId], [fk_ProductId], [ImgPath]) VALUES (90, N'M_PA_LG_0002', N'Product_00192.jpg')
INSERT [dbo].[ProductImgs] ([ProductImgId], [fk_ProductId], [ImgPath]) VALUES (91, N'F_PA_LG_0001', N'Product_00201.jpg')
INSERT [dbo].[ProductImgs] ([ProductImgId], [fk_ProductId], [ImgPath]) VALUES (92, N'F_PA_LG_0001', N'Product_00202.jpg')
INSERT [dbo].[ProductImgs] ([ProductImgId], [fk_ProductId], [ImgPath]) VALUES (93, N'F_PA_LG_0002', N'Product_00211.jpg')
INSERT [dbo].[ProductImgs] ([ProductImgId], [fk_ProductId], [ImgPath]) VALUES (94, N'F_PA_LG_0002', N'Product_00212.jpg')
INSERT [dbo].[ProductImgs] ([ProductImgId], [fk_ProductId], [ImgPath]) VALUES (95, N'C_PA_LG_0001', N'Product_00221.jpg')
INSERT [dbo].[ProductImgs] ([ProductImgId], [fk_ProductId], [ImgPath]) VALUES (96, N'C_PA_LG_0001', N'Product_00222.jpg')
INSERT [dbo].[ProductImgs] ([ProductImgId], [fk_ProductId], [ImgPath]) VALUES (97, N'C_PA_LG_0001', N'Product_00223.jpg')
INSERT [dbo].[ProductImgs] ([ProductImgId], [fk_ProductId], [ImgPath]) VALUES (98, N'C_PA_LG_0001', N'Product_00224.jpg')
INSERT [dbo].[ProductImgs] ([ProductImgId], [fk_ProductId], [ImgPath]) VALUES (99, N'C_PA_LG_0002', N'Product_00231.jpg')
GO
INSERT [dbo].[ProductImgs] ([ProductImgId], [fk_ProductId], [ImgPath]) VALUES (100, N'C_PA_LG_0002', N'Product_00232.jpg')
INSERT [dbo].[ProductImgs] ([ProductImgId], [fk_ProductId], [ImgPath]) VALUES (101, N'M_SH_CL_0001', N'Product_00241.jpg')
INSERT [dbo].[ProductImgs] ([ProductImgId], [fk_ProductId], [ImgPath]) VALUES (102, N'M_SH_CL_0001', N'Product_00242.jpg')
INSERT [dbo].[ProductImgs] ([ProductImgId], [fk_ProductId], [ImgPath]) VALUES (103, N'M_SH_CL_0001', N'Product_00243.jpg')
INSERT [dbo].[ProductImgs] ([ProductImgId], [fk_ProductId], [ImgPath]) VALUES (104, N'M_SH_CL_0001', N'Product_00244.jpg')
INSERT [dbo].[ProductImgs] ([ProductImgId], [fk_ProductId], [ImgPath]) VALUES (105, N'M_SH_CL_0001', N'Product_00245.jpg')
INSERT [dbo].[ProductImgs] ([ProductImgId], [fk_ProductId], [ImgPath]) VALUES (106, N'M_SH_CL_0001', N'Product_00246.jpg')
INSERT [dbo].[ProductImgs] ([ProductImgId], [fk_ProductId], [ImgPath]) VALUES (107, N'M_SH_CL_0002', N'Product_00251.jpg')
INSERT [dbo].[ProductImgs] ([ProductImgId], [fk_ProductId], [ImgPath]) VALUES (108, N'M_SH_CL_0002', N'Product_00252.jpg')
INSERT [dbo].[ProductImgs] ([ProductImgId], [fk_ProductId], [ImgPath]) VALUES (109, N'M_SH_CL_0002', N'Product_00253.jpg')
INSERT [dbo].[ProductImgs] ([ProductImgId], [fk_ProductId], [ImgPath]) VALUES (110, N'M_SH_CL_0002', N'Product_00254.jpg')
INSERT [dbo].[ProductImgs] ([ProductImgId], [fk_ProductId], [ImgPath]) VALUES (111, N'M_SH_CL_0002', N'Product_00255.jpg')
INSERT [dbo].[ProductImgs] ([ProductImgId], [fk_ProductId], [ImgPath]) VALUES (112, N'M_SH_CL_0002', N'Product_00256.jpg')
INSERT [dbo].[ProductImgs] ([ProductImgId], [fk_ProductId], [ImgPath]) VALUES (113, N'F_SH_CL_0001', N'Product_00261.jpg')
INSERT [dbo].[ProductImgs] ([ProductImgId], [fk_ProductId], [ImgPath]) VALUES (114, N'F_SH_CL_0001', N'Product_00262.jpg')
INSERT [dbo].[ProductImgs] ([ProductImgId], [fk_ProductId], [ImgPath]) VALUES (115, N'F_SH_CL_0001', N'Product_00263.jpg')
INSERT [dbo].[ProductImgs] ([ProductImgId], [fk_ProductId], [ImgPath]) VALUES (116, N'F_SH_CL_0001', N'Product_00264.jpg')
INSERT [dbo].[ProductImgs] ([ProductImgId], [fk_ProductId], [ImgPath]) VALUES (117, N'F_SH_CL_0001', N'Product_00265.jpg')
INSERT [dbo].[ProductImgs] ([ProductImgId], [fk_ProductId], [ImgPath]) VALUES (118, N'F_SH_CL_0001', N'Product_00266.jpg')
INSERT [dbo].[ProductImgs] ([ProductImgId], [fk_ProductId], [ImgPath]) VALUES (119, N'F_SH_CL_0002', N'Product_00271.jpg')
INSERT [dbo].[ProductImgs] ([ProductImgId], [fk_ProductId], [ImgPath]) VALUES (120, N'F_SH_CL_0002', N'Product_00272.jpg')
INSERT [dbo].[ProductImgs] ([ProductImgId], [fk_ProductId], [ImgPath]) VALUES (121, N'F_SH_CL_0002', N'Product_00273.jpg')
INSERT [dbo].[ProductImgs] ([ProductImgId], [fk_ProductId], [ImgPath]) VALUES (122, N'F_SH_CL_0002', N'Product_00274.jpg')
INSERT [dbo].[ProductImgs] ([ProductImgId], [fk_ProductId], [ImgPath]) VALUES (123, N'F_SH_CL_0002', N'Product_00275.jpg')
INSERT [dbo].[ProductImgs] ([ProductImgId], [fk_ProductId], [ImgPath]) VALUES (124, N'F_SH_CL_0002', N'Product_00276.jpg')
INSERT [dbo].[ProductImgs] ([ProductImgId], [fk_ProductId], [ImgPath]) VALUES (125, N'C_SH_CL_0001', N'Product_00281.jpg')
INSERT [dbo].[ProductImgs] ([ProductImgId], [fk_ProductId], [ImgPath]) VALUES (126, N'C_SH_CL_0001', N'Product_00282.jpg')
INSERT [dbo].[ProductImgs] ([ProductImgId], [fk_ProductId], [ImgPath]) VALUES (127, N'C_SH_CL_0001', N'Product_00283.jpg')
INSERT [dbo].[ProductImgs] ([ProductImgId], [fk_ProductId], [ImgPath]) VALUES (128, N'C_SH_CL_0001', N'Product_00284.jpg')
INSERT [dbo].[ProductImgs] ([ProductImgId], [fk_ProductId], [ImgPath]) VALUES (129, N'C_SH_CL_0001', N'Product_00285.jpg')
INSERT [dbo].[ProductImgs] ([ProductImgId], [fk_ProductId], [ImgPath]) VALUES (130, N'C_SH_CL_0001', N'Product_00286.jpg')
INSERT [dbo].[ProductImgs] ([ProductImgId], [fk_ProductId], [ImgPath]) VALUES (131, N'C_SH_CL_0002', N'Product_00291.jpg')
INSERT [dbo].[ProductImgs] ([ProductImgId], [fk_ProductId], [ImgPath]) VALUES (132, N'C_SH_CL_0002', N'Product_00292.jpg')
INSERT [dbo].[ProductImgs] ([ProductImgId], [fk_ProductId], [ImgPath]) VALUES (133, N'C_SH_CL_0002', N'Product_00293.jpg')
INSERT [dbo].[ProductImgs] ([ProductImgId], [fk_ProductId], [ImgPath]) VALUES (134, N'C_SH_CL_0002', N'Product_00294.jpg')
INSERT [dbo].[ProductImgs] ([ProductImgId], [fk_ProductId], [ImgPath]) VALUES (135, N'C_SH_CL_0002', N'Product_00295.jpg')
INSERT [dbo].[ProductImgs] ([ProductImgId], [fk_ProductId], [ImgPath]) VALUES (136, N'C_SH_CL_0002', N'Product_00296.jpg')
INSERT [dbo].[ProductImgs] ([ProductImgId], [fk_ProductId], [ImgPath]) VALUES (137, N'M_SH_SP_0001', N'Product_00301.jpg')
INSERT [dbo].[ProductImgs] ([ProductImgId], [fk_ProductId], [ImgPath]) VALUES (138, N'M_SH_SP_0001', N'Product_00302.jpg')
INSERT [dbo].[ProductImgs] ([ProductImgId], [fk_ProductId], [ImgPath]) VALUES (139, N'M_SH_SP_0001', N'Product_00303.jpg')
INSERT [dbo].[ProductImgs] ([ProductImgId], [fk_ProductId], [ImgPath]) VALUES (140, N'M_SH_SP_0001', N'Product_00304.jpg')
INSERT [dbo].[ProductImgs] ([ProductImgId], [fk_ProductId], [ImgPath]) VALUES (141, N'M_SH_SP_0001', N'Product_00305.jpg')
INSERT [dbo].[ProductImgs] ([ProductImgId], [fk_ProductId], [ImgPath]) VALUES (142, N'M_SH_SP_0001', N'Product_00306.jpg')
INSERT [dbo].[ProductImgs] ([ProductImgId], [fk_ProductId], [ImgPath]) VALUES (143, N'M_SH_SP_0002', N'Product_00311.jpg')
INSERT [dbo].[ProductImgs] ([ProductImgId], [fk_ProductId], [ImgPath]) VALUES (144, N'M_SH_SP_0002', N'Product_00312.jpg')
INSERT [dbo].[ProductImgs] ([ProductImgId], [fk_ProductId], [ImgPath]) VALUES (145, N'M_SH_SP_0002', N'Product_00313.jpg')
INSERT [dbo].[ProductImgs] ([ProductImgId], [fk_ProductId], [ImgPath]) VALUES (146, N'M_SH_SP_0002', N'Product_00314.jpg')
INSERT [dbo].[ProductImgs] ([ProductImgId], [fk_ProductId], [ImgPath]) VALUES (147, N'M_SH_SP_0002', N'Product_00315.jpg')
INSERT [dbo].[ProductImgs] ([ProductImgId], [fk_ProductId], [ImgPath]) VALUES (148, N'M_SH_SP_0002', N'Product_00316.jpg')
INSERT [dbo].[ProductImgs] ([ProductImgId], [fk_ProductId], [ImgPath]) VALUES (149, N'F_SH_SP_0001', N'Product_00321.jpg')
INSERT [dbo].[ProductImgs] ([ProductImgId], [fk_ProductId], [ImgPath]) VALUES (150, N'F_SH_SP_0001', N'Product_00322.jpg')
INSERT [dbo].[ProductImgs] ([ProductImgId], [fk_ProductId], [ImgPath]) VALUES (151, N'F_SH_SP_0001', N'Product_00323.jpg')
INSERT [dbo].[ProductImgs] ([ProductImgId], [fk_ProductId], [ImgPath]) VALUES (152, N'F_SH_SP_0001', N'Product_00324.jpg')
INSERT [dbo].[ProductImgs] ([ProductImgId], [fk_ProductId], [ImgPath]) VALUES (153, N'F_SH_SP_0001', N'Product_00325.jpg')
INSERT [dbo].[ProductImgs] ([ProductImgId], [fk_ProductId], [ImgPath]) VALUES (154, N'F_SH_SP_0001', N'Product_00326.jpg')
INSERT [dbo].[ProductImgs] ([ProductImgId], [fk_ProductId], [ImgPath]) VALUES (155, N'F_SH_SP_0002', N'Product_00331.jpg')
INSERT [dbo].[ProductImgs] ([ProductImgId], [fk_ProductId], [ImgPath]) VALUES (156, N'F_SH_SP_0002', N'Product_00332.jpg')
INSERT [dbo].[ProductImgs] ([ProductImgId], [fk_ProductId], [ImgPath]) VALUES (157, N'F_SH_SP_0002', N'Product_00333.jpg')
INSERT [dbo].[ProductImgs] ([ProductImgId], [fk_ProductId], [ImgPath]) VALUES (158, N'F_SH_SP_0002', N'Product_00334.jpg')
INSERT [dbo].[ProductImgs] ([ProductImgId], [fk_ProductId], [ImgPath]) VALUES (159, N'F_SH_SP_0002', N'Product_00335.jpg')
INSERT [dbo].[ProductImgs] ([ProductImgId], [fk_ProductId], [ImgPath]) VALUES (160, N'F_SH_SP_0002', N'Product_00336.jpg')
INSERT [dbo].[ProductImgs] ([ProductImgId], [fk_ProductId], [ImgPath]) VALUES (161, N'C_SH_SP_0001', N'Product_00341.jpg')
INSERT [dbo].[ProductImgs] ([ProductImgId], [fk_ProductId], [ImgPath]) VALUES (162, N'C_SH_SP_0001', N'Product_00342.jpg')
INSERT [dbo].[ProductImgs] ([ProductImgId], [fk_ProductId], [ImgPath]) VALUES (163, N'C_SH_SP_0001', N'Product_00343.jpg')
INSERT [dbo].[ProductImgs] ([ProductImgId], [fk_ProductId], [ImgPath]) VALUES (164, N'C_SH_SP_0001', N'Product_00344.jpg')
INSERT [dbo].[ProductImgs] ([ProductImgId], [fk_ProductId], [ImgPath]) VALUES (165, N'C_SH_SP_0001', N'Product_00345.jpg')
INSERT [dbo].[ProductImgs] ([ProductImgId], [fk_ProductId], [ImgPath]) VALUES (166, N'C_SH_SP_0001', N'Product_00346.jpg')
INSERT [dbo].[ProductImgs] ([ProductImgId], [fk_ProductId], [ImgPath]) VALUES (167, N'C_SH_SP_0002', N'Product_00351.jpg')
INSERT [dbo].[ProductImgs] ([ProductImgId], [fk_ProductId], [ImgPath]) VALUES (168, N'C_SH_SP_0002', N'Product_00352.jpg')
INSERT [dbo].[ProductImgs] ([ProductImgId], [fk_ProductId], [ImgPath]) VALUES (169, N'C_SH_SP_0002', N'Product_00353.jpg')
INSERT [dbo].[ProductImgs] ([ProductImgId], [fk_ProductId], [ImgPath]) VALUES (170, N'C_SH_SP_0002', N'Product_00354.jpg')
INSERT [dbo].[ProductImgs] ([ProductImgId], [fk_ProductId], [ImgPath]) VALUES (171, N'C_SH_SP_0002', N'Product_00355.jpg')
INSERT [dbo].[ProductImgs] ([ProductImgId], [fk_ProductId], [ImgPath]) VALUES (172, N'C_SH_SP_0002', N'Product_00356.jpg')
SET IDENTITY_INSERT [dbo].[ProductImgs] OFF
GO
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductDescription], [ProductMaterial], [ProductOrigin], [UnitPrice], [SalesPrice], [StartTime], [EndTime], [LogOut], [Tag], [fk_ProductSubCategoryID], [CreateTime], [EditTime]) VALUES (N'C_CL_LG_0001', N'上衣011', N'這是長袖上衣005', N'88% 聚酯纖維/12% 彈性纖維', N'台灣', NULL, 1300, CAST(N'2023-06-01T00:00:00.000' AS DateTime), NULL, 0, NULL, 6, CAST(N'2023-06-22T01:57:32.913' AS DateTime), CAST(N'2023-06-22T01:57:32.913' AS DateTime))
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductDescription], [ProductMaterial], [ProductOrigin], [UnitPrice], [SalesPrice], [StartTime], [EndTime], [LogOut], [Tag], [fk_ProductSubCategoryID], [CreateTime], [EditTime]) VALUES (N'C_CL_LG_0002', N'上衣012', N'這是長袖上衣006', N'88% 聚酯纖維/12% 彈性纖維', N'台灣', NULL, 1000, CAST(N'2023-06-01T00:00:00.000' AS DateTime), NULL, 0, NULL, 6, CAST(N'2023-06-22T01:57:32.917' AS DateTime), CAST(N'2023-06-22T01:57:32.917' AS DateTime))
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductDescription], [ProductMaterial], [ProductOrigin], [UnitPrice], [SalesPrice], [StartTime], [EndTime], [LogOut], [Tag], [fk_ProductSubCategoryID], [CreateTime], [EditTime]) VALUES (N'C_CL_ST_0001', N'上衣005', N'這是上衣005', N'純棉', N'台灣', 700, 600, CAST(N'2023-06-20T00:00:00.000' AS DateTime), NULL, 0, NULL, 3, CAST(N'2023-06-22T01:57:32.900' AS DateTime), CAST(N'2023-06-22T01:57:32.900' AS DateTime))
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductDescription], [ProductMaterial], [ProductOrigin], [UnitPrice], [SalesPrice], [StartTime], [EndTime], [LogOut], [Tag], [fk_ProductSubCategoryID], [CreateTime], [EditTime]) VALUES (N'C_CL_ST_0002', N'上衣006', N'這是上衣006', N'純棉', N'台灣', 750, 650, CAST(N'2023-06-20T00:00:00.000' AS DateTime), CAST(N'2023-06-22T00:00:00.000' AS DateTime), 0, NULL, 3, CAST(N'2023-06-22T01:57:32.903' AS DateTime), CAST(N'2023-06-22T01:57:32.903' AS DateTime))
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductDescription], [ProductMaterial], [ProductOrigin], [UnitPrice], [SalesPrice], [StartTime], [EndTime], [LogOut], [Tag], [fk_ProductSubCategoryID], [CreateTime], [EditTime]) VALUES (N'C_PA_LG_0001', N'長褲005', N'這是長褲005', N'純棉', N'台灣', 700, 600, CAST(N'2023-06-20T00:00:00.000' AS DateTime), NULL, 0, NULL, 12, CAST(N'2023-06-22T01:57:32.930' AS DateTime), CAST(N'2023-06-22T01:57:32.930' AS DateTime))
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductDescription], [ProductMaterial], [ProductOrigin], [UnitPrice], [SalesPrice], [StartTime], [EndTime], [LogOut], [Tag], [fk_ProductSubCategoryID], [CreateTime], [EditTime]) VALUES (N'C_PA_LG_0002', N'長褲006', N'這是長褲006', N'純棉', N'台灣', 750, 650, CAST(N'2023-06-20T00:00:00.000' AS DateTime), CAST(N'2023-06-22T00:00:00.000' AS DateTime), 0, NULL, 12, CAST(N'2023-06-22T01:57:32.933' AS DateTime), CAST(N'2023-06-22T01:57:32.933' AS DateTime))
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductDescription], [ProductMaterial], [ProductOrigin], [UnitPrice], [SalesPrice], [StartTime], [EndTime], [LogOut], [Tag], [fk_ProductSubCategoryID], [CreateTime], [EditTime]) VALUES (N'C_PA_ST_0001', N'短褲005', N'這是短褲005', N'純棉', N'台灣', 700, 600, CAST(N'2023-06-20T00:00:00.000' AS DateTime), NULL, 0, NULL, 9, CAST(N'2023-06-22T01:57:32.923' AS DateTime), CAST(N'2023-06-22T01:57:32.923' AS DateTime))
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductDescription], [ProductMaterial], [ProductOrigin], [UnitPrice], [SalesPrice], [StartTime], [EndTime], [LogOut], [Tag], [fk_ProductSubCategoryID], [CreateTime], [EditTime]) VALUES (N'C_PA_ST_0002', N'短褲006', N'這是短褲006', N'純棉', N'台灣', 750, 650, CAST(N'2023-06-20T00:00:00.000' AS DateTime), CAST(N'2023-06-22T00:00:00.000' AS DateTime), 0, NULL, 9, CAST(N'2023-06-22T01:57:32.923' AS DateTime), CAST(N'2023-06-22T01:57:32.923' AS DateTime))
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductDescription], [ProductMaterial], [ProductOrigin], [UnitPrice], [SalesPrice], [StartTime], [EndTime], [LogOut], [Tag], [fk_ProductSubCategoryID], [CreateTime], [EditTime]) VALUES (N'C_SH_CL_0001', N'休閒鞋005', N'這是休閒鞋005', NULL, N'台灣', NULL, 1500, CAST(N'2023-06-20T00:00:00.000' AS DateTime), NULL, 0, NULL, 15, CAST(N'2023-06-22T01:57:32.943' AS DateTime), CAST(N'2023-06-22T01:57:32.943' AS DateTime))
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductDescription], [ProductMaterial], [ProductOrigin], [UnitPrice], [SalesPrice], [StartTime], [EndTime], [LogOut], [Tag], [fk_ProductSubCategoryID], [CreateTime], [EditTime]) VALUES (N'C_SH_CL_0002', N'休閒鞋006', N'這是休閒鞋006', NULL, N'台灣', 2000, 1650, CAST(N'2023-06-20T00:00:00.000' AS DateTime), CAST(N'2023-06-22T00:00:00.000' AS DateTime), 1, NULL, 15, CAST(N'2023-06-22T01:57:32.947' AS DateTime), CAST(N'2023-06-22T01:57:32.947' AS DateTime))
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductDescription], [ProductMaterial], [ProductOrigin], [UnitPrice], [SalesPrice], [StartTime], [EndTime], [LogOut], [Tag], [fk_ProductSubCategoryID], [CreateTime], [EditTime]) VALUES (N'C_SH_SP_0001', N'運動鞋005', N'這是運動鞋005', NULL, N'台灣', NULL, 1500, CAST(N'2023-06-20T00:00:00.000' AS DateTime), NULL, 0, NULL, 18, CAST(N'2023-06-22T01:57:32.953' AS DateTime), CAST(N'2023-06-22T01:57:32.953' AS DateTime))
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductDescription], [ProductMaterial], [ProductOrigin], [UnitPrice], [SalesPrice], [StartTime], [EndTime], [LogOut], [Tag], [fk_ProductSubCategoryID], [CreateTime], [EditTime]) VALUES (N'C_SH_SP_0002', N'運動鞋006', N'這是運動鞋006', NULL, N'台灣', 2000, 1650, CAST(N'2023-06-20T00:00:00.000' AS DateTime), CAST(N'2023-06-22T00:00:00.000' AS DateTime), 1, NULL, 18, CAST(N'2023-06-22T01:57:32.957' AS DateTime), CAST(N'2023-06-22T01:57:32.957' AS DateTime))
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductDescription], [ProductMaterial], [ProductOrigin], [UnitPrice], [SalesPrice], [StartTime], [EndTime], [LogOut], [Tag], [fk_ProductSubCategoryID], [CreateTime], [EditTime]) VALUES (N'F_CL_LG_0001', N'上衣009', N'這是長袖上衣003', N'88% 聚酯纖維/12% 彈性纖維', N'台灣', 1500, 1300, CAST(N'2023-06-20T00:00:00.000' AS DateTime), CAST(N'2023-09-20T00:00:00.000' AS DateTime), 0, N'限量', 5, CAST(N'2023-06-22T01:57:32.910' AS DateTime), CAST(N'2023-06-22T01:57:32.910' AS DateTime))
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductDescription], [ProductMaterial], [ProductOrigin], [UnitPrice], [SalesPrice], [StartTime], [EndTime], [LogOut], [Tag], [fk_ProductSubCategoryID], [CreateTime], [EditTime]) VALUES (N'F_CL_LG_0002', N'上衣010', N'這是長袖上衣004', N'78-79% 聚酯纖維/21-22% 彈性纖維', N'台灣', NULL, 1300, CAST(N'2023-06-20T00:00:00.000' AS DateTime), NULL, 0, NULL, 5, CAST(N'2023-06-22T01:57:32.910' AS DateTime), CAST(N'2023-06-22T01:57:32.910' AS DateTime))
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductDescription], [ProductMaterial], [ProductOrigin], [UnitPrice], [SalesPrice], [StartTime], [EndTime], [LogOut], [Tag], [fk_ProductSubCategoryID], [CreateTime], [EditTime]) VALUES (N'F_CL_ST_0001', N'上衣003', N'這是上衣003', N'純棉', N'台灣', NULL, 800, CAST(N'2023-06-20T00:00:00.000' AS DateTime), NULL, 0, NULL, 2, CAST(N'2023-06-22T01:57:32.897' AS DateTime), CAST(N'2023-06-22T01:57:32.897' AS DateTime))
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductDescription], [ProductMaterial], [ProductOrigin], [UnitPrice], [SalesPrice], [StartTime], [EndTime], [LogOut], [Tag], [fk_ProductSubCategoryID], [CreateTime], [EditTime]) VALUES (N'F_CL_ST_0002', N'上衣004', N'這是上衣004', N'純棉', N'台灣', NULL, 1000, CAST(N'2023-06-20T00:00:00.000' AS DateTime), NULL, 0, NULL, 2, CAST(N'2023-06-22T01:57:32.900' AS DateTime), CAST(N'2023-06-22T01:57:32.900' AS DateTime))
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductDescription], [ProductMaterial], [ProductOrigin], [UnitPrice], [SalesPrice], [StartTime], [EndTime], [LogOut], [Tag], [fk_ProductSubCategoryID], [CreateTime], [EditTime]) VALUES (N'F_PA_LG_0001', N'長褲003', N'這是長褲003', N'純棉', N'台灣', NULL, 800, CAST(N'2023-06-20T00:00:00.000' AS DateTime), NULL, 0, NULL, 11, CAST(N'2023-06-22T01:57:32.930' AS DateTime), CAST(N'2023-06-22T01:57:32.930' AS DateTime))
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductDescription], [ProductMaterial], [ProductOrigin], [UnitPrice], [SalesPrice], [StartTime], [EndTime], [LogOut], [Tag], [fk_ProductSubCategoryID], [CreateTime], [EditTime]) VALUES (N'F_PA_LG_0002', N'長褲004', N'這是長褲004', N'純棉', N'台灣', NULL, 1000, CAST(N'2023-06-20T00:00:00.000' AS DateTime), NULL, 0, NULL, 11, CAST(N'2023-06-22T01:57:32.930' AS DateTime), CAST(N'2023-06-22T01:57:32.930' AS DateTime))
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductDescription], [ProductMaterial], [ProductOrigin], [UnitPrice], [SalesPrice], [StartTime], [EndTime], [LogOut], [Tag], [fk_ProductSubCategoryID], [CreateTime], [EditTime]) VALUES (N'F_PA_ST_0001', N'短褲003', N'這是短褲003', N'純棉', N'台灣', NULL, 800, CAST(N'2023-06-20T00:00:00.000' AS DateTime), NULL, 0, NULL, 8, CAST(N'2023-06-22T01:57:32.920' AS DateTime), CAST(N'2023-06-22T01:57:32.920' AS DateTime))
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductDescription], [ProductMaterial], [ProductOrigin], [UnitPrice], [SalesPrice], [StartTime], [EndTime], [LogOut], [Tag], [fk_ProductSubCategoryID], [CreateTime], [EditTime]) VALUES (N'F_PA_ST_0002', N'短褲004', N'這是短褲004', N'純棉', N'台灣', NULL, 1000, CAST(N'2023-06-20T00:00:00.000' AS DateTime), NULL, 0, NULL, 8, CAST(N'2023-06-22T01:57:32.920' AS DateTime), CAST(N'2023-06-22T01:57:32.920' AS DateTime))
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductDescription], [ProductMaterial], [ProductOrigin], [UnitPrice], [SalesPrice], [StartTime], [EndTime], [LogOut], [Tag], [fk_ProductSubCategoryID], [CreateTime], [EditTime]) VALUES (N'F_SH_CL_0001', N'休閒鞋003', N'這是休閒鞋003', NULL, N'台灣', 2300, 1890, CAST(N'2023-06-20T00:00:00.000' AS DateTime), NULL, 0, NULL, 14, CAST(N'2023-06-22T01:57:32.940' AS DateTime), CAST(N'2023-06-22T01:57:32.940' AS DateTime))
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductDescription], [ProductMaterial], [ProductOrigin], [UnitPrice], [SalesPrice], [StartTime], [EndTime], [LogOut], [Tag], [fk_ProductSubCategoryID], [CreateTime], [EditTime]) VALUES (N'F_SH_CL_0002', N'休閒鞋004', N'這是休閒鞋004', N'純棉', N'台灣', NULL, 2200, CAST(N'2023-06-20T00:00:00.000' AS DateTime), NULL, 0, NULL, 14, CAST(N'2023-06-22T01:57:32.940' AS DateTime), CAST(N'2023-06-22T01:57:32.940' AS DateTime))
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductDescription], [ProductMaterial], [ProductOrigin], [UnitPrice], [SalesPrice], [StartTime], [EndTime], [LogOut], [Tag], [fk_ProductSubCategoryID], [CreateTime], [EditTime]) VALUES (N'F_SH_SP_0001', N'運動鞋003', N'這是運動鞋003', NULL, N'台灣', 2300, 1890, CAST(N'2023-06-20T00:00:00.000' AS DateTime), NULL, 0, N'限量', 17, CAST(N'2023-06-22T01:57:32.950' AS DateTime), CAST(N'2023-06-22T01:57:32.950' AS DateTime))
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductDescription], [ProductMaterial], [ProductOrigin], [UnitPrice], [SalesPrice], [StartTime], [EndTime], [LogOut], [Tag], [fk_ProductSubCategoryID], [CreateTime], [EditTime]) VALUES (N'F_SH_SP_0002', N'運動鞋004', N'這是運動鞋004', N'純棉', N'台灣', NULL, 2200, CAST(N'2023-06-20T00:00:00.000' AS DateTime), NULL, 0, NULL, 17, CAST(N'2023-06-22T01:57:32.953' AS DateTime), CAST(N'2023-06-22T01:57:32.953' AS DateTime))
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductDescription], [ProductMaterial], [ProductOrigin], [UnitPrice], [SalesPrice], [StartTime], [EndTime], [LogOut], [Tag], [fk_ProductSubCategoryID], [CreateTime], [EditTime]) VALUES (N'M_CL_LG_0001', N'上衣007', N'這是長袖上衣001', N'88% 聚酯纖維/12% 彈性纖維', N'台灣', 1500, 1300, CAST(N'2023-06-20T00:00:00.000' AS DateTime), CAST(N'2023-09-20T00:00:00.000' AS DateTime), 0, NULL, 4, CAST(N'2023-06-22T01:57:32.907' AS DateTime), CAST(N'2023-06-22T01:57:32.907' AS DateTime))
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductDescription], [ProductMaterial], [ProductOrigin], [UnitPrice], [SalesPrice], [StartTime], [EndTime], [LogOut], [Tag], [fk_ProductSubCategoryID], [CreateTime], [EditTime]) VALUES (N'M_CL_LG_0002', N'上衣008', N'這是長袖上衣002', N'88% 聚酯纖維/12% 彈性纖維', N'台灣', NULL, 1350, CAST(N'2023-06-20T00:00:00.000' AS DateTime), CAST(N'2023-06-20T00:00:00.000' AS DateTime), 1, NULL, 4, CAST(N'2023-06-22T01:57:32.907' AS DateTime), CAST(N'2023-06-22T01:57:32.907' AS DateTime))
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductDescription], [ProductMaterial], [ProductOrigin], [UnitPrice], [SalesPrice], [StartTime], [EndTime], [LogOut], [Tag], [fk_ProductSubCategoryID], [CreateTime], [EditTime]) VALUES (N'M_CL_ST_0001', N'上衣001', N'這是上衣001', N'88% 聚酯纖維 12% 彈性纖維', N'台灣', 1200, 1000, CAST(N'2023-07-01T00:00:00.000' AS DateTime), NULL, 0, NULL, 1, CAST(N'2023-06-22T01:57:32.893' AS DateTime), CAST(N'2023-06-22T01:57:32.893' AS DateTime))
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductDescription], [ProductMaterial], [ProductOrigin], [UnitPrice], [SalesPrice], [StartTime], [EndTime], [LogOut], [Tag], [fk_ProductSubCategoryID], [CreateTime], [EditTime]) VALUES (N'M_CL_ST_0002', N'上衣002', N'這是上衣002', N'純棉', N'台灣', 1300, 1100, CAST(N'2023-06-01T00:00:00.000' AS DateTime), CAST(N'2023-09-01T00:00:00.000' AS DateTime), 0, N'限量', 1, CAST(N'2023-06-22T01:57:32.897' AS DateTime), CAST(N'2023-06-22T01:57:32.897' AS DateTime))
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductDescription], [ProductMaterial], [ProductOrigin], [UnitPrice], [SalesPrice], [StartTime], [EndTime], [LogOut], [Tag], [fk_ProductSubCategoryID], [CreateTime], [EditTime]) VALUES (N'M_PA_LG_0001', N'褲子001', N'這是長褲001', N'88% 聚酯纖維 12% 彈性纖維', N'台灣', 1200, 1000, CAST(N'2023-07-01T00:00:00.000' AS DateTime), NULL, 0, NULL, 10, CAST(N'2023-06-22T01:57:32.927' AS DateTime), CAST(N'2023-06-22T01:57:32.927' AS DateTime))
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductDescription], [ProductMaterial], [ProductOrigin], [UnitPrice], [SalesPrice], [StartTime], [EndTime], [LogOut], [Tag], [fk_ProductSubCategoryID], [CreateTime], [EditTime]) VALUES (N'M_PA_LG_0002', N'長褲002', N'這是長褲002', N'純棉', N'台灣', 1300, 1100, CAST(N'2023-06-01T00:00:00.000' AS DateTime), CAST(N'2023-09-01T00:00:00.000' AS DateTime), 0, N'限量', 10, CAST(N'2023-06-22T01:57:32.927' AS DateTime), CAST(N'2023-06-22T01:57:32.927' AS DateTime))
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductDescription], [ProductMaterial], [ProductOrigin], [UnitPrice], [SalesPrice], [StartTime], [EndTime], [LogOut], [Tag], [fk_ProductSubCategoryID], [CreateTime], [EditTime]) VALUES (N'M_PA_ST_0001', N'褲子001', N'這是短褲001', N'88% 聚酯纖維 12% 彈性纖維', N'台灣', 1200, 1000, CAST(N'2023-07-01T00:00:00.000' AS DateTime), NULL, 0, NULL, 7, CAST(N'2023-06-22T01:57:32.917' AS DateTime), CAST(N'2023-06-22T01:57:32.917' AS DateTime))
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductDescription], [ProductMaterial], [ProductOrigin], [UnitPrice], [SalesPrice], [StartTime], [EndTime], [LogOut], [Tag], [fk_ProductSubCategoryID], [CreateTime], [EditTime]) VALUES (N'M_PA_ST_0002', N'短褲002', N'這是短褲002', N'純棉', N'台灣', 1300, 1100, CAST(N'2023-06-01T00:00:00.000' AS DateTime), CAST(N'2023-09-01T00:00:00.000' AS DateTime), 0, N'限量', 7, CAST(N'2023-06-22T01:57:32.920' AS DateTime), CAST(N'2023-06-22T01:57:32.920' AS DateTime))
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductDescription], [ProductMaterial], [ProductOrigin], [UnitPrice], [SalesPrice], [StartTime], [EndTime], [LogOut], [Tag], [fk_ProductSubCategoryID], [CreateTime], [EditTime]) VALUES (N'M_SH_CL_0001', N'休閒鞋001', N'這是休閒鞋001', NULL, N'台灣', NULL, 3600, CAST(N'2023-07-01T00:00:00.000' AS DateTime), NULL, 0, NULL, 13, CAST(N'2023-06-22T01:57:32.937' AS DateTime), CAST(N'2023-06-22T01:57:32.937' AS DateTime))
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductDescription], [ProductMaterial], [ProductOrigin], [UnitPrice], [SalesPrice], [StartTime], [EndTime], [LogOut], [Tag], [fk_ProductSubCategoryID], [CreateTime], [EditTime]) VALUES (N'M_SH_CL_0002', N'休閒鞋002', N'這是休閒鞋002', NULL, N'台灣', 2500, 2000, CAST(N'2023-06-01T00:00:00.000' AS DateTime), NULL, 0, N'限量', 13, CAST(N'2023-06-22T01:57:32.937' AS DateTime), CAST(N'2023-06-22T01:57:32.937' AS DateTime))
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductDescription], [ProductMaterial], [ProductOrigin], [UnitPrice], [SalesPrice], [StartTime], [EndTime], [LogOut], [Tag], [fk_ProductSubCategoryID], [CreateTime], [EditTime]) VALUES (N'M_SH_SP_0001', N'運動鞋001', N'這是運動鞋001', NULL, N'台灣', NULL, 3600, CAST(N'2023-07-01T00:00:00.000' AS DateTime), NULL, 0, NULL, 16, CAST(N'2023-06-22T01:57:32.947' AS DateTime), CAST(N'2023-06-22T01:57:32.947' AS DateTime))
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductDescription], [ProductMaterial], [ProductOrigin], [UnitPrice], [SalesPrice], [StartTime], [EndTime], [LogOut], [Tag], [fk_ProductSubCategoryID], [CreateTime], [EditTime]) VALUES (N'M_SH_SP_0002', N'運動鞋002', N'這是運動鞋002', NULL, N'台灣', 2500, 2000, CAST(N'2023-06-01T00:00:00.000' AS DateTime), NULL, 0, N'限量', 16, CAST(N'2023-06-22T01:57:32.950' AS DateTime), CAST(N'2023-06-22T01:57:32.950' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[ProductSubCategories] ON 

INSERT [dbo].[ProductSubCategories] ([ProductSubCategoryId], [ProductSubCategoryName], [fk_ProductCategoryId], [SubCategoryPath]) VALUES (1, N'短袖', 1, N'男裝/上衣/短袖')
INSERT [dbo].[ProductSubCategories] ([ProductSubCategoryId], [ProductSubCategoryName], [fk_ProductCategoryId], [SubCategoryPath]) VALUES (2, N'短袖', 2, N'女裝/上衣/短袖')
INSERT [dbo].[ProductSubCategories] ([ProductSubCategoryId], [ProductSubCategoryName], [fk_ProductCategoryId], [SubCategoryPath]) VALUES (3, N'短袖', 3, N'童裝/上衣/短袖')
INSERT [dbo].[ProductSubCategories] ([ProductSubCategoryId], [ProductSubCategoryName], [fk_ProductCategoryId], [SubCategoryPath]) VALUES (4, N'長袖', 1, N'男裝/上衣/長袖')
INSERT [dbo].[ProductSubCategories] ([ProductSubCategoryId], [ProductSubCategoryName], [fk_ProductCategoryId], [SubCategoryPath]) VALUES (5, N'長袖', 2, N'女裝/上衣/長袖')
INSERT [dbo].[ProductSubCategories] ([ProductSubCategoryId], [ProductSubCategoryName], [fk_ProductCategoryId], [SubCategoryPath]) VALUES (6, N'長袖', 3, N'童裝/上衣/長袖')
INSERT [dbo].[ProductSubCategories] ([ProductSubCategoryId], [ProductSubCategoryName], [fk_ProductCategoryId], [SubCategoryPath]) VALUES (7, N'短褲', 4, N'男裝/褲子/短褲')
INSERT [dbo].[ProductSubCategories] ([ProductSubCategoryId], [ProductSubCategoryName], [fk_ProductCategoryId], [SubCategoryPath]) VALUES (8, N'短褲', 5, N'女裝/褲子/短褲')
INSERT [dbo].[ProductSubCategories] ([ProductSubCategoryId], [ProductSubCategoryName], [fk_ProductCategoryId], [SubCategoryPath]) VALUES (9, N'短褲', 6, N'童裝/褲子/短褲')
INSERT [dbo].[ProductSubCategories] ([ProductSubCategoryId], [ProductSubCategoryName], [fk_ProductCategoryId], [SubCategoryPath]) VALUES (10, N'長褲', 4, N'男裝/褲子/長褲')
INSERT [dbo].[ProductSubCategories] ([ProductSubCategoryId], [ProductSubCategoryName], [fk_ProductCategoryId], [SubCategoryPath]) VALUES (11, N'長褲', 5, N'女裝/褲子/長褲')
INSERT [dbo].[ProductSubCategories] ([ProductSubCategoryId], [ProductSubCategoryName], [fk_ProductCategoryId], [SubCategoryPath]) VALUES (12, N'長褲', 6, N'童裝/褲子/長褲')
INSERT [dbo].[ProductSubCategories] ([ProductSubCategoryId], [ProductSubCategoryName], [fk_ProductCategoryId], [SubCategoryPath]) VALUES (13, N'休閒鞋', 7, N'男裝/鞋子/休閒鞋')
INSERT [dbo].[ProductSubCategories] ([ProductSubCategoryId], [ProductSubCategoryName], [fk_ProductCategoryId], [SubCategoryPath]) VALUES (14, N'休閒鞋', 8, N'女裝/鞋子/休閒鞋')
INSERT [dbo].[ProductSubCategories] ([ProductSubCategoryId], [ProductSubCategoryName], [fk_ProductCategoryId], [SubCategoryPath]) VALUES (15, N'休閒鞋', 9, N'童裝/鞋子/休閒鞋')
INSERT [dbo].[ProductSubCategories] ([ProductSubCategoryId], [ProductSubCategoryName], [fk_ProductCategoryId], [SubCategoryPath]) VALUES (16, N'運動鞋', 7, N'男裝/鞋子/運動鞋')
INSERT [dbo].[ProductSubCategories] ([ProductSubCategoryId], [ProductSubCategoryName], [fk_ProductCategoryId], [SubCategoryPath]) VALUES (17, N'運動鞋', 8, N'女裝/鞋子/運動鞋')
INSERT [dbo].[ProductSubCategories] ([ProductSubCategoryId], [ProductSubCategoryName], [fk_ProductCategoryId], [SubCategoryPath]) VALUES (18, N'運動鞋', 9, N'童裝/鞋子/運動鞋')
INSERT [dbo].[ProductSubCategories] ([ProductSubCategoryId], [ProductSubCategoryName], [fk_ProductCategoryId], [SubCategoryPath]) VALUES (19, N'包包', 10, N'男裝/配件/包包')
INSERT [dbo].[ProductSubCategories] ([ProductSubCategoryId], [ProductSubCategoryName], [fk_ProductCategoryId], [SubCategoryPath]) VALUES (20, N'包包', 11, N'女裝/配件/包包')
INSERT [dbo].[ProductSubCategories] ([ProductSubCategoryId], [ProductSubCategoryName], [fk_ProductCategoryId], [SubCategoryPath]) VALUES (21, N'包包', 12, N'童裝/配件/包包')
INSERT [dbo].[ProductSubCategories] ([ProductSubCategoryId], [ProductSubCategoryName], [fk_ProductCategoryId], [SubCategoryPath]) VALUES (22, N'帽子', 10, N'男裝/配件/帽子')
INSERT [dbo].[ProductSubCategories] ([ProductSubCategoryId], [ProductSubCategoryName], [fk_ProductCategoryId], [SubCategoryPath]) VALUES (23, N'帽子', 11, N'女裝/配件/帽子')
INSERT [dbo].[ProductSubCategories] ([ProductSubCategoryId], [ProductSubCategoryName], [fk_ProductCategoryId], [SubCategoryPath]) VALUES (24, N'帽子', 12, N'童裝/配件/帽子')
SET IDENTITY_INSERT [dbo].[ProductSubCategories] OFF
GO
INSERT [dbo].[ProjectTagItems] ([fk_ProjectTagId], [fk_ProductId]) VALUES (1, N'C_CL_LG_0001')
INSERT [dbo].[ProjectTagItems] ([fk_ProjectTagId], [fk_ProductId]) VALUES (1, N'C_CL_LG_0002')
INSERT [dbo].[ProjectTagItems] ([fk_ProjectTagId], [fk_ProductId]) VALUES (2, N'C_CL_ST_0001')
INSERT [dbo].[ProjectTagItems] ([fk_ProjectTagId], [fk_ProductId]) VALUES (2, N'C_CL_ST_0002')
INSERT [dbo].[ProjectTagItems] ([fk_ProjectTagId], [fk_ProductId]) VALUES (3, N'C_SH_CL_0001')
GO
SET IDENTITY_INSERT [dbo].[ProjectTags] ON 

INSERT [dbo].[ProjectTags] ([ProjectTagId], [ProjectTagName], [CreateAt], [ModifiedAt], [status]) VALUES (1, N'Tag 1', CAST(N'2023-06-21T22:36:44.067' AS DateTime), CAST(N'2023-06-26T22:01:55.553' AS DateTime), 1)
INSERT [dbo].[ProjectTags] ([ProjectTagId], [ProjectTagName], [CreateAt], [ModifiedAt], [status]) VALUES (2, N'Tag 2', CAST(N'2023-06-21T22:36:44.067' AS DateTime), CAST(N'2023-06-26T22:01:55.553' AS DateTime), 1)
INSERT [dbo].[ProjectTags] ([ProjectTagId], [ProjectTagName], [CreateAt], [ModifiedAt], [status]) VALUES (3, N'Tag 3', CAST(N'2023-06-21T22:36:44.067' AS DateTime), CAST(N'2023-06-26T22:01:55.553' AS DateTime), 1)
INSERT [dbo].[ProjectTags] ([ProjectTagId], [ProjectTagName], [CreateAt], [ModifiedAt], [status]) VALUES (4, N'Tag 4', CAST(N'2023-06-21T22:36:44.067' AS DateTime), CAST(N'2023-06-26T22:01:55.553' AS DateTime), 1)
INSERT [dbo].[ProjectTags] ([ProjectTagId], [ProjectTagName], [CreateAt], [ModifiedAt], [status]) VALUES (5, N'Tag 5', CAST(N'2023-06-21T22:36:44.067' AS DateTime), CAST(N'2023-06-25T21:14:54.390' AS DateTime), 0)
INSERT [dbo].[ProjectTags] ([ProjectTagId], [ProjectTagName], [CreateAt], [ModifiedAt], [status]) VALUES (6, N'Tag 6', CAST(N'2023-06-21T22:36:44.067' AS DateTime), CAST(N'2023-06-26T19:02:33.463' AS DateTime), 0)
INSERT [dbo].[ProjectTags] ([ProjectTagId], [ProjectTagName], [CreateAt], [ModifiedAt], [status]) VALUES (7, N'Tag 7', CAST(N'2023-06-21T22:36:44.067' AS DateTime), CAST(N'2023-06-26T22:00:29.167' AS DateTime), 0)
INSERT [dbo].[ProjectTags] ([ProjectTagId], [ProjectTagName], [CreateAt], [ModifiedAt], [status]) VALUES (8, N'Tag 8', CAST(N'2023-06-21T22:36:44.067' AS DateTime), CAST(N'2023-06-26T22:01:55.553' AS DateTime), 1)
INSERT [dbo].[ProjectTags] ([ProjectTagId], [ProjectTagName], [CreateAt], [ModifiedAt], [status]) VALUES (9, N'Tag 9', CAST(N'2023-06-21T22:36:44.067' AS DateTime), CAST(N'2023-06-26T22:01:55.550' AS DateTime), 1)
INSERT [dbo].[ProjectTags] ([ProjectTagId], [ProjectTagName], [CreateAt], [ModifiedAt], [status]) VALUES (10, N'Tag 10', CAST(N'2023-06-21T22:36:44.067' AS DateTime), CAST(N'2023-06-26T22:01:58.660' AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[ProjectTags] OFF
GO
INSERT [dbo].[ReservationStatuses] ([ReservationId], [ReservationStatusDescription]) VALUES (1, N'已完成')
INSERT [dbo].[ReservationStatuses] ([ReservationId], [ReservationStatusDescription]) VALUES (0, N'未完成')
GO
SET IDENTITY_INSERT [dbo].[SalesCategories] ON 

INSERT [dbo].[SalesCategories] ([SalesCategoryId], [SalesCategoryName]) VALUES (1, N'男裝')
INSERT [dbo].[SalesCategories] ([SalesCategoryId], [SalesCategoryName]) VALUES (2, N'女裝')
INSERT [dbo].[SalesCategories] ([SalesCategoryId], [SalesCategoryName]) VALUES (3, N'童裝')
SET IDENTITY_INSERT [dbo].[SalesCategories] OFF
GO
SET IDENTITY_INSERT [dbo].[ShoesCategories] ON 

INSERT [dbo].[ShoesCategories] ([ShoesCategoryId], [ShoesCategoryName], [CategoryCreateTime], [CategoryEditTime]) VALUES (1, N'運動生活', CAST(N'2023-06-21T12:41:19.870' AS DateTime), CAST(N'2023-06-21T12:41:19.870' AS DateTime))
INSERT [dbo].[ShoesCategories] ([ShoesCategoryId], [ShoesCategoryName], [CategoryCreateTime], [CategoryEditTime]) VALUES (2, N'跑步', CAST(N'2023-06-21T12:41:19.870' AS DateTime), CAST(N'2023-06-21T12:41:19.870' AS DateTime))
INSERT [dbo].[ShoesCategories] ([ShoesCategoryId], [ShoesCategoryName], [CategoryCreateTime], [CategoryEditTime]) VALUES (3, N'籃球', CAST(N'2023-06-21T12:41:19.870' AS DateTime), CAST(N'2023-06-21T12:41:19.870' AS DateTime))
INSERT [dbo].[ShoesCategories] ([ShoesCategoryId], [ShoesCategoryName], [CategoryCreateTime], [CategoryEditTime]) VALUES (4, N'英式足球', CAST(N'2023-06-21T12:41:19.870' AS DateTime), CAST(N'2023-06-21T12:41:19.870' AS DateTime))
INSERT [dbo].[ShoesCategories] ([ShoesCategoryId], [ShoesCategoryName], [CategoryCreateTime], [CategoryEditTime]) VALUES (5, N'訓練與健身', CAST(N'2023-06-21T12:41:19.870' AS DateTime), CAST(N'2023-06-21T12:41:19.870' AS DateTime))
INSERT [dbo].[ShoesCategories] ([ShoesCategoryId], [ShoesCategoryName], [CategoryCreateTime], [CategoryEditTime]) VALUES (6, N'田徑', CAST(N'2023-06-21T12:41:19.870' AS DateTime), CAST(N'2023-06-21T12:41:19.870' AS DateTime))
SET IDENTITY_INSERT [dbo].[ShoesCategories] OFF
GO
SET IDENTITY_INSERT [dbo].[ShoesColorCategories] ON 

INSERT [dbo].[ShoesColorCategories] ([ShoesColorId], [ColorName], [ColorCode]) VALUES (1, N'黑色', N'#000000')
INSERT [dbo].[ShoesColorCategories] ([ShoesColorId], [ColorName], [ColorCode]) VALUES (2, N'白色', N'#FFFFFF')
INSERT [dbo].[ShoesColorCategories] ([ShoesColorId], [ColorName], [ColorCode]) VALUES (3, N'番茄紅', N'#FF6347')
INSERT [dbo].[ShoesColorCategories] ([ShoesColorId], [ColorName], [ColorCode]) VALUES (4, N'淺灰色', N'#D3D3D3')
INSERT [dbo].[ShoesColorCategories] ([ShoesColorId], [ColorName], [ColorCode]) VALUES (5, N'灰土色', N'#CCB38C')
INSERT [dbo].[ShoesColorCategories] ([ShoesColorId], [ColorName], [ColorCode]) VALUES (6, N'淺綠', N'#90EE90')
INSERT [dbo].[ShoesColorCategories] ([ShoesColorId], [ColorName], [ColorCode]) VALUES (7, N'綠松石綠', N'#4DE680')
INSERT [dbo].[ShoesColorCategories] ([ShoesColorId], [ColorName], [ColorCode]) VALUES (8, N'天藍', N'#87CEEB')
INSERT [dbo].[ShoesColorCategories] ([ShoesColorId], [ColorName], [ColorCode]) VALUES (9, N'韋奇伍德瓷藍', N'#5686BF')
INSERT [dbo].[ShoesColorCategories] ([ShoesColorId], [ColorName], [ColorCode]) VALUES (10, N'李紫', N'#DDA0DD')
SET IDENTITY_INSERT [dbo].[ShoesColorCategories] OFF
GO
SET IDENTITY_INSERT [dbo].[SizeCategories] ON 

INSERT [dbo].[SizeCategories] ([SizeId], [SizeName]) VALUES (1, N'S')
INSERT [dbo].[SizeCategories] ([SizeId], [SizeName]) VALUES (2, N'M')
INSERT [dbo].[SizeCategories] ([SizeId], [SizeName]) VALUES (3, N'L')
INSERT [dbo].[SizeCategories] ([SizeId], [SizeName]) VALUES (4, N'XL')
INSERT [dbo].[SizeCategories] ([SizeId], [SizeName]) VALUES (5, N'XXL')
INSERT [dbo].[SizeCategories] ([SizeId], [SizeName]) VALUES (6, N'XXXL')
INSERT [dbo].[SizeCategories] ([SizeId], [SizeName]) VALUES (7, N'XXXL')
INSERT [dbo].[SizeCategories] ([SizeId], [SizeName]) VALUES (8, N'16')
INSERT [dbo].[SizeCategories] ([SizeId], [SizeName]) VALUES (9, N'16.5')
INSERT [dbo].[SizeCategories] ([SizeId], [SizeName]) VALUES (10, N'17')
INSERT [dbo].[SizeCategories] ([SizeId], [SizeName]) VALUES (11, N'17.5')
INSERT [dbo].[SizeCategories] ([SizeId], [SizeName]) VALUES (12, N'18')
INSERT [dbo].[SizeCategories] ([SizeId], [SizeName]) VALUES (13, N'18.5')
INSERT [dbo].[SizeCategories] ([SizeId], [SizeName]) VALUES (14, N'19')
INSERT [dbo].[SizeCategories] ([SizeId], [SizeName]) VALUES (15, N'19.5')
INSERT [dbo].[SizeCategories] ([SizeId], [SizeName]) VALUES (16, N'20')
INSERT [dbo].[SizeCategories] ([SizeId], [SizeName]) VALUES (17, N'20.5')
INSERT [dbo].[SizeCategories] ([SizeId], [SizeName]) VALUES (18, N'21')
INSERT [dbo].[SizeCategories] ([SizeId], [SizeName]) VALUES (19, N'21.5')
INSERT [dbo].[SizeCategories] ([SizeId], [SizeName]) VALUES (20, N'22')
INSERT [dbo].[SizeCategories] ([SizeId], [SizeName]) VALUES (21, N'22.5')
INSERT [dbo].[SizeCategories] ([SizeId], [SizeName]) VALUES (22, N'23')
INSERT [dbo].[SizeCategories] ([SizeId], [SizeName]) VALUES (23, N'23.5')
INSERT [dbo].[SizeCategories] ([SizeId], [SizeName]) VALUES (24, N'24')
INSERT [dbo].[SizeCategories] ([SizeId], [SizeName]) VALUES (25, N'24.5')
INSERT [dbo].[SizeCategories] ([SizeId], [SizeName]) VALUES (26, N'25')
INSERT [dbo].[SizeCategories] ([SizeId], [SizeName]) VALUES (27, N'25.5')
INSERT [dbo].[SizeCategories] ([SizeId], [SizeName]) VALUES (28, N'26')
INSERT [dbo].[SizeCategories] ([SizeId], [SizeName]) VALUES (29, N'26.5')
INSERT [dbo].[SizeCategories] ([SizeId], [SizeName]) VALUES (30, N'27')
INSERT [dbo].[SizeCategories] ([SizeId], [SizeName]) VALUES (31, N'27.5')
INSERT [dbo].[SizeCategories] ([SizeId], [SizeName]) VALUES (32, N'28')
INSERT [dbo].[SizeCategories] ([SizeId], [SizeName]) VALUES (33, N'單一規格')
SET IDENTITY_INSERT [dbo].[SizeCategories] OFF
GO
SET IDENTITY_INSERT [dbo].[SpeakerFields] ON 

INSERT [dbo].[SpeakerFields] ([FieldId], [FieldName]) VALUES (1, N'跑步')
INSERT [dbo].[SpeakerFields] ([FieldId], [FieldName]) VALUES (2, N'健行')
INSERT [dbo].[SpeakerFields] ([FieldId], [FieldName]) VALUES (3, N'登山')
INSERT [dbo].[SpeakerFields] ([FieldId], [FieldName]) VALUES (4, N'自行車')
INSERT [dbo].[SpeakerFields] ([FieldId], [FieldName]) VALUES (5, N'健身訓練')
SET IDENTITY_INSERT [dbo].[SpeakerFields] OFF
GO
SET IDENTITY_INSERT [dbo].[Speakers] ON 

INSERT [dbo].[Speakers] ([SpeakerId], [SpeakerName], [SpeakerPhone], [fk_SpeakerFieldId], [SpeakerImg], [fk_SpeakerBranchId], [SpeakerDescription]) VALUES (1, N'Allen', N'0935264851', 1, N'D:\期中專題 Flex\FLEX活動照片\講師大頭貼\Allen.jpg', 1, N'跑步專家Allen，擅長帶領跑者進行訓練和技巧分享。')
INSERT [dbo].[Speakers] ([SpeakerId], [SpeakerName], [SpeakerPhone], [fk_SpeakerFieldId], [SpeakerImg], [fk_SpeakerBranchId], [SpeakerDescription]) VALUES (2, N'Gary', N'0975641223', 2, N'D:\期中專題 Flex\FLEX活動照片\講師大頭貼\Gary.jpg', 2, N'健行導師Gary，喜歡帶領大家探索自然，並分享健行的益處和技巧。')
INSERT [dbo].[Speakers] ([SpeakerId], [SpeakerName], [SpeakerPhone], [fk_SpeakerFieldId], [SpeakerImg], [fk_SpeakerBranchId], [SpeakerDescription]) VALUES (3, N'Betty', N'0986523512', 3, N'D:\期中專題 Flex\FLEX活動照片\講師大頭貼\Betty.jpg', 3, N'登山教練Betty，對於登山路線和技巧有豐富的經驗，喜歡與登山愛好者分享知識。')
INSERT [dbo].[Speakers] ([SpeakerId], [SpeakerName], [SpeakerPhone], [fk_SpeakerFieldId], [SpeakerImg], [fk_SpeakerBranchId], [SpeakerDescription]) VALUES (4, N'Vivi', N'0953214147', 4, N'D:\期中專題 Flex\FLEX活動照片\講師大頭貼\Vivi.jpg', 4, N'自行車專家Vivi，熱衷於自行車運動，擅長技術指導和騎行安全注意事項的講解。')
INSERT [dbo].[Speakers] ([SpeakerId], [SpeakerName], [SpeakerPhone], [fk_SpeakerFieldId], [SpeakerImg], [fk_SpeakerBranchId], [SpeakerDescription]) VALUES (5, N'Katty', N'0933685421', 5, N'D:\期中專題 Flex\FLEX活動照片\講師大頭貼\Katty.jpg', 5, N'健身訓練教練Katty，擁有多年的健身訓練經驗，善於制定個人化的訓練計劃和建議飲食指導。')
INSERT [dbo].[Speakers] ([SpeakerId], [SpeakerName], [SpeakerPhone], [fk_SpeakerFieldId], [SpeakerImg], [fk_SpeakerBranchId], [SpeakerDescription]) VALUES (6, N'Steve', N'0937996501', 1, N'D:\期中專題 Flex\FLEX活動照片\講師大頭貼\Steve.jpg', 1, N'跑步專家Steve，對於長跑和競賽技巧有豐富的知識，喜歡鼓勵跑者挑戰自己的極限。')
INSERT [dbo].[Speakers] ([SpeakerId], [SpeakerName], [SpeakerPhone], [fk_SpeakerFieldId], [SpeakerImg], [fk_SpeakerBranchId], [SpeakerDescription]) VALUES (7, N'Jack', N'0985226553', 2, N'D:\期中專題 Flex\FLEX活動照片\講師大頭貼\Jack.jpg', 2, N'健行導師Jack，經常帶領團隊進行山岳健行和探險活動，並分享山地生態知識。')
INSERT [dbo].[Speakers] ([SpeakerId], [SpeakerName], [SpeakerPhone], [fk_SpeakerFieldId], [SpeakerImg], [fk_SpeakerBranchId], [SpeakerDescription]) VALUES (8, N'Sam', N'0988166355', 3, N'D:\期中專題 Flex\FLEX活動照片\講師大頭貼\Sam.jpeg', 3, N'登山教練Sam，擅長攀登技巧和高海拔環境適應，經驗豐富的山岳遠征者。')
INSERT [dbo].[Speakers] ([SpeakerId], [SpeakerName], [SpeakerPhone], [fk_SpeakerFieldId], [SpeakerImg], [fk_SpeakerBranchId], [SpeakerDescription]) VALUES (9, N'Teddy', N'0957446325', 4, N'D:\期中專題 Flex\FLEX活動照片\講師大頭貼\Teddy.jpg', 4, N'自行車專家Teddy，喜歡挑戰極限，對自行車的相關裝備和規則都有豐富的知識。')
SET IDENTITY_INSERT [dbo].[Speakers] OFF
GO
SET IDENTITY_INSERT [dbo].[StaffPermissions] ON 

INSERT [dbo].[StaffPermissions] ([PermissionsId], [LevelName]) VALUES (1001, N'一般權限')
INSERT [dbo].[StaffPermissions] ([PermissionsId], [LevelName]) VALUES (1002, N'中級權限')
INSERT [dbo].[StaffPermissions] ([PermissionsId], [LevelName]) VALUES (1003, N'高級權限')
SET IDENTITY_INSERT [dbo].[StaffPermissions] OFF
GO
SET IDENTITY_INSERT [dbo].[Staffs] ON 

INSERT [dbo].[Staffs] ([staffId], [Name], [Age], [Gender], [Mobile], [Email], [Birthday], [Account], [Password], [dueDate], [fk_PermissionsId], [fk_TitleId], [fk_DepartmentId]) VALUES (2001, N'John Doe', 25, 1, N'0912345678', N'john.doe@example.com', CAST(N'1998-05-15' AS Date), N'johndoe', N'123', CAST(N'2023-06-18' AS Date), 1001, 3001, 4001)
INSERT [dbo].[Staffs] ([staffId], [Name], [Age], [Gender], [Mobile], [Email], [Birthday], [Account], [Password], [dueDate], [fk_PermissionsId], [fk_TitleId], [fk_DepartmentId]) VALUES (2002, N'Jane Smith', 30, 0, N'0987654321', N'jane.smith@example.com', CAST(N'1991-09-20' AS Date), N'janesmith', N'456', CAST(N'2023-06-18' AS Date), 1001, 3003, 4002)
INSERT [dbo].[Staffs] ([staffId], [Name], [Age], [Gender], [Mobile], [Email], [Birthday], [Account], [Password], [dueDate], [fk_PermissionsId], [fk_TitleId], [fk_DepartmentId]) VALUES (2003, N'David Lee', 35, 1, N'0922334455', N'david.lee@example.com', CAST(N'1988-12-10' AS Date), N'davidlee', N'789', CAST(N'2023-06-18' AS Date), 1002, 3001, 4002)
INSERT [dbo].[Staffs] ([staffId], [Name], [Age], [Gender], [Mobile], [Email], [Birthday], [Account], [Password], [dueDate], [fk_PermissionsId], [fk_TitleId], [fk_DepartmentId]) VALUES (2004, N'Sarah Wang', 28, 0, N'0933445566', N'sarah.wang@example.com', CAST(N'1993-06-25' AS Date), N'sarahwang', N'abc', CAST(N'2023-06-18' AS Date), 1003, 3005, 4004)
INSERT [dbo].[Staffs] ([staffId], [Name], [Age], [Gender], [Mobile], [Email], [Birthday], [Account], [Password], [dueDate], [fk_PermissionsId], [fk_TitleId], [fk_DepartmentId]) VALUES (2005, N'Michael Chen', 32, 1, N'0977888999', N'michael.chen@example.com', CAST(N'1989-04-05' AS Date), N'michaelchen', N'xyz', CAST(N'2023-06-18' AS Date), 1001, 3004, 4003)
SET IDENTITY_INSERT [dbo].[Staffs] OFF
GO
SET IDENTITY_INSERT [dbo].[Suppliers] ON 

INSERT [dbo].[Suppliers] ([SupplierId], [SupplierCompanyName], [HasCertificate], [Supply_Material], [SupplierCompanyPhone], [SupplierCompanyEmail], [SupplierCompanyAddress], [SupplierCompanyNumber], [SupplierStartDate]) VALUES (1, N'政斌紡織有限公司', 1, N'帆布', 33817499, N'Valcloth@gmail.com', N'桃園市大園區中正路1段1號', 77778888, CAST(N'2023-06-21T12:41:15.170' AS DateTime))
INSERT [dbo].[Suppliers] ([SupplierId], [SupplierCompanyName], [HasCertificate], [Supply_Material], [SupplierCompanyPhone], [SupplierCompanyEmail], [SupplierCompanyAddress], [SupplierCompanyNumber], [SupplierStartDate]) VALUES (2, N'易暖織布有限公司', 1, N'皮革', 45217898, N'a_pants@gmail.com', N'新竹市東區中央路200號', 87871234, CAST(N'2023-06-21T12:41:15.170' AS DateTime))
INSERT [dbo].[Suppliers] ([SupplierId], [SupplierCompanyName], [HasCertificate], [Supply_Material], [SupplierCompanyPhone], [SupplierCompanyEmail], [SupplierCompanyAddress], [SupplierCompanyNumber], [SupplierStartDate]) VALUES (3, N'建綸紡織廠', 1, N'牛皮', 34725656, N'Rowscloses@gmail.com', N'桃園市中壢區金陵路100號', 12345678, CAST(N'2023-06-21T12:41:15.170' AS DateTime))
INSERT [dbo].[Suppliers] ([SupplierId], [SupplierCompanyName], [HasCertificate], [Supply_Material], [SupplierCompanyPhone], [SupplierCompanyEmail], [SupplierCompanyAddress], [SupplierCompanyNumber], [SupplierStartDate]) VALUES (4, N'祥豪製布', 1, N'緞紋皮革', 65107777, N'ShowHowCloth@gmail.com', N'台南市北安路300號', 85857878, CAST(N'2023-06-21T12:41:15.170' AS DateTime))
SET IDENTITY_INSERT [dbo].[Suppliers] OFF
GO
SET IDENTITY_INSERT [dbo].[Type] ON 

INSERT [dbo].[Type] ([TypeId], [TypeName]) VALUES (1, N'商品')
INSERT [dbo].[Type] ([TypeId], [TypeName]) VALUES (2, N'活動')
INSERT [dbo].[Type] ([TypeId], [TypeName]) VALUES (3, N'課程')
INSERT [dbo].[Type] ([TypeId], [TypeName]) VALUES (4, N'客製化商品')
SET IDENTITY_INSERT [dbo].[Type] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Activity__121B440B988BB19F]    Script Date: 2023/6/26 下午 10:32:36 ******/
ALTER TABLE [dbo].[ActivityStatuses] ADD UNIQUE NONCLUSTERED 
(
	[ActivityStatusDescription] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [UQ__Alternat__3B54230C27D32C3B]    Script Date: 2023/6/26 下午 10:32:36 ******/
ALTER TABLE [dbo].[AlternateAddresses] ADD UNIQUE NONCLUSTERED 
(
	[fk_MemberId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Branches__3903DB036F014BC0]    Script Date: 2023/6/26 下午 10:32:36 ******/
ALTER TABLE [dbo].[Branches] ADD UNIQUE NONCLUSTERED 
(
	[BranchName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Branches__F50DE17A9892210E]    Script Date: 2023/6/26 下午 10:32:36 ******/
ALTER TABLE [dbo].[Branches] ADD UNIQUE NONCLUSTERED 
(
	[BranchAddress] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__JobTitle__252BE89CAEBB48CF]    Script Date: 2023/6/26 下午 10:32:36 ******/
ALTER TABLE [dbo].[JobTitles] ADD UNIQUE NONCLUSTERED 
(
	[TitleName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [UQ__MemberPo__3B54230C86ED6408]    Script Date: 2023/6/26 下午 10:32:36 ******/
ALTER TABLE [dbo].[MemberPoints] ADD UNIQUE NONCLUSTERED 
(
	[fk_MemberId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [UQ__MemberPo__70594D454E0E33F0]    Script Date: 2023/6/26 下午 10:32:36 ******/
ALTER TABLE [dbo].[MemberPoints] ADD UNIQUE NONCLUSTERED 
(
	[fk_PointHistoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Members__6FAE07820EAC3796]    Script Date: 2023/6/26 下午 10:32:36 ******/
ALTER TABLE [dbo].[Members] ADD UNIQUE NONCLUSTERED 
(
	[Mobile] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Members__A9D1053477D9958F]    Script Date: 2023/6/26 下午 10:32:36 ******/
ALTER TABLE [dbo].[Members] ADD UNIQUE NONCLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Members__B0C3AC46ED9124CC]    Script Date: 2023/6/26 下午 10:32:36 ******/
ALTER TABLE [dbo].[Members] ADD UNIQUE NONCLUSTERED 
(
	[Account] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__PointCat__8210158CD497E496]    Script Date: 2023/6/26 下午 10:32:36 ******/
ALTER TABLE [dbo].[PointCategories] ADD UNIQUE NONCLUSTERED 
(
	[PointCategoryName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Reservat__31AFC63E0EBBED38]    Script Date: 2023/6/26 下午 10:32:36 ******/
ALTER TABLE [dbo].[ReservationStatuses] ADD UNIQUE NONCLUSTERED 
(
	[ReservationStatusDescription] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__StaffPer__9EF3BE7BDF026626]    Script Date: 2023/6/26 下午 10:32:36 ******/
ALTER TABLE [dbo].[StaffPermissions] ADD UNIQUE NONCLUSTERED 
(
	[LevelName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Staff__6FAE078297F436E3]    Script Date: 2023/6/26 下午 10:32:36 ******/
ALTER TABLE [dbo].[Staffs] ADD UNIQUE NONCLUSTERED 
(
	[Mobile] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Staff__A9D10534D3C829C4]    Script Date: 2023/6/26 下午 10:32:36 ******/
ALTER TABLE [dbo].[Staffs] ADD UNIQUE NONCLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Staff__B0C3AC46BE36ACF8]    Script Date: 2023/6/26 下午 10:32:36 ******/
ALTER TABLE [dbo].[Staffs] ADD UNIQUE NONCLUSTERED 
(
	[Account] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [UQ__Supplier__AE8E9B4158433BAB]    Script Date: 2023/6/26 下午 10:32:36 ******/
ALTER TABLE [dbo].[Suppliers] ADD UNIQUE NONCLUSTERED 
(
	[SupplierCompanyNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[BlackLists] ADD  CONSTRAINT [DF__BlackList__Creat__403A8C7D]  DEFAULT (getdate()) FOR [CreatedAt]
GO
ALTER TABLE [dbo].[Coupons] ADD  CONSTRAINT [DF_Coupon_EndDays]  DEFAULT (NULL) FOR [EndDays]
GO
ALTER TABLE [dbo].[Coupons] ADD  CONSTRAINT [DF_Coupon_EndDate]  DEFAULT (NULL) FOR [EndDate]
GO
ALTER TABLE [dbo].[Coupons] ADD  CONSTRAINT [DF_Coupon_PersonMaxUsage]  DEFAULT (NULL) FOR [PersonMaxUsage]
GO
ALTER TABLE [dbo].[Coupons] ADD  CONSTRAINT [DF_Coupon_RequirementType]  DEFAULT (NULL) FOR [RequirementType]
GO
ALTER TABLE [dbo].[Coupons] ADD  CONSTRAINT [DF_Coupon_Requirement]  DEFAULT (NULL) FOR [Requirement]
GO
ALTER TABLE [dbo].[Coupons] ADD  CONSTRAINT [DF_Coupon_fk_RequiredGroupID]  DEFAULT (NULL) FOR [fk_RequiredProjectTagID]
GO
ALTER TABLE [dbo].[Members] ADD  DEFAULT (getdate()) FOR [Registration]
GO
ALTER TABLE [dbo].[OneToOneReservations] ADD  DEFAULT (getdate()) FOR [ReservationCreatedDate]
GO
ALTER TABLE [dbo].[PointHistories] ADD  DEFAULT (getdate()) FOR [EffectiveDate]
GO
ALTER TABLE [dbo].[PointTradeIn] ADD  CONSTRAINT [DF_PointTradeIn_EffectiveDate]  DEFAULT (getdate()) FOR [EffectiveDate]
GO
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF_Product_ProductId]  DEFAULT ('unique') FOR [ProductId]
GO
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF_Product_CreateTime]  DEFAULT (getdate()) FOR [CreateTime]
GO
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF_Product_EditTime]  DEFAULT (getdate()) FOR [EditTime]
GO
ALTER TABLE [dbo].[ProjectTags] ADD  CONSTRAINT [DF__ProjectTa__IsCom__0C1BC9F9]  DEFAULT ((1)) FOR [status]
GO
ALTER TABLE [dbo].[Staffs] ADD  DEFAULT (getdate()) FOR [dueDate]
GO
ALTER TABLE [dbo].[Activities]  WITH CHECK ADD FOREIGN KEY([fk_ActivityCategoryId])
REFERENCES [dbo].[ActivityCategories] ([ActivityCategoryId])
GO
ALTER TABLE [dbo].[Activities]  WITH CHECK ADD FOREIGN KEY([fk_ActivityStatusId])
REFERENCES [dbo].[ActivityStatuses] ([ActivityStatusId])
GO
ALTER TABLE [dbo].[Activities]  WITH CHECK ADD FOREIGN KEY([fk_SpeakerId])
REFERENCES [dbo].[Speakers] ([SpeakerId])
GO
ALTER TABLE [dbo].[AlternateAddresses]  WITH CHECK ADD FOREIGN KEY([fk_MemberId])
REFERENCES [dbo].[Members] ([MemberId])
GO
ALTER TABLE [dbo].[CartItems]  WITH CHECK ADD  CONSTRAINT [FK_CartItem_CartItem] FOREIGN KEY([CartItemId])
REFERENCES [dbo].[ShoppingCarts] ([CartId])
GO
ALTER TABLE [dbo].[CartItems] CHECK CONSTRAINT [FK_CartItem_CartItem]
GO
ALTER TABLE [dbo].[CartItems]  WITH CHECK ADD  CONSTRAINT [FK_CartItems_Type] FOREIGN KEY([fk_Type])
REFERENCES [dbo].[Type] ([TypeId])
GO
ALTER TABLE [dbo].[CartItems] CHECK CONSTRAINT [FK_CartItems_Type]
GO
ALTER TABLE [dbo].[Coupons]  WITH CHECK ADD  CONSTRAINT [FK_Coupon_CouponCategory] FOREIGN KEY([fk_CouponCategoryId])
REFERENCES [dbo].[CouponCategories] ([CouponCategoryId])
GO
ALTER TABLE [dbo].[Coupons] CHECK CONSTRAINT [FK_Coupon_CouponCategory]
GO
ALTER TABLE [dbo].[Coupons]  WITH CHECK ADD  CONSTRAINT [FK_Coupon_ProjectTag] FOREIGN KEY([fk_RequiredProjectTagID])
REFERENCES [dbo].[ProjectTags] ([ProjectTagId])
GO
ALTER TABLE [dbo].[Coupons] CHECK CONSTRAINT [FK_Coupon_ProjectTag]
GO
ALTER TABLE [dbo].[CouponSendings]  WITH CHECK ADD  CONSTRAINT [FK_CouponSending_Coupon] FOREIGN KEY([fk_CouponId])
REFERENCES [dbo].[Coupons] ([CouponId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CouponSendings] CHECK CONSTRAINT [FK_CouponSending_Coupon]
GO
ALTER TABLE [dbo].[CouponSendings]  WITH CHECK ADD  CONSTRAINT [FK_CouponSendings_Members] FOREIGN KEY([fk_MemberId])
REFERENCES [dbo].[Members] ([MemberId])
GO
ALTER TABLE [dbo].[CouponSendings] CHECK CONSTRAINT [FK_CouponSendings_Members]
GO
ALTER TABLE [dbo].[Customized_materials]  WITH CHECK ADD FOREIGN KEY([material_ColorId])
REFERENCES [dbo].[ShoesColorCategories] ([ShoesColorId])
GO
ALTER TABLE [dbo].[Customized_Shoes]  WITH CHECK ADD FOREIGN KEY([fk_ShoesCategoryId])
REFERENCES [dbo].[ShoesCategories] ([ShoesCategoryId])
GO
ALTER TABLE [dbo].[Customized_Shoes]  WITH CHECK ADD FOREIGN KEY([fk_ShoesColorId])
REFERENCES [dbo].[ShoesColorCategories] ([ShoesColorId])
GO
ALTER TABLE [dbo].[CustomizedOrders]  WITH CHECK ADD FOREIGN KEY([Customized_Shoes_Id])
REFERENCES [dbo].[Customized_Shoes] ([ShoesProductId])
GO
ALTER TABLE [dbo].[CustomizedOrders]  WITH CHECK ADD FOREIGN KEY([Customized_Eyelet])
REFERENCES [dbo].[Customized_materials] ([Shoesmaterial_Id])
GO
ALTER TABLE [dbo].[CustomizedOrders]  WITH CHECK ADD FOREIGN KEY([Customized_EdgeProtection])
REFERENCES [dbo].[Customized_materials] ([Shoesmaterial_Id])
GO
ALTER TABLE [dbo].[CustomizedOrders]  WITH CHECK ADD FOREIGN KEY([Customized_Rear])
REFERENCES [dbo].[Customized_materials] ([Shoesmaterial_Id])
GO
ALTER TABLE [dbo].[CustomizedOrders]  WITH CHECK ADD FOREIGN KEY([Customized_Tongue])
REFERENCES [dbo].[Customized_materials] ([Shoesmaterial_Id])
GO
ALTER TABLE [dbo].[CustomizedOrders]  WITH CHECK ADD FOREIGN KEY([Customized_Toe])
REFERENCES [dbo].[Customized_materials] ([Shoesmaterial_Id])
GO
ALTER TABLE [dbo].[CustomizedOrders]  WITH CHECK ADD  CONSTRAINT [FK_CustomizedOrders_Members] FOREIGN KEY([Fk_ForMemberCustomized_Id])
REFERENCES [dbo].[Members] ([MemberId])
GO
ALTER TABLE [dbo].[CustomizedOrders] CHECK CONSTRAINT [FK_CustomizedOrders_Members]
GO
ALTER TABLE [dbo].[Discounts]  WITH CHECK ADD  CONSTRAINT [FK_Discount_DiscountGroup] FOREIGN KEY([fk_ProjectTagId])
REFERENCES [dbo].[ProjectTags] ([ProjectTagId])
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[Discounts] CHECK CONSTRAINT [FK_Discount_DiscountGroup]
GO
ALTER TABLE [dbo].[MemberPoints]  WITH CHECK ADD FOREIGN KEY([fk_MemberId])
REFERENCES [dbo].[Members] ([MemberId])
GO
ALTER TABLE [dbo].[MemberPoints]  WITH CHECK ADD  CONSTRAINT [FK__MemberPoi__fk_Po__7EF6D905] FOREIGN KEY([fk_PointHistoryId])
REFERENCES [dbo].[PointHistories] ([PointHistoryId])
GO
ALTER TABLE [dbo].[MemberPoints] CHECK CONSTRAINT [FK__MemberPoi__fk_Po__7EF6D905]
GO
ALTER TABLE [dbo].[Members]  WITH CHECK ADD FOREIGN KEY([fk_BlackListId])
REFERENCES [dbo].[BlackLists] ([BlackListId])
GO
ALTER TABLE [dbo].[Members]  WITH CHECK ADD  CONSTRAINT [FK__Members__fk_Leve__00DF2177] FOREIGN KEY([fk_LevelId])
REFERENCES [dbo].[MembershipLevels] ([LevelId])
GO
ALTER TABLE [dbo].[Members] CHECK CONSTRAINT [FK__Members__fk_Leve__00DF2177]
GO
ALTER TABLE [dbo].[MembershipLevelPrivileges]  WITH CHECK ADD  CONSTRAINT [FK__Membershi__fk_Le__01D345B0] FOREIGN KEY([fk_LevelId])
REFERENCES [dbo].[MembershipLevels] ([LevelId])
GO
ALTER TABLE [dbo].[MembershipLevelPrivileges] CHECK CONSTRAINT [FK__Membershi__fk_Le__01D345B0]
GO
ALTER TABLE [dbo].[MembershipLevelPrivileges]  WITH CHECK ADD FOREIGN KEY([fk_PrivilegeId])
REFERENCES [dbo].[Privileges] ([PrivilegeId])
GO
ALTER TABLE [dbo].[OneToOneReservations]  WITH CHECK ADD FOREIGN KEY([fk_BranchId])
REFERENCES [dbo].[Branches] ([BranchId])
GO
ALTER TABLE [dbo].[OneToOneReservations]  WITH CHECK ADD FOREIGN KEY([fk_ReservationSpeakerId])
REFERENCES [dbo].[Speakers] ([SpeakerId])
GO
ALTER TABLE [dbo].[OneToOneReservations]  WITH CHECK ADD FOREIGN KEY([fk_ReservationStatusId])
REFERENCES [dbo].[ReservationStatuses] ([ReservationId])
GO
ALTER TABLE [dbo].[OneToOneReservations]  WITH CHECK ADD  CONSTRAINT [FK_OneToOneReservations_Members] FOREIGN KEY([fk_BookerId])
REFERENCES [dbo].[Members] ([MemberId])
GO
ALTER TABLE [dbo].[OneToOneReservations] CHECK CONSTRAINT [FK_OneToOneReservations_Members]
GO
ALTER TABLE [dbo].[orderItems]  WITH CHECK ADD  CONSTRAINT [FK__orderItem__order__1B9317B3] FOREIGN KEY([order_Id])
REFERENCES [dbo].[orders] ([Id])
GO
ALTER TABLE [dbo].[orderItems] CHECK CONSTRAINT [FK__orderItem__order__1B9317B3]
GO
ALTER TABLE [dbo].[orderItems]  WITH CHECK ADD  CONSTRAINT [FK_orderItems_Type] FOREIGN KEY([fk_typeId])
REFERENCES [dbo].[Type] ([TypeId])
GO
ALTER TABLE [dbo].[orderItems] CHECK CONSTRAINT [FK_orderItems_Type]
GO
ALTER TABLE [dbo].[orders]  WITH CHECK ADD FOREIGN KEY([close_Id])
REFERENCES [dbo].[closes] ([Id])
GO
ALTER TABLE [dbo].[orders]  WITH CHECK ADD FOREIGN KEY([logistics_company_Id])
REFERENCES [dbo].[logistics_companies] ([Id])
GO
ALTER TABLE [dbo].[orders]  WITH CHECK ADD FOREIGN KEY([fk_member_Id])
REFERENCES [dbo].[Members] ([MemberId])
GO
ALTER TABLE [dbo].[orders]  WITH CHECK ADD FOREIGN KEY([order_status_Id])
REFERENCES [dbo].[order_statuses] ([Id])
GO
ALTER TABLE [dbo].[orders]  WITH CHECK ADD FOREIGN KEY([pay_method_Id])
REFERENCES [dbo].[pay_methods] ([Id])
GO
ALTER TABLE [dbo].[orders]  WITH CHECK ADD FOREIGN KEY([pay_status_Id])
REFERENCES [dbo].[pay_statuses] ([Id])
GO
ALTER TABLE [dbo].[orders]  WITH CHECK ADD  CONSTRAINT [FK_orders_Members] FOREIGN KEY([fk_member_Id])
REFERENCES [dbo].[Members] ([MemberId])
GO
ALTER TABLE [dbo].[orders] CHECK CONSTRAINT [FK_orders_Members]
GO
ALTER TABLE [dbo].[PointHistories]  WITH CHECK ADD  CONSTRAINT [FK__PointHist__fk_Me__03BB8E22] FOREIGN KEY([fk_MemberId])
REFERENCES [dbo].[Members] ([MemberId])
GO
ALTER TABLE [dbo].[PointHistories] CHECK CONSTRAINT [FK__PointHist__fk_Me__03BB8E22]
GO
ALTER TABLE [dbo].[PointHistories]  WITH CHECK ADD  CONSTRAINT [FK__PointHist__fk_Po__04AFB25B] FOREIGN KEY([fk_PointCategoryId])
REFERENCES [dbo].[PointCategories] ([PointCategoryId])
GO
ALTER TABLE [dbo].[PointHistories] CHECK CONSTRAINT [FK__PointHist__fk_Po__04AFB25B]
GO
ALTER TABLE [dbo].[PointHistories]  WITH CHECK ADD  CONSTRAINT [FK_PointHistories_orders] FOREIGN KEY([fk_OrderId])
REFERENCES [dbo].[orders] ([Id])
GO
ALTER TABLE [dbo].[PointHistories] CHECK CONSTRAINT [FK_PointHistories_orders]
GO
ALTER TABLE [dbo].[PointManage]  WITH CHECK ADD  CONSTRAINT [FK_PointManage_Type] FOREIGN KEY([fk_TypeId])
REFERENCES [dbo].[Type] ([TypeId])
GO
ALTER TABLE [dbo].[PointManage] CHECK CONSTRAINT [FK_PointManage_Type]
GO
ALTER TABLE [dbo].[PointTradeIn]  WITH CHECK ADD  CONSTRAINT [FK_PointTradeIn_Members] FOREIGN KEY([fk_MemberId])
REFERENCES [dbo].[Members] ([MemberId])
GO
ALTER TABLE [dbo].[PointTradeIn] CHECK CONSTRAINT [FK_PointTradeIn_Members]
GO
ALTER TABLE [dbo].[PointTradeIn]  WITH CHECK ADD  CONSTRAINT [FK_PointTradeIn_orders] FOREIGN KEY([fk_OrderId])
REFERENCES [dbo].[orders] ([Id])
GO
ALTER TABLE [dbo].[PointTradeIn] CHECK CONSTRAINT [FK_PointTradeIn_orders]
GO
ALTER TABLE [dbo].[ProductCategories]  WITH CHECK ADD  CONSTRAINT [FK_ProductCategories_SalesCategories] FOREIGN KEY([fk_SalesCategoryId])
REFERENCES [dbo].[SalesCategories] ([SalesCategoryId])
GO
ALTER TABLE [dbo].[ProductCategories] CHECK CONSTRAINT [FK_ProductCategories_SalesCategories]
GO
ALTER TABLE [dbo].[ProductGroups]  WITH CHECK ADD  CONSTRAINT [FK_ProductGroups_ColorCategories] FOREIGN KEY([fk_ColorId])
REFERENCES [dbo].[ColorCategories] ([ColorId])
GO
ALTER TABLE [dbo].[ProductGroups] CHECK CONSTRAINT [FK_ProductGroups_ColorCategories]
GO
ALTER TABLE [dbo].[ProductGroups]  WITH CHECK ADD  CONSTRAINT [FK_ProductGroups_Products] FOREIGN KEY([fk_ProductId])
REFERENCES [dbo].[Products] ([ProductId])
GO
ALTER TABLE [dbo].[ProductGroups] CHECK CONSTRAINT [FK_ProductGroups_Products]
GO
ALTER TABLE [dbo].[ProductGroups]  WITH CHECK ADD  CONSTRAINT [FK_ProductGroups_SizeCategories] FOREIGN KEY([fk_SizeID])
REFERENCES [dbo].[SizeCategories] ([SizeId])
GO
ALTER TABLE [dbo].[ProductGroups] CHECK CONSTRAINT [FK_ProductGroups_SizeCategories]
GO
ALTER TABLE [dbo].[ProductImgs]  WITH CHECK ADD  CONSTRAINT [FK_ProductImgs_Products] FOREIGN KEY([fk_ProductId])
REFERENCES [dbo].[Products] ([ProductId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ProductImgs] CHECK CONSTRAINT [FK_ProductImgs_Products]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Product_ProductSubCategory] FOREIGN KEY([fk_ProductSubCategoryID])
REFERENCES [dbo].[ProductSubCategories] ([ProductSubCategoryId])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Product_ProductSubCategory]
GO
ALTER TABLE [dbo].[ProductSubCategories]  WITH CHECK ADD  CONSTRAINT [FK_ProductSubCategories_ProductCategories] FOREIGN KEY([fk_ProductCategoryId])
REFERENCES [dbo].[ProductCategories] ([ProductCategoryId])
GO
ALTER TABLE [dbo].[ProductSubCategories] CHECK CONSTRAINT [FK_ProductSubCategories_ProductCategories]
GO
ALTER TABLE [dbo].[ProjectTagItems]  WITH CHECK ADD  CONSTRAINT [FK_discount_group_item_discount_group] FOREIGN KEY([fk_ProductId])
REFERENCES [dbo].[Products] ([ProductId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ProjectTagItems] CHECK CONSTRAINT [FK_discount_group_item_discount_group]
GO
ALTER TABLE [dbo].[ProjectTagItems]  WITH CHECK ADD  CONSTRAINT [FK_ProjectTagItems_ProjectTagItems] FOREIGN KEY([fk_ProjectTagId], [fk_ProductId])
REFERENCES [dbo].[ProjectTagItems] ([fk_ProjectTagId], [fk_ProductId])
GO
ALTER TABLE [dbo].[ProjectTagItems] CHECK CONSTRAINT [FK_ProjectTagItems_ProjectTagItems]
GO
ALTER TABLE [dbo].[ProjectTags]  WITH CHECK ADD  CONSTRAINT [FK_ProjectTags_ProjectTags] FOREIGN KEY([ProjectTagId])
REFERENCES [dbo].[ProjectTags] ([ProjectTagId])
GO
ALTER TABLE [dbo].[ProjectTags] CHECK CONSTRAINT [FK_ProjectTags_ProjectTags]
GO
ALTER TABLE [dbo].[ShoesPictures]  WITH CHECK ADD FOREIGN KEY([fk_ShoesPictureProduct_Id])
REFERENCES [dbo].[Customized_Shoes] ([ShoesProductId])
GO
ALTER TABLE [dbo].[ShoesPictures]  WITH CHECK ADD FOREIGN KEY([fk_ShoesProductOrder_Id])
REFERENCES [dbo].[CustomizedOrders] ([Customized_Id])
GO
ALTER TABLE [dbo].[ShoppingCarts]  WITH CHECK ADD  CONSTRAINT [FK_ShoppingCarts_Members] FOREIGN KEY([fk_MemberID])
REFERENCES [dbo].[Members] ([MemberId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ShoppingCarts] CHECK CONSTRAINT [FK_ShoppingCarts_Members]
GO
ALTER TABLE [dbo].[Speakers]  WITH CHECK ADD FOREIGN KEY([fk_SpeakerBranchId])
REFERENCES [dbo].[Branches] ([BranchId])
GO
ALTER TABLE [dbo].[Speakers]  WITH CHECK ADD FOREIGN KEY([fk_SpeakerFieldId])
REFERENCES [dbo].[SpeakerFields] ([FieldId])
GO
ALTER TABLE [dbo].[Staffs]  WITH CHECK ADD FOREIGN KEY([fk_DepartmentId])
REFERENCES [dbo].[Departments] ([DepartmentId])
GO
ALTER TABLE [dbo].[Staffs]  WITH CHECK ADD FOREIGN KEY([fk_PermissionsId])
REFERENCES [dbo].[StaffPermissions] ([PermissionsId])
GO
ALTER TABLE [dbo].[Staffs]  WITH CHECK ADD FOREIGN KEY([fk_TitleId])
REFERENCES [dbo].[JobTitles] ([TitleId])
GO
