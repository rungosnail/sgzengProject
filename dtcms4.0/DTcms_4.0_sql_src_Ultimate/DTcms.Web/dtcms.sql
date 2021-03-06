USE [DTcmsdb4]
GO
/****** Object:  Table [dbo].[dt_advertisement]    Script Date: 2017/5/4 22:33:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[dt_advertisement](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [varchar](100) NULL,
	[name] [varchar](20) NULL,
	[imgurl] [nvarchar](500) NULL,
	[url] [nvarchar](250) NULL,
	[type] [varchar](20) NULL,
	[state] [int] NULL,
	[createdate] [datetime] NULL,
	[userId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[dt_article]    Script Date: 2017/5/4 22:33:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[dt_article](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[channel_id] [int] NOT NULL,
	[category_id] [int] NOT NULL,
	[call_index] [nvarchar](50) NULL,
	[title] [nvarchar](100) NULL,
	[link_url] [nvarchar](255) NULL,
	[img_url] [nvarchar](255) NULL,
	[seo_title] [nvarchar](255) NULL,
	[seo_keywords] [nvarchar](255) NULL,
	[seo_description] [nvarchar](255) NULL,
	[tags] [nvarchar](500) NULL,
	[zhaiyao] [nvarchar](255) NULL,
	[content] [ntext] NULL,
	[sort_id] [int] NULL,
	[click] [int] NULL,
	[status] [tinyint] NULL,
	[is_msg] [tinyint] NULL,
	[is_top] [tinyint] NULL,
	[is_red] [tinyint] NULL,
	[is_hot] [tinyint] NULL,
	[is_slide] [tinyint] NULL,
	[is_sys] [tinyint] NULL,
	[user_name] [nvarchar](100) NULL,
	[add_time] [datetime] NULL,
	[update_time] [datetime] NULL,
	[composition_scheme] [nvarchar](100) NULL,
	[site_requirements] [varchar](100) NULL,
	[cost_budget] [varchar](100) NULL,
	[exhibition_time] [int] NULL,
	[resource_linkage] [varchar](20) NULL,
	[resource_phone] [varchar](50) NULL,
 CONSTRAINT [PK_DT_ARTICLE] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[dt_article_albums]    Script Date: 2017/5/4 22:33:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_article_albums](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[article_id] [int] NULL,
	[thumb_path] [nvarchar](255) NULL,
	[original_path] [nvarchar](255) NULL,
	[remark] [nvarchar](500) NULL,
	[add_time] [datetime] NULL,
 CONSTRAINT [PK_DT_ARTICLE_ALBUMS] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[dt_article_attach]    Script Date: 2017/5/4 22:33:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_article_attach](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[article_id] [int] NULL,
	[file_name] [nvarchar](255) NULL,
	[file_path] [nvarchar](255) NULL,
	[file_size] [int] NULL,
	[file_ext] [nvarchar](20) NULL,
	[down_num] [int] NULL,
	[point] [int] NULL,
	[add_time] [datetime] NULL,
 CONSTRAINT [PK_DT_ARTICLE_ATTACH] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[dt_article_attribute_field]    Script Date: 2017/5/4 22:33:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_article_attribute_field](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](100) NULL,
	[title] [nvarchar](100) NULL,
	[control_type] [nvarchar](50) NULL,
	[data_type] [nvarchar](50) NULL,
	[data_length] [int] NULL,
	[data_place] [tinyint] NULL,
	[item_option] [ntext] NULL,
	[default_value] [ntext] NULL,
	[is_required] [tinyint] NULL,
	[is_password] [tinyint] NULL,
	[is_html] [tinyint] NULL,
	[editor_type] [tinyint] NULL,
	[valid_tip_msg] [nvarchar](255) NULL,
	[valid_error_msg] [nvarchar](255) NULL,
	[valid_pattern] [nvarchar](500) NULL,
	[sort_id] [int] NULL,
	[is_sys] [tinyint] NULL,
 CONSTRAINT [PK_DT_ARTICLE_ATTRIBUTE_FIELD] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[dt_article_attribute_value]    Script Date: 2017/5/4 22:33:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_article_attribute_value](
	[article_id] [int] NOT NULL,
	[sub_title] [nvarchar](255) NULL,
	[source] [nvarchar](100) NULL,
	[author] [nvarchar](50) NULL,
	[goods_no] [nvarchar](100) NULL,
	[stock_quantity] [int] NULL,
	[market_price] [decimal](9, 2) NULL,
	[sell_price] [decimal](9, 2) NULL,
	[point] [int] NULL,
	[video_src] [nvarchar](255) NULL,
 CONSTRAINT [PK_DT_ARTICLE_ATTRIBUTE_VALUE] PRIMARY KEY CLUSTERED 
(
	[article_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[dt_article_category]    Script Date: 2017/5/4 22:33:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_article_category](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[channel_id] [int] NOT NULL,
	[title] [nvarchar](100) NULL,
	[call_index] [nvarchar](50) NULL,
	[parent_id] [int] NULL,
	[class_list] [nvarchar](500) NULL,
	[class_layer] [int] NULL,
	[sort_id] [int] NULL,
	[link_url] [nvarchar](255) NULL,
	[img_url] [nvarchar](255) NULL,
	[content] [ntext] NULL,
	[seo_title] [nvarchar](255) NULL,
	[seo_keywords] [nvarchar](255) NULL,
	[seo_description] [nvarchar](255) NULL,
 CONSTRAINT [PK_DT_ARTICLE_CATEGORY] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[dt_article_comment]    Script Date: 2017/5/4 22:33:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_article_comment](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[channel_id] [int] NULL,
	[article_id] [int] NULL,
	[parent_id] [int] NULL,
	[user_id] [int] NULL,
	[user_name] [nvarchar](100) NULL,
	[user_ip] [nvarchar](255) NULL,
	[content] [ntext] NULL,
	[is_lock] [tinyint] NULL,
	[add_time] [datetime] NULL,
	[is_reply] [tinyint] NULL,
	[reply_content] [ntext] NULL,
	[reply_time] [datetime] NULL,
 CONSTRAINT [PK_DT_ARTICLE_COMMENT] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[dt_article_goods]    Script Date: 2017/5/4 22:33:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_article_goods](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[article_id] [int] NULL,
	[goods_no] [nvarchar](50) NULL,
	[spec_ids] [nvarchar](500) NULL,
	[spec_text] [ntext] NULL,
	[stock_quantity] [int] NULL,
	[market_price] [decimal](9, 2) NULL,
	[sell_price] [decimal](9, 2) NULL,
 CONSTRAINT [PK_DT_ARTICLE_GOODS] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[dt_article_goods_spec]    Script Date: 2017/5/4 22:33:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_article_goods_spec](
	[article_id] [int] NULL,
	[spec_id] [int] NULL,
	[parent_id] [int] NULL,
	[title] [nvarchar](100) NULL,
	[img_url] [nvarchar](255) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[dt_article_spec]    Script Date: 2017/5/4 22:33:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_article_spec](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[parent_id] [int] NULL,
	[title] [nvarchar](100) NULL,
	[img_url] [nvarchar](255) NULL,
	[remark] [nvarchar](255) NULL,
	[sort_id] [int] NULL,
 CONSTRAINT [PK_DT_ARTICLE_SPEC] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[dt_article_tags]    Script Date: 2017/5/4 22:33:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_article_tags](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](100) NULL,
	[is_red] [tinyint] NULL,
	[sort_id] [int] NULL,
	[add_time] [datetime] NULL,
 CONSTRAINT [PK_DT_ARTICLE_TAGS] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[dt_article_tags_relation]    Script Date: 2017/5/4 22:33:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_article_tags_relation](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[article_id] [int] NULL,
	[tag_id] [int] NULL,
 CONSTRAINT [PK_DT_ARTICLE_TAGS_RELATION] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[dt_channel]    Script Date: 2017/5/4 22:33:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[dt_channel](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[site_id] [int] NULL,
	[name] [varchar](50) NULL,
	[title] [varchar](100) NULL,
	[is_albums] [tinyint] NULL,
	[is_attach] [tinyint] NULL,
	[is_spec] [tinyint] NULL,
	[sort_id] [int] NULL,
 CONSTRAINT [PK_DT_CHANNEL] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[dt_channel_field]    Script Date: 2017/5/4 22:33:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_channel_field](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[channel_id] [int] NULL,
	[field_id] [int] NULL,
 CONSTRAINT [PK_DT_CHANNEL_FIELD] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[dt_channel_site]    Script Date: 2017/5/4 22:33:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_channel_site](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](100) NULL,
	[build_path] [nvarchar](100) NULL,
	[templet_path] [nvarchar](100) NULL,
	[domain] [nvarchar](255) NULL,
	[name] [nvarchar](255) NULL,
	[logo] [nvarchar](255) NULL,
	[company] [nvarchar](255) NULL,
	[address] [nvarchar](255) NULL,
	[tel] [nvarchar](30) NULL,
	[fax] [nvarchar](30) NULL,
	[email] [nvarchar](50) NULL,
	[crod] [nvarchar](100) NULL,
	[copyright] [text] NULL,
	[seo_title] [nvarchar](255) NULL,
	[seo_keyword] [nvarchar](255) NULL,
	[seo_description] [nvarchar](500) NULL,
	[is_mobile] [tinyint] NULL,
	[is_default] [tinyint] NULL,
	[sort_id] [int] NULL,
 CONSTRAINT [PK_DT_CHANNEL_SITE] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[dt_express]    Script Date: 2017/5/4 22:33:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_express](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](100) NULL,
	[express_code] [nvarchar](100) NULL,
	[express_fee] [decimal](9, 2) NULL,
	[website] [nvarchar](255) NULL,
	[remark] [ntext] NULL,
	[sort_id] [int] NULL,
	[is_lock] [tinyint] NULL,
 CONSTRAINT [PK_DT_EXPRESS] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[dt_link]    Script Date: 2017/5/4 22:33:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_link](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[site_path] [nvarchar](100) NULL,
	[title] [nvarchar](255) NULL,
	[user_name] [nvarchar](50) NULL,
	[user_tel] [nvarchar](20) NULL,
	[email] [nvarchar](50) NULL,
	[site_url] [nvarchar](255) NULL,
	[img_url] [nvarchar](255) NULL,
	[is_image] [int] NOT NULL,
	[sort_id] [int] NOT NULL,
	[is_red] [tinyint] NOT NULL,
	[is_lock] [tinyint] NOT NULL,
	[add_time] [datetime] NULL,
 CONSTRAINT [PK__dt_link__5DA0D232] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[dt_mail_template]    Script Date: 2017/5/4 22:33:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_mail_template](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](100) NULL,
	[call_index] [nvarchar](50) NULL,
	[maill_title] [nvarchar](100) NULL,
	[content] [ntext] NULL,
	[is_sys] [tinyint] NULL,
 CONSTRAINT [PK_DT_MAIL_TEMPLATE] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[dt_manager]    Script Date: 2017/5/4 22:33:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_manager](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[role_id] [int] NULL,
	[role_type] [int] NULL,
	[user_name] [nvarchar](100) NULL,
	[password] [nvarchar](100) NULL,
	[salt] [nvarchar](20) NULL,
	[real_name] [nvarchar](50) NULL,
	[telephone] [nvarchar](30) NULL,
	[email] [nvarchar](30) NULL,
	[is_lock] [int] NULL,
	[add_time] [datetime] NULL,
 CONSTRAINT [PK_DT_MANAGER] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[dt_manager_log]    Script Date: 2017/5/4 22:33:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_manager_log](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NULL,
	[user_name] [nvarchar](100) NULL,
	[action_type] [nvarchar](100) NULL,
	[remark] [nvarchar](255) NULL,
	[user_ip] [nvarchar](30) NULL,
	[add_time] [datetime] NULL,
 CONSTRAINT [PK_DT_MANAGER_LOG] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[dt_manager_role]    Script Date: 2017/5/4 22:33:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_manager_role](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[role_name] [nvarchar](100) NULL,
	[role_type] [tinyint] NULL,
	[is_sys] [tinyint] NULL,
 CONSTRAINT [PK_DT_MANAGER_ROLE] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[dt_manager_role_value]    Script Date: 2017/5/4 22:33:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_manager_role_value](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[role_id] [int] NULL,
	[nav_name] [nvarchar](100) NULL,
	[action_type] [nvarchar](50) NULL,
 CONSTRAINT [PK_DT_MANAGER_ROLE_VALUE] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[dt_navigation]    Script Date: 2017/5/4 22:33:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_navigation](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[parent_id] [int] NULL,
	[channel_id] [int] NULL,
	[nav_type] [nvarchar](50) NULL,
	[name] [nvarchar](50) NULL,
	[title] [nvarchar](100) NULL,
	[sub_title] [nvarchar](100) NULL,
	[icon_url] [nvarchar](255) NULL,
	[link_url] [nvarchar](255) NULL,
	[sort_id] [int] NULL,
	[is_lock] [tinyint] NULL,
	[remark] [nvarchar](500) NULL,
	[action_type] [nvarchar](500) NULL,
	[is_sys] [tinyint] NULL,
	[is_block] [tinyint] NULL,
 CONSTRAINT [PK_DT_NAVIGATION] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[dt_order_goods]    Script Date: 2017/5/4 22:33:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_order_goods](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[article_id] [int] NULL,
	[order_id] [int] NULL,
	[goods_id] [int] NULL,
	[goods_no] [nvarchar](50) NULL,
	[goods_title] [nvarchar](100) NULL,
	[img_url] [nvarchar](255) NULL,
	[spec_text] [text] NULL,
	[goods_price] [decimal](9, 2) NULL,
	[real_price] [decimal](9, 2) NULL,
	[quantity] [int] NULL,
	[point] [int] NULL,
 CONSTRAINT [PK_DT_ORDER_GOODS] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[dt_orders]    Script Date: 2017/5/4 22:33:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[dt_orders](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[order_no] [nvarchar](100) NULL,
	[trade_no] [nvarchar](100) NULL,
	[user_id] [int] NULL,
	[user_name] [nvarchar](100) NULL,
	[payment_id] [int] NULL,
	[payment_fee] [decimal](9, 2) NULL,
	[payment_status] [tinyint] NULL,
	[payment_time] [datetime] NULL,
	[express_id] [int] NULL,
	[express_no] [nvarchar](100) NULL,
	[express_fee] [decimal](9, 2) NULL,
	[express_status] [tinyint] NULL,
	[express_time] [datetime] NULL,
	[accept_name] [nvarchar](50) NULL,
	[post_code] [nvarchar](20) NULL,
	[telphone] [nvarchar](30) NULL,
	[mobile] [nvarchar](20) NULL,
	[email] [nvarchar](30) NULL,
	[area] [nvarchar](100) NULL,
	[address] [nvarchar](500) NULL,
	[message] [nvarchar](500) NULL,
	[remark] [nvarchar](500) NULL,
	[is_invoice] [tinyint] NULL,
	[invoice_title] [varchar](100) NULL,
	[invoice_taxes] [decimal](9, 2) NULL,
	[payable_amount] [decimal](9, 2) NULL,
	[real_amount] [decimal](9, 2) NULL,
	[order_amount] [decimal](9, 2) NULL,
	[point] [int] NULL,
	[status] [tinyint] NULL,
	[add_time] [datetime] NULL,
	[confirm_time] [datetime] NULL,
	[complete_time] [datetime] NULL,
 CONSTRAINT [PK_DT_ORDERS] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[dt_payment]    Script Date: 2017/5/4 22:33:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_payment](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](100) NULL,
	[img_url] [nvarchar](255) NULL,
	[remark] [nvarchar](500) NULL,
	[type] [tinyint] NULL,
	[poundage_type] [tinyint] NULL,
	[poundage_amount] [decimal](9, 2) NULL,
	[sort_id] [int] NULL,
	[is_mobile] [tinyint] NULL,
	[is_lock] [tinyint] NULL,
	[api_path] [nvarchar](100) NULL,
 CONSTRAINT [PK_DT_PAYMENT] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[dt_sms_template]    Script Date: 2017/5/4 22:33:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_sms_template](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](100) NULL,
	[call_index] [nvarchar](50) NULL,
	[content] [ntext] NULL,
	[is_sys] [tinyint] NULL,
 CONSTRAINT [PK_DT_SMS_TEMPLATE] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[dt_user_addr_book]    Script Date: 2017/5/4 22:33:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_user_addr_book](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NULL,
	[user_name] [nvarchar](100) NULL,
	[accept_name] [nvarchar](100) NULL,
	[area] [nvarchar](100) NULL,
	[address] [nvarchar](500) NULL,
	[mobile] [nvarchar](20) NULL,
	[telphone] [nvarchar](30) NULL,
	[email] [nvarchar](50) NULL,
	[post_code] [nvarchar](20) NULL,
	[is_default] [tinyint] NULL,
	[add_time] [datetime] NULL,
 CONSTRAINT [PK_DT_USER_ADDR_BOOK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[dt_user_amount_log]    Script Date: 2017/5/4 22:33:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_user_amount_log](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NULL,
	[user_name] [nvarchar](100) NULL,
	[payment_id] [int] NULL,
	[value] [decimal](9, 2) NULL,
	[remark] [nvarchar](500) NULL,
	[add_time] [datetime] NULL,
 CONSTRAINT [PK_DT_USER_AMOUNT_LOG] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[dt_user_attach_log]    Script Date: 2017/5/4 22:33:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_user_attach_log](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NULL,
	[user_name] [nvarchar](100) NULL,
	[attach_id] [int] NULL,
	[file_name] [nvarchar](255) NULL,
	[add_time] [datetime] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[dt_user_code]    Script Date: 2017/5/4 22:33:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_user_code](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NULL,
	[user_name] [nvarchar](100) NULL,
	[type] [nvarchar](20) NULL,
	[str_code] [nvarchar](255) NULL,
	[count] [int] NULL,
	[status] [tinyint] NULL,
	[user_ip] [nvarchar](20) NULL,
	[eff_time] [datetime] NOT NULL,
	[add_time] [datetime] NOT NULL,
 CONSTRAINT [PK_DT_USER_CODE] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[dt_user_group_price]    Script Date: 2017/5/4 22:33:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_user_group_price](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[article_id] [int] NULL,
	[goods_id] [int] NULL,
	[group_id] [int] NULL,
	[price] [decimal](9, 2) NULL,
 CONSTRAINT [PK_DT_USER_GROUP_PRICE] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[dt_user_groups]    Script Date: 2017/5/4 22:33:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_user_groups](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](100) NULL,
	[grade] [int] NULL,
	[upgrade_exp] [int] NULL,
	[amount] [decimal](9, 2) NULL,
	[point] [int] NULL,
	[discount] [int] NULL,
	[is_default] [tinyint] NULL,
	[is_upgrade] [tinyint] NULL,
	[is_lock] [tinyint] NULL,
 CONSTRAINT [PK_DT_USER_GROUPS] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[dt_user_login_log]    Script Date: 2017/5/4 22:33:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_user_login_log](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NULL,
	[user_name] [nvarchar](100) NULL,
	[remark] [nvarchar](255) NULL,
	[login_time] [datetime] NULL,
	[login_ip] [nvarchar](50) NULL,
 CONSTRAINT [PK_DT_USER_LOGIN_LOG] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[dt_user_message]    Script Date: 2017/5/4 22:33:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_user_message](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[type] [tinyint] NULL,
	[post_user_name] [nvarchar](100) NULL,
	[accept_user_name] [nvarchar](100) NULL,
	[is_read] [tinyint] NULL,
	[title] [nvarchar](100) NULL,
	[content] [ntext] NULL,
	[post_time] [datetime] NOT NULL,
	[read_time] [datetime] NULL,
 CONSTRAINT [PK_DT_USER_MESSAGE] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[dt_user_oauth]    Script Date: 2017/5/4 22:33:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_user_oauth](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NULL,
	[user_name] [nvarchar](100) NULL,
	[oauth_name] [nvarchar](50) NOT NULL,
	[oauth_access_token] [nvarchar](500) NULL,
	[oauth_openid] [nvarchar](255) NULL,
	[add_time] [datetime] NULL,
 CONSTRAINT [PK_DT_USER_OAUTH] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[dt_user_oauth_app]    Script Date: 2017/5/4 22:33:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_user_oauth_app](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](100) NULL,
	[img_url] [nvarchar](255) NULL,
	[app_id] [nvarchar](100) NULL,
	[app_key] [nvarchar](500) NULL,
	[remark] [nvarchar](500) NULL,
	[sort_id] [int] NULL,
	[is_mobile] [tinyint] NULL,
	[is_lock] [tinyint] NULL,
	[api_path] [nvarchar](255) NULL,
 CONSTRAINT [PK_DT_USER_OAUTH_APP] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[dt_user_point_log]    Script Date: 2017/5/4 22:33:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_user_point_log](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NULL,
	[user_name] [nvarchar](100) NULL,
	[value] [int] NULL,
	[remark] [nvarchar](500) NULL,
	[add_time] [datetime] NULL,
 CONSTRAINT [PK_DT_USER_POINT_LOG] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[dt_user_recharge]    Script Date: 2017/5/4 22:33:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_user_recharge](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NULL,
	[user_name] [nvarchar](100) NULL,
	[recharge_no] [nvarchar](100) NULL,
	[payment_id] [int] NULL,
	[amount] [decimal](9, 2) NULL,
	[status] [tinyint] NULL,
	[add_time] [datetime] NULL,
	[complete_time] [datetime] NULL,
 CONSTRAINT [PK_DT_USER_RECHARGE] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[dt_users]    Script Date: 2017/5/4 22:33:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_users](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[group_id] [int] NULL,
	[user_name] [nvarchar](100) NOT NULL,
	[salt] [nvarchar](20) NULL,
	[password] [nvarchar](100) NOT NULL,
	[mobile] [nvarchar](20) NULL,
	[email] [nvarchar](50) NULL,
	[avatar] [nvarchar](255) NULL,
	[nick_name] [nvarchar](100) NULL,
	[sex] [nvarchar](20) NULL,
	[birthday] [datetime] NULL,
	[telphone] [nvarchar](50) NULL,
	[area] [nvarchar](255) NULL,
	[address] [nvarchar](255) NULL,
	[qq] [nvarchar](20) NULL,
	[msn] [nvarchar](100) NULL,
	[amount] [decimal](9, 2) NULL,
	[point] [int] NULL,
	[exp] [int] NULL,
	[status] [tinyint] NULL,
	[reg_time] [datetime] NULL,
	[reg_ip] [nvarchar](20) NULL,
 CONSTRAINT [PK_DT_USERS] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[dt_weixin_access_token]    Script Date: 2017/5/4 22:33:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_weixin_access_token](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[account_id] [int] NULL,
	[access_token] [nvarchar](1000) NULL,
	[expires_in] [int] NULL,
	[count] [int] NULL,
	[add_time] [datetime] NULL,
 CONSTRAINT [PK_DT_WEIXIN_ACCESS_TOKEN] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[dt_weixin_account]    Script Date: 2017/5/4 22:33:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_weixin_account](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](100) NULL,
	[originalid] [nvarchar](50) NULL,
	[wxcode] [nvarchar](50) NULL,
	[token] [nvarchar](300) NULL,
	[appid] [nvarchar](100) NULL,
	[appsecret] [nvarchar](150) NULL,
	[is_push] [tinyint] NULL,
	[sort_id] [int] NULL,
	[add_time] [datetime] NULL,
 CONSTRAINT [PK_DT_WEIXIN_ACCOUNT] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[dt_weixin_request_content]    Script Date: 2017/5/4 22:33:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_weixin_request_content](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[account_id] [int] NULL,
	[rule_id] [int] NULL,
	[title] [nvarchar](500) NULL,
	[content] [ntext] NULL,
	[link_url] [nvarchar](500) NULL,
	[img_url] [nvarchar](500) NULL,
	[media_url] [nvarchar](500) NULL,
	[meida_hd_url] [nvarchar](500) NULL,
	[sort_id] [int] NULL,
	[add_time] [datetime] NULL,
 CONSTRAINT [PK_DT_WEIXIN_REQUEST_CONTENT] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[dt_weixin_request_rule]    Script Date: 2017/5/4 22:33:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_weixin_request_rule](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[account_id] [int] NULL,
	[name] [nvarchar](200) NULL,
	[keywords] [nvarchar](2000) NULL,
	[request_type] [int] NULL,
	[response_type] [int] NULL,
	[is_like_query] [tinyint] NULL,
	[is_default] [tinyint] NULL,
	[sort_id] [int] NULL,
	[add_time] [datetime] NULL,
 CONSTRAINT [PK_DT_WEIXIN_REQUEST_RULE] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[dt_weixin_response_content]    Script Date: 2017/5/4 22:33:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_weixin_response_content](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[account_id] [int] NULL,
	[openid] [nvarchar](100) NULL,
	[request_type] [nvarchar](50) NULL,
	[request_content] [nvarchar](2000) NULL,
	[response_type] [nvarchar](50) NULL,
	[reponse_content] [nvarchar](2000) NULL,
	[create_time] [nvarchar](50) NULL,
	[xml_content] [nvarchar](2000) NULL,
	[add_time] [datetime] NULL,
 CONSTRAINT [PK_DT_WEIXIN_RESPONSE_CONTENT] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  View [dbo].[view_channel_ad]    Script Date: 2017/5/4 22:33:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[view_channel_ad] as SELECT dt_article.*,dt_article_attribute_value.source,dt_article_attribute_value.market_price,dt_article_attribute_value.sell_price FROM dt_article_attribute_value INNER JOIN dt_article ON dt_article_attribute_value.article_id = dt_article.id WHERE dt_article.channel_id=20
GO
/****** Object:  View [dbo].[view_channel_ComicIP]    Script Date: 2017/5/4 22:33:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[view_channel_ComicIP] as SELECT dt_article.*,dt_article_attribute_value.source,dt_article_attribute_value.market_price,dt_article_attribute_value.sell_price FROM dt_article_attribute_value INNER JOIN dt_article ON dt_article_attribute_value.article_id = dt_article.id WHERE dt_article.channel_id=6
GO
/****** Object:  View [dbo].[view_channel_Creativeprops]    Script Date: 2017/5/4 22:33:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[view_channel_Creativeprops] as SELECT dt_article.*,dt_article_attribute_value.source,dt_article_attribute_value.market_price,dt_article_attribute_value.sell_price FROM dt_article_attribute_value INNER JOIN dt_article ON dt_article_attribute_value.article_id = dt_article.id WHERE dt_article.channel_id=8
GO
/****** Object:  View [dbo].[view_channel_CulturalExhibition]    Script Date: 2017/5/4 22:33:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[view_channel_CulturalExhibition] as SELECT dt_article.*,dt_article_attribute_value.source,dt_article_attribute_value.market_price,dt_article_attribute_value.sell_price FROM dt_article_attribute_value INNER JOIN dt_article ON dt_article_attribute_value.article_id = dt_article.id WHERE dt_article.channel_id=7
GO
/****** Object:  View [dbo].[view_channel_Proprietaryresources]    Script Date: 2017/5/4 22:33:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[view_channel_Proprietaryresources] as SELECT dt_article.*,dt_article_attribute_value.source,dt_article_attribute_value.market_price,dt_article_attribute_value.sell_price FROM dt_article_attribute_value INNER JOIN dt_article ON dt_article_attribute_value.article_id = dt_article.id WHERE dt_article.channel_id=18
GO
/****** Object:  View [dbo].[view_channel_Starexpert]    Script Date: 2017/5/4 22:33:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[view_channel_Starexpert] as SELECT dt_article.*,dt_article_attribute_value.source,dt_article_attribute_value.market_price,dt_article_attribute_value.sell_price FROM dt_article_attribute_value INNER JOIN dt_article ON dt_article_attribute_value.article_id = dt_article.id WHERE dt_article.channel_id=10
GO
/****** Object:  View [dbo].[view_channel_Theatricalperformances]    Script Date: 2017/5/4 22:33:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[view_channel_Theatricalperformances] as SELECT dt_article.*,dt_article_attribute_value.source,dt_article_attribute_value.market_price,dt_article_attribute_value.sell_price FROM dt_article_attribute_value INNER JOIN dt_article ON dt_article_attribute_value.article_id = dt_article.id WHERE dt_article.channel_id=9
GO
/****** Object:  View [dbo].[view_channel_Themeactivities]    Script Date: 2017/5/4 22:33:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[view_channel_Themeactivities] as SELECT dt_article.*,dt_article_attribute_value.source,dt_article_attribute_value.market_price,dt_article_attribute_value.sell_price FROM dt_article_attribute_value INNER JOIN dt_article ON dt_article_attribute_value.article_id = dt_article.id WHERE dt_article.channel_id=11
GO
SET IDENTITY_INSERT [dbo].[dt_article] ON 

INSERT [dbo].[dt_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [tags], [zhaiyao], [content], [sort_id], [click], [status], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time], [composition_scheme], [site_requirements], [cost_budget], [exhibition_time], [resource_linkage], [resource_phone]) VALUES (27, 6, 54, N'', N'中国首个东盟电子商务平台“美丽湾”启动', N'', N'/upload/201504/17/201504170015481462.jpg', N'中国首个东盟电子商务平台“美丽湾”启动', N'电子商务 传媒新闻', N'中国首个东盟电子商务平台“美丽湾”启动,电子商务 传媒新闻', N'', N'8月23日下午,国内第一家专业的东盟电子电商平台“美丽湾(www.meiliwan.com)”在广西南宁举行启动仪式。“美丽湾”东盟电子商务平台是由美丽传说股份有限公司全力打造的最专业、最具特色的中国与东盟间的B2B2C电子贸易平台。本次启动仪式以“美丽中国美丽湾”为主题，由美丽传说…', N'<p>
	8月23日下午,国内第一家专业的东盟电子电商平台“美丽湾(www.meiliwan.com)”在广西南宁举行启动仪式。“美丽湾”东盟电子商务平台是由美丽传说股份有限公司全力打造的最专业、最具特色的中国与东盟间的B2B2C电子贸易平台。
</p>
<p>
	本次启动仪式以“美丽中国·美丽湾”为主题，由美丽传说股份有限公司主办，南宁市高新技术产业开发区、南宁市商务局协办。广西壮族自治区、南宁市相关政府部门领导、东盟及广西原产地产品供应商代表等出席了仪式。
</p>
<p>
	美丽传说股份有限公司CEO孙锁军先生在仪式上详细介绍了“美丽湾”的整体情况，并专门向广西自治区副主席张晓钦及相关政府领导就东盟电子商务的发展做了汇报。
</p>
<p>
	启动仪式上，中共南宁市委副书记李泽代表南宁市委市政府对“美丽湾”东盟电子商务平台的启动表示了的祝贺。李泽副书记对“美丽湾”在广西建设东盟电子商务平台的工作表示了肯定，他说：“美丽湾在利用互联网基因改造传统产业方面有先进的技术经验、丰富的平台资源。广西作为中国-东盟间贸易的桥头堡，在加速中国-东盟间贸易进度中扮演着非常重要的角色，把广西建设成为中国-东盟自由贸易区的‘三基地一中心’，是国家对广西的要求，也是广西对接东盟的一个重点，美丽湾的诞生正契合这一历史发展的需求，美丽湾的上线标志着‘三基地一中心’中的‘信息交流中心’建设实现了一个新跨越。”同时，李泽副书记对美丽湾的发展寄予了厚望，他说：“希望‘美丽湾’能抓住南宁难得的历史发展机遇，充分利用本地资源，立足南宁、布局广西、辐射东盟，整合和引领东盟电子商务产业的发展，以先进的互联网模式带动南宁本土企业实现产业转型，成为东盟经济、北部湾经济、广西经济发展的有力后劲”。
</p>
<p>
	美丽传说股份有限公司CEO孙锁军向与会嘉宾介绍了“美丽湾”东盟电子商务平台的整体情况。
</p>
<p>
	“美丽湾”是目前第一家专业服务于中国与东盟间的B2B2C电子商务平台，“美丽湾”坚持源头采购的承诺，为个人用户和企业用户提供最正宗的东盟十国及广西的特色产品，同时，也为东盟和广西商品进入国内市场搭建一流的电子商务平台。&nbsp;
</p>
<p>
	美丽湾以“积极促进中国与东盟贸易方式的改善，努力成为中国与东盟贸易的最大电子商务平台，打造‘永不落幕的东盟贸易博览会’”为愿景。孙锁军说：“我们希望通过‘美丽湾’东盟电子商务平台的平台优势，带动广西和东盟进入国内的实体企业实现电子商务化，把广西和东盟的特色文化和特色产品推广向国内市场。同时，我们希望能通过‘美丽湾’东盟电子商务平台，用互联网技术和互联网思维方式，解决和提升中国与东盟间的物流、资金流、信息流等贸易配套系统，配合国家东盟战略，促进和扩大中国-东盟间的边贸往来。”
</p>', 3, 3, 0, 0, 0, 0, 1, 0, 1, N'admin', CAST(0x0000A47D0004581C AS DateTime), CAST(0x0000A753016350D5 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[dt_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [tags], [zhaiyao], [content], [sort_id], [click], [status], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time], [composition_scheme], [site_requirements], [cost_budget], [exhibition_time], [resource_linkage], [resource_phone]) VALUES (29, 6, 53, N'', N'淘宝严厉打击刷单行为 三家网店虚假交易受罚关门', N'', N'/upload/201704/16/201704162213242320.jpg', N'淘宝严厉打击刷单行为 三家网店虚假交易受罚关门', N'淘宝网,成交量,店铺,刷单', N'网络中介平台专门招聘兼职人员当刷手，帮淘宝网上的卖家刷虚假成交量和好评，以此获利。大三学生“卧底”近3个月，揭开“淘宝卖家——中介平台——刷手”的交易内幕', N'淘宝', N'&amp;emsp;&amp;emsp;楚天都市报讯 楚天都市报讯（记者吕锐实习生李炯）网络中介平台专门招聘兼职人员当刷手，帮淘宝网上的卖家刷虚假成交量和好评，以此获利。大三学生“卧底”近3个月，揭开“淘宝卖家——中介平台——刷手”的交易内幕。4月15日，楚天都市报重点报道此事后，…', N'<p>
	&emsp;&emsp;楚天都市报讯 楚天都市报讯（记者吕锐实习生李炯）网络中介平台专门招聘兼职人员当刷手，帮淘宝网上的卖家刷虚假成交量和好评，以此获利。大三学生“卧底”近3个月，揭开“淘宝卖家——中介平台——刷手”的交易内幕。4月15日，楚天都市报重点报道此事后，引起广泛社会关注，淘宝网昨日也对本报报道进行了回应。
</p>
<p>
	&emsp;&emsp;淘宝网相关负责人表示，对于本报报道中披露的有刷单行为的“诺众个人护理专营店”、“广场舞服装新款套装”、“古今中外专柜正品文胸”三家淘宝卖家，已进行关店处理。
</p>
<p>
	&emsp;&emsp;另外，该负责人称，淘宝网一直坚持严厉打击刷成交量、刷好评等信用炒作行为。截至目前，淘宝网通过系统核查、人工审核、全网举报等一系列举措对信用炒作实施打击，一旦发现，对涉嫌虚假销量、信用的店铺和商品，视严重程度给予扣分、搜索降权甚至关闭店铺的严肃处理。淘宝网也积极关注可能出现的信用炒作新动向，如中介网站炒作等情况，也逐步列入淘宝监控体系中。
</p>
<p>
	&emsp;&emsp;同时，根据淘宝规则规定，买家如协助卖家进行虚假交易的，淘宝将视情节严重程度采取关闭订单、警告、限制买家行为甚至封号等处理。
</p>
<p>
	&emsp;&emsp;淘宝网提醒淘宝卖家，不要相信那些打着炒作信用之名行诈骗网店之实的外部网站。如果一旦发现有类似的网站，请立即致电 淘 宝 客 服 电 话 （0571－88157858）或者进入淘宝网交易安全专区（http://trust.taobao.com）进行投诉举报。
</p>', 2, 0, 0, 0, 0, 0, 1, 0, 1, N'admin', CAST(0x0000A47D00A931AC AS DateTime), CAST(0x0000A757016E3C54 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[dt_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [tags], [zhaiyao], [content], [sort_id], [click], [status], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time], [composition_scheme], [site_requirements], [cost_budget], [exhibition_time], [resource_linkage], [resource_phone]) VALUES (30, 6, 53, N'', N'今年海外购房额或达350亿美元 中国房东将遍布世界', N'', N'/upload/201704/16/201704162213161043.jpg', N'今年海外购房额或达350亿美元 中国房东将遍布世界', N'今年海外购房额或达350亿美元 中国房东将遍布世界,海外购房,中国房东', N'今年国人海外购房额或达350亿美元 未来中国房东将遍布世界首选伦敦 ■本报记者王丽新 “越来越多的投资人涌入到海外房产置业的大军当中”，万国置地集团总裁史锐雪向记者表示，随着中国人从投资海外房产中受益，未来将会出现全世界都有中国房东的局面。', N'海外购房', N'&amp;emsp;&amp;emsp;“越来越多的投资人涌入到海外房产置业的大军当中”，万国置地集团总裁史锐雪向记者表示，随着中国人从投资海外房产中受益，未来将会出现全世界都有中国房东的局面。&amp;emsp;&amp;emsp;有数据显示，2014年，中国个人海外房产投资总额为165亿美元，与201…', N'<p>
	&emsp;&emsp;“越来越多的投资人涌入到海外房产置业的大军当中”，万国置地集团总裁史锐雪向记者表示，随着中国人从投资海外房产中受益，未来将会出现全世界都有中国房东的局面。
</p>
<p>
	&emsp;&emsp;有数据显示，2014年，中国个人海外房产投资总额为165亿美元，与2013年相比，同比增长了46%。
</p>
<p>
	&emsp;&emsp;“我们预计，2015年中国个人海外房产投资总额将是2014年的1倍，有望达到350亿美元。”史锐雪表示，预计未来5年至10年中，这个数字将会达到平均每年150%至200%的增长速度。
</p>
<p>
	&emsp;&emsp;<strong>伦敦成为国人海外购房首选</strong> 
</p>
<p>
	&emsp;&emsp;据《证券日报》记者了解，目前为止，在中国个人海外投资所青睐的国家当中，欧洲排名第一，获得了中国投资客户55亿美元的投资总额，其中，40亿美元流向伦敦；澳洲获得了30亿美元的投资，其中，悉尼获得了22亿美元；北美(主要是以美国的纽约和加州)，加拿大(主要是温哥华和多伦多)，大概获得了25亿美元。
</p>
<p>
	&emsp;&emsp;莱坊亚太区研究部主管Nicholas Holt也向记者表示，亚洲买家对澳洲和新西兰的物业需求依然强劲，并一直由中国投资者主导。此外，国内的私人投资者跟随绿地集团，太古，中国万科和Lodha集团踏足国际投资市场。
</p>
<p>
	&emsp;&emsp;“中国人在海外投资房地产通常主要看两个指标，一个是房产的出租回报率，另一个则是贷款利率。”史锐雪向《证券日报》等记者表示，再加上中国房地产市场的不明朗，中国个人投资海外房产的热度也越来越高。
</p>
<p>
	&emsp;&emsp;她进一步解释道，以上海和北京这种一线城市房价指数来看，每年出租回报率只有2%，而商业贷款利率大概是8%，出租回报率是完全没有办法覆盖贷款利率的。与加拿大对比来看，若外国人在加拿大贷款买房，一般可以借贷额可以达到总房款的70%，此外，首付一般只需要10%，但出租回报率是7%，贷款利率只有2.3%。
</p>
<p>
	&emsp;&emsp;“对比可知，中国人在投资加拿大房产的过程中，可以实现以租养贷。此外，除了通过银行贷款投入少量的现金，实现海外房产配置外，还可以获得丰富的现金流。”史锐雪如是表示。
</p>
<p>
	&emsp;&emsp;<strong>海外投资或成倍增长</strong> 
</p>
<p>
	&emsp;&emsp;在史锐雪看来，与2014年中国个人海外房产投资同比增长46%相比，2015年将实现同比增长100%，而未来5年至10年中，可能保持年增长幅度超过100%的水平。事实上，若中国人去海外投资房地产的步伐真的实现史锐雪的预期，这将意味着可能未来全世界都有中国房东。
</p>
<p>
	&emsp;&emsp;莱坊机构表示，中国内地和香港的超高净值人士平均每人分别拥有4.7个和4.6个住宅物业，膺全球前两位。
</p>
<p>
	&emsp;&emsp;对此，莱坊全球住宅研究部主管Liam Bailey向《证券日报》记者表示，中国内地投资需求增长方面有着巨大的潜力，但大量私人财富尚未在全球进行多元化投资，随着时间的推移，更多的资金将投资到海外。
</p>
<p>
	&emsp;&emsp;鉴于此，万国置地于近期上线了名为“海外楼市”的线上房源网站。据悉，万国置地与15个国家的开发商合作，而海外楼市网向国内的购房客户展示的房源达到100万套，包括一手房和二手房信息。
</p>
<p>
	&emsp;&emsp;值得一提的是，据万国置地介绍，海外楼市网是免费为中国购房人服务的，靠收取开发商的地产经纪的佣金来盈利。至于万国置地运营该网站的资金来源，“2014年至今，全部都是靠自有资金运营。接下来若引入投资，可能会用在全国一线和二线城市设立20个资讯办公网点。”
</p>
<p>
	&emsp;&emsp;从万国置地的战略中可以窥见其对中国人海外购房市场增速的信心，史锐雪也认为，这一市场蛋糕很大。
</p>
<p>
	&emsp;&emsp;但从另一个层面上来讲，虽然海外购房投资总额一直在增长，但在海外购房还是存有不少风险。“价格不对称是一个风险问题。”史锐雪坦言，2014年，“我们的投资人通过各种途径都看到了在一些欧洲国家买房子买贵了的现象，其背后是一些中介机构在价格上做了水分。”
</p>
<p>
	&emsp;&emsp;另有业内人士则向记者表示，除了价格不对称问题，还有法律风险，因不了解当地市场真实状况，买卖时机难以把握的风险。当然，也包括汇率风险。
</p>', 1, 1, 0, 0, 0, 0, 1, 0, 1, N'admin', CAST(0x0000A47D00AA6F40 AS DateTime), CAST(0x0000A7590177067F AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[dt_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [tags], [zhaiyao], [content], [sort_id], [click], [status], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time], [composition_scheme], [site_requirements], [cost_budget], [exhibition_time], [resource_linkage], [resource_phone]) VALUES (37, 9, 17, N'', N'现代简约 明亮的外表卧室卧室背景墙、吊顶黄色', N'', N'/upload/201504/18/thumb_201504181230434303.jpg', N'现代简约 明亮的外表卧室卧室背景墙、吊顶黄色', N'现代简约,卧室卧室背景墙,吊顶黄色', N'不要简朴不要素雅洋气卧室我做主，高低床榻榻米式靓丽卧室装扮，现代油画壁画帆布画卧室餐厅仟象映画，现代中式卧室装修图欣赏，温馨浪漫，而且很时尚的卧室设计，欧式卧室飘窗装修效果图。', N'卧室', N'不要简朴不要素雅洋气卧室我做主，高低床榻榻米式靓丽卧室装扮，现代油画壁画帆布画卧室餐厅仟象映画，现代中式卧室装修图欣赏，温馨浪漫，而且很时尚的卧室设计，欧式卧室飘窗装修效果图。', N'不要简朴不要素雅洋气卧室我做主，高低床榻榻米式靓丽卧室装扮，现代油画壁画帆布画卧室餐厅仟象映画，现代中式卧室装修图欣赏，温馨浪漫，而且很时尚的卧室设计<span id="__kindeditor_bookmark_start_8__">，欧式卧室飘窗装修效果图。</span>', 99, 0, 0, 1, 0, 1, 0, 0, 1, N'admin', CAST(0x0000A47E00CE3988 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[dt_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [tags], [zhaiyao], [content], [sort_id], [click], [status], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time], [composition_scheme], [site_requirements], [cost_budget], [exhibition_time], [resource_linkage], [resource_phone]) VALUES (38, 9, 17, N'', N'很美的落地大书柜 可以放超多的图书的吧', N'', N'/upload/201504/18/thumb_201504181237019134.jpg', N'很美的落地大书柜 可以放超多的图书的吧', N'书柜,图书的吧,转角书柜,书桌，双层书柜,组合书柜,儿童书柜。', N'很美的落地大书柜 可以放超多的图书的吧，转角的书柜以及书桌，这里可以收纳超多的东西，书柜,书桌这些是"七彩人生"品，双层书柜组合书柜儿童书柜。', N'书柜', N'很美的落地大书柜 可以放超多的图书的吧，转角的书柜以及书桌，这里可以收纳超多的东西，书柜,书桌这些是&quot;七彩人生&quot;品，双层书柜组合书柜儿童书柜。', N'很美的落地大书柜 可以放超多的图书的吧，转角的书柜以及书桌，这里可以收纳超多的东西，书柜,书桌这些是"七彩人生"品，双层书柜组合书柜儿童书柜。', 99, 0, 0, 1, 0, 1, 0, 0, 1, N'admin', CAST(0x0000A47E00D0004B AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[dt_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [tags], [zhaiyao], [content], [sort_id], [click], [status], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time], [composition_scheme], [site_requirements], [cost_budget], [exhibition_time], [resource_linkage], [resource_phone]) VALUES (39, 9, 17, N'', N'西班牙阿拉尔孔郊区的80平米一室一厅的公寓', N'', N'/upload/201504/18/thumb_201504181241259978.jpg', N'西班牙阿拉尔孔郊区的80平米一室一厅的公寓', N'西班牙阿拉尔孔郊区的80平米一室一厅的公寓', N'这是一套在西班牙阿拉尔孔郊区的80平米一室一厅的公寓，用一道墙分隔出了客厅与厨房，虽然整体来看室内设计有些混搭风，但似乎某些空间和角度去看又会有着自己的主题。', N'', N'这是一套在西班牙阿拉尔孔郊区的80平米一室一厅的公寓，用一道墙分隔出了客厅与厨房，虽然整体来看室内设计有些混搭风，但似乎某些空间和角度去看又会有着自己的主题。', N'这是一套在西班牙阿拉尔孔郊区的80平米一室一厅的公寓，用一道墙分隔出了客厅与厨房，虽然整体来看室内设计有些混搭风，但似乎某些空间和角度去看又会有着自己的主题。', 99, 0, 0, 1, 0, 1, 0, 0, 1, N'admin', CAST(0x0000A47E00D12F63 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[dt_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [tags], [zhaiyao], [content], [sort_id], [click], [status], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time], [composition_scheme], [site_requirements], [cost_budget], [exhibition_time], [resource_linkage], [resource_phone]) VALUES (40, 9, 18, N'', N'欧式风格继承了巴洛克风格中豪华、动感、多变的视觉效果', N'', N'/upload/201504/18/thumb_201504181246376332.jpg', N'欧式风格继承了巴洛克风格中豪华、动感、多变的视觉效果', N'欧式风格,豪华,动感,多变,视觉效果', N'继上编欧式客厅装修效果图之后，今天，小编为大家带来的是一组不同类型的欧式卧室装修效果图。欧式卧室的设计风格按不同的地域文化可分为北欧卧室、简欧卧室和传统欧式卧室。在中国，因为欧式风格继承了巴洛克风格中豪华、动感、多变的视觉效果，也吸取了洛可可风格中唯美、律动的细节处理元素，所以很受上层人士的青睐。', N'', N'继上编欧式客厅装修效果图之后，今天，小编为大家带来的是一组不同类型的欧式卧室装修效果图。欧式卧室的设计风格按不同的地域文化可分为北欧卧室、简欧卧室和传统欧式卧室。在中国，因为欧式风格继承了巴洛克风格中豪华、动感、多变的视觉效果，也吸取了洛可可风格中唯美、律…', N'继上编欧式客厅装修效果图之后，今天，小编为大家带来的是一组不同类型的欧式卧室装修效果图。欧式卧室的设计风格按不同的地域文化可分为北欧卧室、简欧卧室和传统欧式卧室。在中国，因为欧式风格继承了巴洛克风格中豪华、动感、多变的视觉效果，也吸取了洛可可风格中唯美、律动的细节处理元素，所以很受上层人士的青睐。', 99, 0, 0, 1, 0, 1, 0, 0, 1, N'admin', CAST(0x0000A47E00D29E7C AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[dt_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [tags], [zhaiyao], [content], [sort_id], [click], [status], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time], [composition_scheme], [site_requirements], [cost_budget], [exhibition_time], [resource_linkage], [resource_phone]) VALUES (41, 9, 18, N'', N'居住在这样的房子容易出现自杀或血光之灾的现象', N'', N'/upload/201504/18/thumb_201504181252034877.jpg', N'居住在这样的房子容易出现自杀或血光之灾的现象', N'居住,房子,自杀,血光之灾,现象', N'如果选择在三角形的地方上盖房，此类地方出现自杀现象的机率比较高。如果所住的大楼是呈现三角形的状态，那居住在这样的房子，也是容易出现自杀或血光之灾的现象', N'', N'1、房屋风水学之地形如果选择在三角形的地方上盖房，此类地方出现自杀现象的机率比较高。如果所住的大楼是呈现三角形的状态，那居住在这样的房子，也是容易出现自杀或血光之灾的现象。2、房屋风水学之电线杆对大门在房屋风水学中，电线杆直对房屋的大门正中或者窗户正中(仅限于…', N'<strong>1、房屋风水学之地形</strong><br />
如果选择在三角形的地方上盖房，此类地方出现自杀现象的机率比较高。如果所住的大楼是呈现三角形的状态，那居住在这样的房子，也是容易出现自杀或血光之灾的现象。<br />
<strong>2、房屋风水学之电线杆对大门</strong><br />
在房屋风水学中，电线杆直对房屋的大门正中或者窗户正中(仅限于比较大的窗户)这样的情况，是容易损害一个家的运气，另外电线杆的电流也是会影响一个人的思维，常年积累容易损伤精神，从而出现想不开或者精神出现问题的现象。<br />
<strong>3、房屋风水学之采光过差</strong><br />
正常的房子白天都有适合的光线，但有些房子的亮度不行，特别是有些房子白天也必须开灯，否则就看不见，滴天居士提醒这类的房子必须要加上常明灯才可以，否则此类房子会泄主人的阳气，多为不利，对体质或元气弱的人多有危险。<br />
这类的风水中也常见有自杀的现象，特别是在一些大厦里，采光不畅或阴气过旺，常见若干自杀案例。正常情况下，一个人走出家门或走入家门时的走廊需要多加强光亮度，因为建筑结构因素，如果不能采光的话也要安装一盏亮度略高的灯为好。<br />
<strong>4、房屋风水学之进门</strong><br />
如果居住在进口狭窄的地方，主风水不利，特别大门直对着电梯的主风水不吉，滴天居士建议此类房子可以用一对镇宅风水物直对着电梯为好，<br />
<strong>5、房屋风水学之房子空间比例</strong><br />
正常的房子都是底层或一层比较高，但如果是因为种种原因，出现了一层不高，但二层或三层比较高，那这样的房子主风水不利，易出现血光之灾或自杀倾向的事件。<br />', 99, 1, 0, 1, 0, 0, 0, 0, 1, N'admin', CAST(0x0000A47E00D42604 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[dt_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [tags], [zhaiyao], [content], [sort_id], [click], [status], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time], [composition_scheme], [site_requirements], [cost_budget], [exhibition_time], [resource_linkage], [resource_phone]) VALUES (42, 9, 18, N'', N'100平米田园雅居三口之家 自然舒适空间', N'', N'/upload/201504/18/thumb_201504181255546022.jpg', N'100平米田园雅居三口之家 自然舒适空间', N'100平米,田园雅居,三口之家,自然舒适,空间', N'设计师认为田园风格几乎可以等同于乡村风格。所以作为田园风格的载体——乡村。由于比城市更贴近原始自然环境，而居住在乡村里的人们的生活方式淳朴，生性豁达率性，心理压力小。', N'', N'设计师认为田园风格几乎可以等同于乡村风格。所以作为田园风格的载体——乡村。由于比城市更贴近原始自然环境，而居住在乡村里的人们的生活方式淳朴，生性豁达率性，心理压力小。所以在现今日益发达的城市中，因为繁杂喧闹并且污染越来越严重的城市环境和快速的生活节奏，繁忙…', N'设计师认为田园风格几乎可以等同于乡村风格。所以作为田园风格的载体——乡村。由于比城市更贴近原始自然环境，而居住在乡村里的人们的生活方式淳朴，生性豁达率性，心理压力小。所以在现今日益发达的城市中，因为繁杂喧闹并且污染越来越严重的城市环境和快速的生活节奏，繁忙的工作压力。使得现代的城市人将羡慕的眼光投向了曾经不屑的乡村。他们重新开始对乡村生活方式感到好奇或向往。', 99, 0, 0, 1, 0, 1, 0, 0, 1, N'admin', CAST(0x0000A47E00D52028 AS DateTime), CAST(0x0000A47E00D54423 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[dt_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [tags], [zhaiyao], [content], [sort_id], [click], [status], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time], [composition_scheme], [site_requirements], [cost_budget], [exhibition_time], [resource_linkage], [resource_phone]) VALUES (43, 9, 18, N'', N'清新有活力的公寓设计 用色彩焕然一新', N'', N'/upload/201504/18/thumb_201504181258575445.jpg', N'清新有活力的公寓设计 用色彩焕然一新', N'清新,活力,公寓设计,色彩,焕然一新', N'Widawscy Studio为华沙的一处公寓做了设计，初看是最为保守的白底搭配木质元素，细看发现每个空间都被赋予了不同的色彩。', N'', N'Widawscy Studio为华沙的一处公寓做了设计，初看是最为保守的白底搭配木质元素，细看发现每个空间都被赋予了不同的色彩。面积最大的公共空间，包括客厅，餐厅和厨房采用了黄色的，让家人相聚时始终保持一颗愉快的心情，沉稳的灰色的主卧，轻快的蓝色调卧室，被芥末绿铺满的卫生…', N'Widawscy Studio为华沙的一处公寓做了设计，初看是最为保守的白底搭配木质元素，细看发现每个空间都被赋予了不同的色彩。面积最大的公共空间，包括客厅，餐厅和厨房采用了黄色的，让家人相聚时始终保持一颗愉快的心情，沉稳的灰色的主卧，轻快的蓝色调卧室，被芥末绿铺满的卫生间，减少配饰的使用 ，用色彩焕然一新。', 99, 3, 0, 1, 0, 1, 0, 0, 1, N'admin', CAST(0x0000A47E00D6047A AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[dt_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [tags], [zhaiyao], [content], [sort_id], [click], [status], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time], [composition_scheme], [site_requirements], [cost_budget], [exhibition_time], [resource_linkage], [resource_phone]) VALUES (44, 9, 19, N'', N'Hossein Zare 的超现实摄影作品', N'', N'/upload/201504/18/thumb_201504181343191605.jpg', N'Hossein Zare 的超现实摄影作品', N'Hossein Zare,摄影作品', N'Zare创作了这组近似于彩色插画般的照片。注意他是如何将现实中的自然与城市风光融入到自己想象中的空间里去的。', N'', N'我们曾介绍过Hossein Zare的极简黑白摄影作品。这一次，摄影师将带领我们进入一个在现实中并不存在的梦想世界。Zare创作了这组近似于彩色插画般的照片。注意他是如何将现实中的自然与城市风光融入到自己想象中的空间里去的。', N'<p>
	我们曾介绍过Hossein Zare的极简黑白摄影作品。这一次，摄影师将带领我们进入一个在现实中并不存在的梦想世界。
</p>
<p>
	Zare创作了这组近似于彩色插画般的照片。注意他是如何将现实中的自然与城市风光融入到自己想象中的空间里去的。
</p>', 99, 0, 0, 1, 0, 0, 0, 0, 1, N'admin', CAST(0x0000A47E00E2242E AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[dt_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [tags], [zhaiyao], [content], [sort_id], [click], [status], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time], [composition_scheme], [site_requirements], [cost_budget], [exhibition_time], [resource_linkage], [resource_phone]) VALUES (45, 9, 20, N'', N'Vassilis Tangoulis意境风光摄影作品', N'', N'/upload/201504/18/thumb_201504181347324908.jpg', N'Vassilis Tangoulis意境风光摄影作品', N'Vassilis Tangoulis,意境风光,摄影作品', N'Vassilis Tangoulis 白色的沉默摄影作品集，Vassilis Tangoulis 是一位屡获殊荣的艺术摄影师，他创作了一组迷人的黑白意境摄影作品，每一张图片都传达了沉默中的宁静时光，给人以宁静致远的深思。', N'', N'Vassilis Tangoulis 白色的沉默摄影作品集，Vassilis Tangoulis 是一位屡获殊荣的艺术摄影师，他创作了一组迷人的黑白意境摄影作品，每一张图片都传达了沉默中的宁静时光，给人以宁静致远的深思。', N'Vassilis Tangoulis 白色的沉默摄影作品集，Vassilis Tangoulis 是一位屡获殊荣的艺术摄影师，他创作了一组迷人的黑白意境摄影作品，每一张图片都传达了沉默中的宁静时光，给人以宁静致远的深思。', 99, 0, 0, 1, 0, 0, 0, 0, 1, N'admin', CAST(0x0000A47E00E34F30 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[dt_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [tags], [zhaiyao], [content], [sort_id], [click], [status], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time], [composition_scheme], [site_requirements], [cost_budget], [exhibition_time], [resource_linkage], [resource_phone]) VALUES (46, 9, 21, N'', N'Takashi Kitajima梦幻迷离的城市夜景摄影作品', N'', N'/upload/201504/18/thumb_201504181350088573.jpg', N'Takashi Kitajima梦幻迷离的城市夜景摄影作品', N'Takashi Kitajima,梦幻迷离,城市,夜景,摄影作品', N'这组梦幻夜景来自日本摄影师Takashi Kitajima，拍摄的都是东京的夜景。摄影师将模糊的光斑与现实中的全景城市相结合，抽象了建筑物原本轮廓分明的线条，创作出了这个光怪陆离的奇幻世界。', N'', N'这组梦幻夜景来自日本摄影师Takashi Kitajima，拍摄的都是东京的夜景。摄影师将模糊的光斑与现实中的全景城市相结合，抽象了建筑物原本轮廓分明的线条，创作出了这个光怪陆离的奇幻世界。', N'这组梦幻夜景来自日本摄影师Takashi Kitajima，拍摄的都是东京的夜景。摄影师将模糊的光斑与现实中的全景城市相结合，抽象了建筑物原本轮廓分明的线条，创作出了这个光怪陆离的奇幻世界。', 99, 0, 0, 1, 0, 0, 0, 0, 1, N'admin', CAST(0x0000A47E00E4047C AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[dt_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [tags], [zhaiyao], [content], [sort_id], [click], [status], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time], [composition_scheme], [site_requirements], [cost_budget], [exhibition_time], [resource_linkage], [resource_phone]) VALUES (47, 9, 20, N'', N'宁静唯美的黑白风光摄影欣赏', N'', N'/upload/201504/18/thumb_201504181353090559.jpg', N'宁静唯美的黑白风光摄影欣赏', N'宁静唯美,黑白风光,摄影欣赏', N'摄影绝不仅仅只是按动快门那么简单，色彩上微妙的变化，拍摄的时候尝试调节不同的曝光补偿，一张好的黑白摄影布光发挥了至关重要的作用，同时对于我来说是不同寻常的', N'', N'摄影绝不仅仅只是按动快门那么简单，色彩上微妙的变化，拍摄的时候尝试调节不同的曝光补偿，一张好的黑白摄影布光发挥了至关重要的作用，同时对于我来说是不同寻常的。肉丁为你分享不一样的黑白摄影，下面给大家分享一篇像油画一样迷人的黑白色的风景摄影作品欣赏，看摄影师的…', N'摄影绝不仅仅只是按动快门那么简单，色彩上微妙的变化，拍摄的时候尝试调节不同的曝光补偿，一张好的黑白摄影布光发挥了至关重要的作用，同时对于我来说是不同寻常的。肉丁为你分享不一样的黑白摄影，下面给大家分享一篇像油画一样迷人的黑白色的风景摄影作品欣赏，看摄影师的精彩作品、试着享受孤独的宁静.享受拍摄的乐趣，希望你能够喜欢这些情趣盎然的作品，一起欣赏吧。每个人对照片都有自己不同的品味和选择，色彩上微妙的变化，自然光能够做主光、侧光、背光和轮廓光，却能吸引旁人的眼球，可以透过相机的眼睛，发现生活的美丽，而且对于我来说是不同寻常的。肉丁带你领略不同的黑白摄影，这里有一篇像油画一样迷人的黑白色的风景摄影作品欣赏，结合这些照片的拍摄技巧、一睹大师的风采，希望能带给你快乐，这里你可以看到一些美丽的照片。', 99, 0, 0, 1, 0, 0, 0, 0, 1, N'admin', CAST(0x0000A47E00E4D906 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[dt_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [tags], [zhaiyao], [content], [sort_id], [click], [status], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time], [composition_scheme], [site_requirements], [cost_budget], [exhibition_time], [resource_linkage], [resource_phone]) VALUES (48, 9, 20, N'', N'西班牙摄影师的人像创意摄影作品：血秀', N'', N'/upload/201504/18/thumb_201504181356417887.jpg', N'西班牙摄影师的人像创意摄影作品：血秀', N'西班牙,摄影师,血秀', N'这组名为“血秀（The Blood Show）”的作品是为《Ae》杂志拍摄，艺术指导/造型师：Kattaca，化妆师/发型师：Yurema Villa。', N'', N'现居马德里的西班牙摄影师Paco Peregrn的西班牙摄影师的人像创意摄影作品。这组名为“血秀（The Blood Show）”的作品是为《Ae》杂志拍摄，艺术指导/造型师：Kattaca，化妆师/发型师：Yurema Villa。PacoPeregrn生于西班牙阿尔梅利亚，毕业于塞尔维亚艺术学院，后又到圣马丁艺…', N'<p>
	现居马德里的西班牙摄影师Paco Peregrín的西班牙摄影师的人像创意摄影作品。
</p>
<p>
	这组名为“血秀（The Blood Show）”的作品是为《Ae》杂志拍摄，艺术指导/造型师：Kattaca，化妆师/发型师：Yurema Villa。
</p>
<p>
	PacoPeregrín生于西班牙阿尔梅利亚，毕业于塞尔维亚艺术学院，后又到圣马丁艺术设计学院国际摄影中心、安达卢西亚当代艺术中心、安达卢西亚摄影中心、马德里康普顿斯大学、圣地亚哥德孔波斯特拉大学等处学习摄影和艺术。他继承了西班牙人热情奔放的性格，也浸染了滋养过达利、高迪等大批天才艺术家的五彩斑斓的西班牙文化。他的作品用色大胆、构图多样，充满想象力。他混合了感官刺激和前卫艺术的元素，创作出兼具情色、高雅和神秘风情的作品，在摄影领域独树一帜。<br />
&nbsp;多年来，他不仅在艺术摄影领域取得了巨大的成功，具有世界范围的影响力，还在时尚和商业摄影领域获得了成功，作品被众多世界顶级的时尚杂志追捧。耐克、阿迪达斯、马自达、丰田等世界著名品牌都成为他的客户。PacoPeregrín：我在塞维利亚长大，那是一座充满巴洛克风格的城市。这种环境对我的审美和艺术感受力影响深远，我非常喜欢这种风格。在我的作品中，这种风格非常明显，比如光线的运用、戏剧化的效果等。不过我也喜欢一些与之截然相反的艺术形式，比如极简派艺术。我的作品常常有多种艺术风格糅合其中，比如弗兰德斯画派的风格和超现实主义艺术等。在工作中，我既像演员，又像舞台设计师，还是造型师、服装设计师和导演。
</p>', 99, 0, 0, 1, 0, 0, 0, 0, 1, N'admin', CAST(0x0000A47E00E5E7CC AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[dt_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [tags], [zhaiyao], [content], [sort_id], [click], [status], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time], [composition_scheme], [site_requirements], [cost_budget], [exhibition_time], [resource_linkage], [resource_phone]) VALUES (49, 9, 24, N'', N'国产嫩模许喵喵Mickey大尺度写真最新曝光 胸大不忍直视', N'', N'/upload/201504/18/thumb_201504181404062204.jpg', N'国产嫩模许喵喵Mickey大尺度写真最新曝光 胸大不忍直视', N'许喵喵Mickey,写真', N'近日，国产嫩模许喵喵Mickey在微博上晒出一组大尺度写真引发热议。＠许喵喵Mickey 自己描述：“等了你一千年，来为我画眉，前世埋我的人，我来报你的恩，人间冰冷，别怪我是妖，有时妖心慈过世人心。（感谢《妖蛇》摄制组全体工作人员，大家辛苦了）”', N'', N'近日，国产嫩模许喵喵Mickey在微博上晒出一组大尺度写真引发热议。＠许喵喵Mickey 自己描述：“等了你一千年，来为我画眉，前世埋我的人，我来报你的恩，人间冰冷，别怪我是妖，有时妖心慈过世人心。（感谢《妖蛇》摄制组全体工作人员，大家辛苦了）”', N'近日，国产嫩模许喵喵Mickey在微博上晒出一组大尺度写真引发热议。＠许喵喵Mickey 自己描述：“等了你一千年，来为我画眉，前世埋我的人，我来报你的恩，人间冰冷，别怪我是妖，有时妖心慈过世人心。（感谢《妖蛇》摄制组全体工作人员，大家辛苦了）”', 99, 2, 0, 1, 0, 0, 0, 0, 1, N'admin', CAST(0x0000A47E00E7E3AC AS DateTime), CAST(0x0000A47E00EB018D AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[dt_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [tags], [zhaiyao], [content], [sort_id], [click], [status], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time], [composition_scheme], [site_requirements], [cost_budget], [exhibition_time], [resource_linkage], [resource_phone]) VALUES (50, 9, 23, N'', N'有气质且带可爱的美女组图', N'', N'/upload/201504/18/thumb_201504181416251481.jpg', N'有气质且带可爱的美女组图', N'有气质且带可爱的美女组图', N'有气质且带可爱的美女组图', N'', N'有气质且带可爱的美女组图有气质且带可爱的美女组图有气质且带可爱的美女组图', N'有气质且带可爱的美女组图有气质且带可爱的美女组图有气质且带可爱的美女组图', 99, 2, 0, 1, 0, 0, 0, 0, 1, N'admin', CAST(0x0000A47E00EB90B0 AS DateTime), CAST(0x0000A47E00ECA4DB AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[dt_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [tags], [zhaiyao], [content], [sort_id], [click], [status], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time], [composition_scheme], [site_requirements], [cost_budget], [exhibition_time], [resource_linkage], [resource_phone]) VALUES (51, 9, 23, N'', N'超甜美的韩国美女美图欣赏', N'', N'/upload/201504/18/thumb_201504181420529760.jpg', N'超甜美的韩国美女美图', N'超甜美的韩国美女美图', N'收集了甜素纯美女写真图1等精彩图片,同时汇集美女图片,搞笑图片,奇闻趣事,风景图片,明星写真,娱乐八卦,气质,清纯,非主流,美女,高清图片', N'', N'收集了甜素纯美女写真图1等精彩图片,同时汇集美女图片,搞笑图片,奇闻趣事,风景图片,明星写真,娱乐八卦,气质,清纯,非主流,美女,高清图片', N'收集了甜素纯美女写真图1等精彩图片,同时汇集美女图片,搞笑图片,奇闻趣事,风景图片,明星写真,娱乐八卦,气质,清纯,非主流,美女,高清图片', 99, 2, 0, 1, 0, 0, 0, 0, 1, N'admin', CAST(0x0000A47E00EC7BF4 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[dt_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [tags], [zhaiyao], [content], [sort_id], [click], [status], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time], [composition_scheme], [site_requirements], [cost_budget], [exhibition_time], [resource_linkage], [resource_phone]) VALUES (52, 9, 22, N'', N'柳岩出席设计师好友兰玉的高级成衣发布Show', N'', N'/upload/201504/18/thumb_201504181426524427.jpg', N'柳岩出席设计师好友兰玉的高级成衣发布Show', N'柳岩出席设计师好友兰玉的高级成衣发布Show', N'北京四季酒店,柳岩出席设计师好友兰玉的高级成衣发布Show,她身穿兰玉设计的纯白卡肩礼服惊艳登场,优雅晚装发髻搭配翡翠镶钻珠宝,举手投足尽显大气温婉,而卡肩低胸的礼服设计更是衬托出柳岩傲人的事业线资本', N'', N'北京四季酒店,柳岩出席设计师好友兰玉的高级成衣发布Show,她身穿兰玉设计的纯白卡肩礼服惊艳登场,优雅晚装发髻搭配翡翠镶钻珠宝,举手投足尽显大气温婉,而卡肩低胸的礼服设计更是衬托出柳岩傲人的事业线资本,性感指数爆灯,入场即引来现场阵阵骚动,柳岩轻松看秀全程甜笑连连,心情…', N'北京四季酒店,柳岩出席设计师好友兰玉的高级成衣发布Show,她身穿兰玉设计的纯白卡肩礼服惊艳登场,优雅晚装发髻搭配翡翠镶钻珠宝,举手投足尽显大气温婉,而卡肩低胸的礼服设计更是衬托出柳岩傲人的事业线资本,性感指数爆灯,入场即引来现场阵阵骚动,柳岩轻松看秀全程甜笑连连,心情靓绝。', 99, 0, 0, 1, 0, 0, 0, 0, 1, N'admin', CAST(0x0000A47E00EE27A4 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[dt_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [tags], [zhaiyao], [content], [sort_id], [click], [status], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time], [composition_scheme], [site_requirements], [cost_budget], [exhibition_time], [resource_linkage], [resource_phone]) VALUES (53, 9, 22, N'', N'昆凌最新大片', N'', N'/upload/201504/18/thumb_201504181431411505.jpg', N'昆凌最新大片', N'昆凌,写真', N'昆凌与周杰伦新婚后就马上投入了工作中，近日一组时尚大片她穿上最新一季春装，脸颊红扑扑对镜头甜笑，展露青春气息。', N'', N'昆凌与周杰伦新婚后就马上投入了工作中，近日一组时尚大片她穿上最新一季春装，脸颊红扑扑对镜头甜笑，展露青春气息。', N'昆凌与周杰伦新婚后就马上投入了工作中，近日一组时尚大片她穿上最新一季春装，脸颊红扑扑对镜头甜笑，展露青春气息。', 99, 4, 0, 1, 0, 1, 0, 0, 1, N'admin', CAST(0x0000A47E00EF6DB8 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[dt_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [tags], [zhaiyao], [content], [sort_id], [click], [status], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time], [composition_scheme], [site_requirements], [cost_budget], [exhibition_time], [resource_linkage], [resource_phone]) VALUES (54, 11, 25, N'about', N'关于我们', N'', N'', N'', N'', N'', N'', N'动力启航（www.dtcms.net）是一个以ASP.NET(C#)+jQuery技术为中心，面向软件开发者、程序爱好者、网页设计师，服务于个人、企业的网站，同时也是一个专门结合AJAX技术开发友好界面、倍受欢迎用户体验的BS模式软件系统，致力打造自己的品牌。DTcms是动力启航旗下一个开源软件产…', N'<p>
	动力启航（www.dtcms.net）是一个以ASP.NET(C#)+jQuery技术为中心，面向软件开发者、程序爱好者、网页设计师，服务于个人、企业的网站，同时也是一个专门结合AJAX技术开发友好界面、倍受欢迎用户体验的BS模式软件系统，致力打造自己的品牌。
</p>
<p>
	DTcms是动力启航旗下一个开源软件产品，最早创建于2009年10月，其本质不以商业为目的，我们的宗旨是让更多的编程爱好者分享交流互联网开发技术。
</p>
<p>
	DTcms之所以开源，最大原因在于国内ASP.NET(c#)开源软件成品太少，相信刚接触编程开发者都跟我一样有很深的体会，书本上的知识很有限，学习的过程中都是一些比较简单的基础知识，偶然发现一个比较成熟的案例，要么就是不开源，要么就是收费。想学习研究却无从下手。在摸索的道路上我仅将自己摸索的一点知识和经验分享出来。
</p>
<p>
	站在巨人的肩膀上，会让你看得更远，走得更快，虽然我们现在不是巨人；编程也一样，在前者的摸索道路上，如果大家都将自己的编程思想和经验共享出来让后人去学习和纠正，那么或许他们就不必走那么多的弯路，互联网的发展是否会更快？
</p>
<p>
	基于以上的追求，限于国产开源界的目前现状，DTcms由此而诞生。
</p>', 99, 0, 0, 0, 0, 0, 0, 0, 1, N'admin', CAST(0x0000A47E0178532C AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[dt_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [tags], [zhaiyao], [content], [sort_id], [click], [status], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time], [composition_scheme], [site_requirements], [cost_budget], [exhibition_time], [resource_linkage], [resource_phone]) VALUES (55, 11, 25, N'contact', N'联系我们', N'', N'', N'', N'', N'', N'', N'动力启航 - 专注互联网开发最前端 官方网址：http://www.dtcms.net http://www.dtsoft.net 所在地区：广东省深圳市宝安区西乡街道业务电话：+86 13695245546新浪微博：http://weibo.com/dtcms', N'<p>
	<strong>动力启航 - 专注互联网开发最前端 </strong> 
</p>
<p>
	<strong>官方网址：</strong><a href="http://www.dtcms.net" target="_blank">http://www.dtcms.net</a><br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="http://www.dtsoft.net">http://www.dtsoft.net</a> 
</p>
<p>
	<strong>所在地区：</strong>广东省深圳市宝安区西乡街道
</p>
<p>
	<strong>业务电话：</strong>+86 13695245546
</p>
<p>
	<strong>新浪微博：</strong><a href="http://weibo.com/dtcms" target="_blank">http://weibo.com/dtcms</a> 
</p>
<p>
	<strong>技术Q群：</strong>17671249（1群已满）、65105443 (2群已满)、65105043 (3群已满)<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;124834949 (4群已满)、264768101（5群）
</p>
<p>
	<strong>电子邮箱：</strong><a href="mailto:info@dtcms.net">info@dtcms.net</a> 
</p>', 99, 0, 0, 0, 0, 0, 0, 0, 1, N'admin', CAST(0x0000A47E0178A4B4 AS DateTime), CAST(0x0000A47E0179ABC3 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[dt_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [tags], [zhaiyao], [content], [sort_id], [click], [status], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time], [composition_scheme], [site_requirements], [cost_budget], [exhibition_time], [resource_linkage], [resource_phone]) VALUES (56, 10, 27, N'', N'干净整洁的绿色扁平化UI套件(PSD)', N'', N'/upload/201504/18/201504182310542211.jpg', N'干净整洁的绿色扁平化UI套件(PSD)', N'扁平化,UI套件,PSD', N'这是一套比较完整扁平化UI，主要以绿色为主，粉色，暗灰色为辅，干净整洁，看上去非常舒服。该UI套件包含了导航、人物列表、日历、视频播放、音乐播放器、登录框等等。', N'UI套件', N'这是一套比较完整扁平化UI，主要以绿色为主，粉色，暗灰色为辅，干净整洁，看上去非常舒服。该UI套件包含了导航、人物列表、日历、视频播放、音乐播放器、登录框等等。', N'<p>
	这是一套比较完整扁平化UI，主要以绿色为主，粉色，暗灰色为辅，干净整洁，看上去非常舒服。该UI套件包含了导航、人物列表、日历、视频播放、音乐播放器、登录框等等。
</p>
<p align="center">
	<img alt="" src="http://idowebok.u.qiniudn.com/71.jpg" />
</p>', 99, 1, 0, 1, 0, 1, 0, 0, 1, N'admin', CAST(0x0000A47E017E24AE AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[dt_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [tags], [zhaiyao], [content], [sort_id], [click], [status], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time], [composition_scheme], [site_requirements], [cost_budget], [exhibition_time], [resource_linkage], [resource_phone]) VALUES (57, 10, 26, N'', N'jqueryrotate制作机锋网积分抽奖效果', N'', N'/upload/201504/18/201504182324354376.jpg', N'jqueryrotate制作机锋网积分抽奖效果', N'jqueryrotate,积分,抽奖', N'应一网友的要求，做了一个类似机锋网积分抽奖的效果。其实这个效果和之前的“百度红包大放送抽奖效果”是一样的，使用了 jQuery 旋转插件——jquery.rotate.js，只是转盘不一样罢了。', N'', N'应一网友的要求，做了一个类似机锋网积分抽奖的效果。其实这个效果和之前的“百度红包大放送抽奖效果”是一样的，使用了 jQuery 旋转插件——jquery.rotate.js，只是转盘不一样罢了。', N'<p>
	应一网友的要求，做了一个类似机锋网积分抽奖的效果。其实这个效果和之前的“百度红包大放送抽奖效果”是一样的，使用了 jQuery 旋转插件——jquery.rotate.js，只是转盘不一样罢了。
</p>
<p align="center">
	<img alt="" src="http://www.dowebok.com/img/148.jpg" />
</p>', 99, 3, 0, 1, 0, 1, 0, 0, 1, N'admin', CAST(0x0000A47E0181DE0F AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[dt_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [tags], [zhaiyao], [content], [sort_id], [click], [status], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time], [composition_scheme], [site_requirements], [cost_budget], [exhibition_time], [resource_linkage], [resource_phone]) VALUES (58, 10, 26, N'', N'jQThumb – jQuery缩略图插件', N'', N'/upload/201504/18/201504182337532823.jpg', N'jQThumb – jQuery缩略图插件', N'jQThumb,jQuery,缩略图插件', N'一堆不同尺寸的图片创建相同尺寸的缩略图可不是件容易的事，除非有一个强大的后台程序或靠谱的软件，如果都没有或不想使用后台程序，那么可以试试 jQThumb。jQThumb 是一款基于 jQuery 的缩略图插件，它能够很方便的制作指定的尺寸的缩略图。', N'', N'为一堆不同尺寸的图片创建相同尺寸的缩略图可不是件容易的事，除非有一个强大的后台程序或靠谱的软件，如果都没有或不想使用后台程序，那么可以试试 jQThumb。jQThumb 是一款基于 jQuery 的缩略图插件，它能够很方便的制作指定的尺寸的缩略图。jQThumb 兼容所有浏览器，包括 I…', N'<p>
	为一堆不同尺寸的图片创建相同尺寸的缩略图可不是件容易的事，除非有一个强大的后台程序或靠谱的软件，如果都没有或不想使用后台程序，那么可以试试 jQThumb。jQThumb 是一款基于 jQuery 的缩略图插件，它能够很方便的制作指定的尺寸的缩略图。
</p>
<p>
	jQThumb 兼容所有浏览器，包括 IE6。在高级浏览器中使用背景方式实现，并设置图片的尺寸（background-size）和位置（background-position）实现居中；在 IE6 等老旧的浏览器中使用图片的方式实现，并使用绝对定位和 margin 实现居中。
</p>
<p align="center">
	<img alt="" src="http://cdn.dowebok.com/img/124.jpg" />
</p>', 99, 0, 0, 1, 0, 0, 0, 0, 1, N'admin', CAST(0x0000A47E01857246 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[dt_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [tags], [zhaiyao], [content], [sort_id], [click], [status], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time], [composition_scheme], [site_requirements], [cost_budget], [exhibition_time], [resource_linkage], [resource_phone]) VALUES (59, 10, 26, N'', N'Tipso – 轻巧的jQuery提示框插件', N'', N'/upload/201504/18/201504182346214199.png', N'Tipso – 轻巧的jQuery提示框插件', N'Tipso ,jQuery,提示框插件', N'Tooltip（提示框）是一种常见的效果，它通常用在需要进一步解释、说明或提示的某个词上。这种小效果实现起来虽然不难，但如果你想不劳而获，可以试试 Tipso。', N'jQuery插件', N'Tooltip（提示框）是一种常见的效果，它通常用在需要进一步解释、说明或提示的某个词上。这种小效果实现起来虽然不难，但如果你想不劳而获，可以试试 Tipso。Tipso 基于 jQuery，提供了很多配置，如：显示动画持续时间背景颜色文本颜色显示位置（上/右/下/左）宽度偏移加载 aj…', N'<p>
	Tooltip（提示框）是一种常见的效果，它通常用在需要进一步解释、说明或提示的某个词上。这种小效果实现起来虽然不难，但如果你想不劳而获，可以试试 Tipso。
</p>
<p>
	Tipso 基于 jQuery，提供了很多配置，如：
</p>
<ul>
	<li>
		显示动画持续时间
	</li>
	<li>
		背景颜色
	</li>
	<li>
		文本颜色
	</li>
	<li>
		显示位置（上/右/下/左）
	</li>
	<li>
		宽度
	</li>
	<li>
		偏移
	</li>
	<li>
		加载 ajax 内容
	</li>
	<li>
		回调函数
	</li>
</ul>
<p align="center">
	<img alt="" src="http://www.dowebok.com/img/147.png" />
</p>', 99, 0, 0, 1, 0, 0, 0, 0, 1, N'admin', CAST(0x0000A47E0187F318 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[dt_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [tags], [zhaiyao], [content], [sort_id], [click], [status], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time], [composition_scheme], [site_requirements], [cost_budget], [exhibition_time], [resource_linkage], [resource_phone]) VALUES (60, 10, 26, N'', N'ck_slide – 简单的jQuery幻灯片插件', N'', N'/upload/201504/18/201504182357178753.jpg', N'ck_slide – 简单的jQuery幻灯片插件', N'ck_slide,jQuery插件,幻灯片', N'ck_slide 是一款国产的 jQuery 幻灯片插件，它非常小巧，压缩后仅 3KB，所以它的功能也不算丰富，但一般使用已经够了。它支持淡入淡出/左右滚动、箭头/圆点控制、自动播放。', N'jQuery插件', N'ck_slide 是一款国产的 jQuery 幻灯片插件，它非常小巧，压缩后仅 3KB，所以它的功能也不算丰富，但一般使用已经够了。它支持淡入淡出/左右滚动、箭头/圆点控制、自动播放。', N'<p>
	ck_slide 是一款国产的 jQuery 幻灯片插件，它非常小巧，压缩后仅 3KB，所以它的功能也不算丰富，但一般使用已经够了。它支持淡入淡出/左右滚动、箭头/圆点控制、自动播放。
</p>
<p align="center">
	<img alt="" src="http://cdn.dowebok.com/img/144.jpg" />
</p>', 99, 2, 0, 1, 0, 1, 0, 0, 1, N'admin', CAST(0x0000A47E018AD99A AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[dt_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [tags], [zhaiyao], [content], [sort_id], [click], [status], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time], [composition_scheme], [site_requirements], [cost_budget], [exhibition_time], [resource_linkage], [resource_phone]) VALUES (61, 10, 26, N'', N'WOW.js – 让页面滚动更有趣', N'', N'/upload/201504/19/201504190003164918.jpg', N'WOW.js – 让页面滚动更有趣', N'WOW.js ,页面滚动,jQuery插件', N'有的页面在向下滚动的时候，有些元素会产生细小的动画效果。虽然动画比较小，但却能吸引你的注意。比如刚刚发布的 iPhone 6 的页面（查看）。如果你希望你的页面也更加有趣，那么你可以试试 WOW.js。', N'jQuery插件', N'有的页面在向下滚动的时候，有些元素会产生细小的动画效果。虽然动画比较小，但却能吸引你的注意。比如刚刚发布的 iPhone 6 的页面（查看）。如果你希望你的页面也更加有趣，那么你可以试试 WOW.js。WOW.js 依赖 animate.css，所以它支持 animate.css 多达 60 多种的动画效果，…', N'<p>
	有的页面在向下滚动的时候，有些元素会产生细小的动画效果。虽然动画比较小，但却能吸引你的注意。比如刚刚发布的 iPhone 6 的页面（查看）。如果你希望你的页面也更加有趣，那么你可以试试 WOW.js。
</p>
<p>
	WOW.js 依赖 animate.css，所以它支持 animate.css 多达 60 多种的动画效果，能满足您的各种需求。
</p>
<p>
	IE6、IE7 等老旧浏览器不支持 CSS3 动画，所以没有效果；而 wow.js 也使用了 querySelectorAll 方法，IE 低版本会报错。为了达到更好的兼容，最好加一个浏览器及版本判断。
</p>
<p align="center">
	<img alt="" src="http://cdn.dowebok.com/img/131.jpg" />
</p>', 99, 1, 0, 1, 0, 0, 0, 0, 1, N'admin', CAST(0x0000A47F0000F38E AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[dt_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [tags], [zhaiyao], [content], [sort_id], [click], [status], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time], [composition_scheme], [site_requirements], [cost_budget], [exhibition_time], [resource_linkage], [resource_phone]) VALUES (62, 10, 27, N'', N'12个丰富多彩的图标PSD素材', N'', N'/upload/201504/19/201504190025169765.jpg', N'12个丰富多彩的图标PSD素材', N'图标,PSD素材', N'这组图标一共 12 个，包括谷歌浏览器（Chrome）、谷歌云端硬盘（Google Drive）、Gmail、Google Play、Skype、Dropbox、Evernote 等，格式为 PDS。', N'PSD素材', N'这组图标一共 12 个，包括谷歌浏览器（Chrome）、谷歌云端硬盘（Google Drive）、Gmail、Google Play、Skype、Dropbox、Evernote 等，格式为 PDS。', N'<p>
	这组图标一共 12 个，包括谷歌浏览器（Chrome）、谷歌云端硬盘（Google Drive）、Gmail、Google Play、Skype、Dropbox、Evernote 等，格式为 PDS。
</p>
<p align="center">
	<img alt="" src="http://www.dowebok.com/img/146.png" />
</p>', 99, 0, 0, 1, 0, 0, 0, 0, 1, N'admin', CAST(0x0000A47F0006F50A AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[dt_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [tags], [zhaiyao], [content], [sort_id], [click], [status], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time], [composition_scheme], [site_requirements], [cost_budget], [exhibition_time], [resource_linkage], [resource_phone]) VALUES (63, 10, 27, N'', N'六边形上传按钮PSD源文件下载', N'', N'/upload/201504/19/201504190033256767.png', N'六边形上传按钮PSD源文件下载', N'上传按钮,PSD源文件', N'这是一组六边形上传按钮，只有 3 个，分别是上传前、上传中、上传完成。有 3 种颜色，你可以任意组合，在不同的状态显示不同的颜色是一种很好选择。格式为 PSD，希望你喜欢。', N'', N'这是一组六边形上传按钮，只有 3 个，分别是上传前、上传中、上传完成。有 3 种颜色，你可以任意组合，在不同的状态显示不同的颜色是一种很好选择。格式为 PSD，希望你喜欢。', N'<p>
	这是一组六边形上传按钮，只有 3 个，分别是上传前、上传中、上传完成。有 3 种颜色，你可以任意组合，在不同的状态显示不同的颜色是一种很好选择。格式为 PSD，希望你喜欢。
</p>
<p align="center">
	<img alt="" src="http://cdn.dowebok.com/img/135.png" />
</p>', 99, 0, 0, 1, 0, 1, 0, 0, 1, N'admin', CAST(0x0000A47F00093052 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[dt_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [tags], [zhaiyao], [content], [sort_id], [click], [status], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time], [composition_scheme], [site_requirements], [cost_budget], [exhibition_time], [resource_linkage], [resource_phone]) VALUES (64, 10, 27, N'', N'Linecons – 48个免费矢量图标', N'', N'/upload/201504/19/201504190039179625.png', N'Linecons – 48个免费矢量图标', N'Linecons,矢量图标', N'Linecons 是一套来自国外的免费矢量图标，共 48 个，包括云、爱心、五角星、电视、钥匙、放大镜、钻石等等。Linecons 能适合任何网站主题和任何设计，无论是 Web 项目或移动应用，并且它是免费的', N'', N'Linecons 是一套来自国外的免费矢量图标，共 48 个，包括云、爱心、五角星、电视、钥匙、放大镜、钻石等等。Linecons 能适合任何网站主题和任何设计，无论是 Web 项目或移动应用，并且它是免费的，包括商业项目。Linecons 有多种格式：Webfont (HTML/CSS)PDFAIPSDPNG (512512)…', N'<p>
	Linecons 是一套来自国外的免费矢量图标，共 48 个，包括云、爱心、五角星、电视、钥匙、放大镜、钻石等等。Linecons 能适合任何网站主题和任何设计，无论是 Web 项目或移动应用，并且它是免费的，包括商业项目。Linecons 有多种格式：
</p>
<ul>
	<li>
		Webfont (HTML/CSS)
	</li>
	<li>
		PDF
	</li>
	<li>
		AI
	</li>
	<li>
		PSD
	</li>
	<li>
		PNG (512×512)
	</li>
	<li>
		SVG
	</li>
</ul>
<p align="center">
	<img alt="" src="http://cdn.dowebok.com/img/123.png" />
</p>', 99, 0, 0, 1, 0, 0, 0, 0, 1, N'admin', CAST(0x0000A47F000ACD41 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[dt_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [tags], [zhaiyao], [content], [sort_id], [click], [status], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time], [composition_scheme], [site_requirements], [cost_budget], [exhibition_time], [resource_linkage], [resource_phone]) VALUES (65, 10, 27, N'', N'30个IOS7风格简洁线条图标PSD素材', N'', N'/upload/201504/19/201504190047488297.png', N'30个IOS7风格简洁线条图标PSD素材', N'IOS7,图标,PSD素材', N'PSD格式，含JPG预览图，关键字：图标,PSD素材,IOS7,线条,简洁,标签,云,音乐,用户,邮件,查找,刷新,喜欢,定位,苹果', N'', N'PSD格式，含JPG预览图，关键字：图标,PSD素材,IOS7,线条,简洁,标签,云,音乐,用户,邮件,查找,刷新,喜欢,定位,苹果', N'<p>
	PSD格式，含JPG预览图，关键字：图标,PSD素材,IOS7,线条,简洁,标签,云,音乐,用户,邮件,查找,刷新,喜欢,定位,苹果
</p>
<p align="center">
	<img alt="" src="http://img.lanrentuku.com/img/allimg/1310/13822298688602.jpg" />
</p>', 99, 2, 0, 1, 0, 1, 0, 0, 1, N'admin', CAST(0x0000A47F000D34AB AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[dt_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [tags], [zhaiyao], [content], [sort_id], [click], [status], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time], [composition_scheme], [site_requirements], [cost_budget], [exhibition_time], [resource_linkage], [resource_phone]) VALUES (66, 10, 28, N'', N'腾讯游戏盒子2013官网页面html代码', N'', N'/upload/201504/19/201504190052499389.png', N'腾讯游戏盒子2013官网页面html代码', N'游戏盒子,页面html代码', N'腾讯游戏盒子是由腾讯自主研发的一款专为网页游戏用户定制的网页游戏辅助工具，具有智能加速、防掉线、帐号多开、全屏等特点。', N'', N'腾讯游戏盒子是由腾讯自主研发的一款专为网页游戏用户定制的网页游戏辅助工具，具有智能加速、防掉线、帐号多开、全屏等特点。腾讯游戏盒子官网页面也非常简单明了，这也是目前很多简单介绍型网站所采用的风格。页面下半部分的圆形图标使用了 CSS3 transform 旋转属性，当鼠标…', N'<p>
	腾讯游戏盒子是由腾讯自主研发的一款专为网页游戏用户定制的网页游戏辅助工具，具有智能加速、防掉线、帐号多开、全屏等特点。
</p>
<p>
	腾讯游戏盒子官网页面也非常简单明了，这也是目前很多简单介绍型网站所采用的风格。页面下半部分的圆形图标使用了 CSS3 transform 旋转属性，当鼠标移动到上面时会顺时针旋转 20 度，但 IE6 – IE9 不支持该属性，所以没有效果。
</p>
<p align="center">
	<img alt="" src="http://www.dowebok.com/img/2013/dowebok.com.49.jpg" />
</p>', 99, 4, 0, 1, 0, 1, 0, 0, 1, N'admin', CAST(0x0000A47F000E9348 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[dt_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [tags], [zhaiyao], [content], [sort_id], [click], [status], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time], [composition_scheme], [site_requirements], [cost_budget], [exhibition_time], [resource_linkage], [resource_phone]) VALUES (67, 10, 28, N'', N'简单的描边图标', N'', N'/upload/201504/19/201504190056149231.png', N'简单的描边图标', N'简单的描边图标', N'这组图标只是一个路径，所以你可以更改成任何你喜欢的颜色，并且能与任何背景颜色融合，因为它是透明的。图标共有24个，包含了打印机、爱心、邮件、日历、时钟、搜索、箭头等等。', N'', N'这组图标只是一个路径，所以你可以更改成任何你喜欢的颜色，并且能与任何背景颜色融合，因为它是透明的。图标共有24个，包含了打印机、爱心、邮件、日历、时钟、搜索、箭头等等。', N'<p>
	这组图标只是一个路径，所以你可以更改成任何你喜欢的颜色，并且能与任何背景颜色融合，因为它是透明的。图标共有24个，包含了打印机、爱心、邮件、日历、时钟、搜索、箭头等等。
</p>
<p align="center">
	<img alt="" src="http://idowebok.u.qiniudn.com/dowebok.com.55.png" />
</p>', 99, 0, 0, 1, 0, 0, 0, 0, 1, N'admin', CAST(0x0000A47F000F8D80 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[dt_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [tags], [zhaiyao], [content], [sort_id], [click], [status], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time], [composition_scheme], [site_requirements], [cost_budget], [exhibition_time], [resource_linkage], [resource_phone]) VALUES (68, 10, 28, N'', N'Owl Carousel制作百度百科2014新首页幻灯片', N'', N'/upload/201504/19/201504190108304682.png', N'Owl Carousel制作百度百科2014新首页幻灯片', N'百度百科,幻灯片', N'百度百科启用了新首页，口号是“探索未知的世界”。今天我们使用 jQuery 幻灯片插件 Owl Carousel 制作其首页的幻灯片。', N'', N'百度百科启用了新首页，口号是“探索未知的世界”。今天我们使用 jQuery 幻灯片插件 Owl Carousel 制作其首页的幻灯片。', N'<p>
	百度百科启用了新首页，口号是“探索未知的世界”。今天我们使用 jQuery 幻灯片插件 Owl Carousel 制作其首页的幻灯片。
</p>
<p align="center">
	<img alt="" src="http://cdn.dowebok.com/img/132.jpg" />
</p>', 99, 0, 0, 1, 0, 0, 0, 0, 1, N'admin', CAST(0x0000A47F0012D3ED AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[dt_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [tags], [zhaiyao], [content], [sort_id], [click], [status], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time], [composition_scheme], [site_requirements], [cost_budget], [exhibition_time], [resource_linkage], [resource_phone]) VALUES (69, 10, 28, N'', N'让IE7 IE8支持CSS3 background-size属性', N'', N'/upload/201504/19/201504190114279783.png', N'让IE7 IE8支持CSS3 background-size属性', N'IE7, IE8支持,CSS3,background-size属性', N'CSS3 新增的 background-size 是一个很有用的属性，用于定义背景图片的尺寸，有了这个属性，你就可以任意指定背景图片的大小。其中最常用的值应该要数 cover 了，该值能让背景图片缩放至填满整个容器，即使是图片面积小于容器面积。', N'', N'CSS3 新增的 background-size 是一个很有用的属性，用于定义背景图片的尺寸，有了这个属性，你就可以任意指定背景图片的大小。其中最常用的值应该要数 cover 了，该值能让背景图片缩放至填满整个容器，即使是图片面积小于容器面积。由于 background-size 是 CSS3 新增的属性，…', N'<p>
	CSS3 新增的 background-size 是一个很有用的属性，用于定义背景图片的尺寸，有了这个属性，你就可以任意指定背景图片的大小。其中最常用的值应该要数 cover 了，该值能让背景图片缩放至填满整个容器，即使是图片面积小于容器面积。
</p>
<p>
	由于 background-size 是 CSS3 新增的属性，所以 IE 低版本自然就不支持了，但是老外写了一个 htc 文件，名叫 background-size polyfill，使用该文件能够让 IE7、IE8 支持 background-size 属性。其原理是创建一个&nbsp;img&nbsp;元素插入到容器中，并重新计算宽度、高度、left、top&nbsp;等值，模拟 background-size&nbsp;的效果。
</p>', 99, 0, 0, 1, 0, 0, 0, 0, 1, N'admin', CAST(0x0000A47F0013C1D0 AS DateTime), CAST(0x0000A47F0014761E AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[dt_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [tags], [zhaiyao], [content], [sort_id], [click], [status], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time], [composition_scheme], [site_requirements], [cost_budget], [exhibition_time], [resource_linkage], [resource_phone]) VALUES (70, 10, 28, N'', N'PgwMenu – jQuery/Zepto响应式菜单', N'', N'/upload/201504/19/201504190123410600.png', N'PgwMenu – jQuery/Zepto响应式菜单', N'PgwMenu,jQuery/Zepto,响应式菜单', N'PgwMenu 是一款基于 jQuery / Zepto 的响应式菜单，兼容 PC 及移动设备，符合 SEO 标准，轻盈小巧，Gzip 压缩后仅 2.5KB，同时，你可以完全自定义样式风格。', N'', N'PgwMenu 是一款基于 jQuery / Zepto 的响应式菜单，兼容 PC 及移动设备，符合 SEO 标准，轻盈小巧，Gzip 压缩后仅 2.5KB，同时，你可以完全自定义样式风格。PgwMenu 内置了两套样式：深色（黑色）和浅色（灰色），如过选择深色，代码就如上面一样；如果选择浅色，需要加上 cla…', N'<p>
	PgwMenu 是一款基于 jQuery / Zepto 的响应式菜单，兼容 PC 及移动设备，符合 SEO 标准，轻盈小巧，Gzip 压缩后仅 2.5KB，同时，你可以完全自定义样式风格。
</p>
<p>
	PgwMenu 内置了两套样式：深色（黑色）和浅色（灰色），如过选择深色，代码就如上面一样；如果选择浅色，需要加上 class：light
</p>
<p>
	GitHub 地址：<a href="https://github.com/Pagawa/PgwMenu" target="_blank">https://github.com/Pagawa/PgwMenu</a> 
</p>
<p align="center">
	<img alt="" src="http://www.dowebok.com/img/149.png" />
</p>', 99, 2, 0, 1, 0, 0, 0, 0, 1, N'admin', CAST(0x0000A47F0016FE54 AS DateTime), CAST(0x0000A47F001725D7 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[dt_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [tags], [zhaiyao], [content], [sort_id], [click], [status], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time], [composition_scheme], [site_requirements], [cost_budget], [exhibition_time], [resource_linkage], [resource_phone]) VALUES (71, 8, 32, N'', N'闪电侠第一季', N'', N'/upload/201504/19/201504191342113486.jpg', N'闪电侠第一季', N'闪电侠,美剧,电视剧', N'Barry Allen（Grant Gustin）11岁那年，他的母亲在一起离奇而可怕的事故中遇难，父亲则被错误地指控为谋杀犯。这场悲剧彻底改变了Barry的生活，但Joe West侦探（Jesse L. Martin）在他最困难的时候伸出了援手。', N'美剧', N'Barry Allen（Grant Gustin）11岁那年，他的母亲在一起离奇而可怕的事故中遇难，父亲则被错误地指控为谋杀犯。这场悲剧彻底改变了Barry的生活，但Joe West侦探（Jesse L. Martin）在他最困难的时候伸出了援手。', N'Barry Allen（Grant Gustin）11岁那年，他的母亲在一起离奇而可怕的事故中遇难，父亲则被错误地指控为谋杀犯。这场悲剧彻底改变了Barry的生活，但Joe West侦探（Jesse L. Martin）在他最困难的时候伸出了援手。', 99, 0, 0, 1, 0, 1, 0, 0, 1, N'admin', CAST(0x0000A47F00E30D00 AS DateTime), CAST(0x0000A47F00FEDDBE AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[dt_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [tags], [zhaiyao], [content], [sort_id], [click], [status], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time], [composition_scheme], [site_requirements], [cost_budget], [exhibition_time], [resource_linkage], [resource_phone]) VALUES (72, 8, 32, N'', N'绿箭侠第三季', N'', N'/upload/201504/19/201504191354133349.jpg', N'绿箭侠第三季', N'绿箭侠,视频,视频分享,视频搜索,视频播放', N'《绿箭》第三季已经有了大致框架——剧中将至少出现两位爱搅局的人——而其中一位将不断向奥利弗？奎恩(Oliver Queen)生命中的女人大献殷勤。', N'美剧', N'《绿箭》第三季已经有了大致框架——剧中将至少出现两位爱搅局的人——而其中一位将不断向奥利弗？奎恩(Oliver Queen)生命中的女人大献殷勤。', N'《绿箭》第三季已经有了大致框架——剧中将至少出现两位爱搅局的人——而其中一位将不断向奥利弗？奎恩(Oliver Queen)生命中的女人大献殷勤。', 99, 0, 0, 1, 0, 1, 0, 0, 1, N'admin', CAST(0x0000A47F00E52360 AS DateTime), CAST(0x0000A47F00FEF802 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[dt_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [tags], [zhaiyao], [content], [sort_id], [click], [status], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time], [composition_scheme], [site_requirements], [cost_budget], [exhibition_time], [resource_linkage], [resource_phone]) VALUES (73, 8, 32, N'', N'绝望主妇第一季', N'', N'/upload/201504/19/201504191415058556.jpg', N'绝望主妇第一季', N'绝望主妇,视频,视频分享,视频搜索,视频播放', N'故事紧接上一季结尾开始，四位主妇将嘉比丈夫卡洛斯杀死的人埋在了树林中。苏珊由于受到凶杀事件的影响，经常无法入睡，变得越来越精神紧张和情绪失控，并且避而不见其她主妇。勒奈特和汤姆的婚姻危机愈演愈烈，两人开始分居。', N'美剧', N'故事紧接上一季结尾开始，四位主妇将嘉比丈夫卡洛斯杀死的人埋在了树林中。苏珊由于受到凶杀事件的影响，经常无法入睡，变得越来越精神紧张和情绪失控，并且避而不见其她主妇。勒奈特和汤姆的婚姻危机愈演愈烈，两人开始分居。布瑞在提出埋尸野外的计划后，又想到要将死者的汽…', N'<span class="px-r">故事紧接上一季结尾开始，四位主妇将嘉比丈夫卡洛斯杀死的人埋在了树林中。苏珊由于受到凶杀事件的影响，经常无法入睡，变得越来越精神紧张和情绪失控，并且避而不见其她主妇。勒奈特和汤姆的婚姻危机愈演愈烈，两人开始分居。布瑞在提出埋尸野外的计划后，又想到要将死者的汽车处理掉，在一个抢匪无意的帮助下，她和嘉比顺利地将车处理掉。布瑞在嘉比家阻止苏珊向麦克说出真相后，在自家门前的邮箱中收到一封神秘的来信。然而这封信的内容竟然与当年导致玛丽・爱丽丝・杨格自杀的信的内容一样。难道这一切预示着她们极力隐瞒的秘密已经被发现了吗？</span>', 99, 0, 0, 1, 0, 0, 0, 0, 1, N'admin', CAST(0x0000A47F00EADFBC AS DateTime), CAST(0x0000A47F00FF07A2 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[dt_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [tags], [zhaiyao], [content], [sort_id], [click], [status], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time], [composition_scheme], [site_requirements], [cost_budget], [exhibition_time], [resource_linkage], [resource_phone]) VALUES (74, 8, 33, N'', N'武媚娘传奇', N'', N'/upload/201504/19/201504191419256058.jpg', N'武媚娘传奇', N'视频,视频分享,视频搜索,视频播放', N'主要从她在家乡的成长讲述到她14岁入宫闱后的权力斗争，与以往的武则天不同的是，“范冰冰版”的武则天在感情故事上下了更多的笔墨，对她入宫前后的生活和感情有了更细致的描写。范冰冰之所以选择拍摄武则天的成长史主要是因为在她看来武则天最后舍我其谁的性格都是在少女期养成的，而她的感情故事和政治谋略也是随着剧情的发展而呈现出不同的精彩。', N'大陆剧', N'主要从她在家乡的成长讲述到她14岁入宫闱后的权力斗争，与以往的武则天不同的是，“范冰冰版”的武则天在感情故事上下了更多的笔墨，对她入宫前后的生活和感情有了更细致的描写。范冰冰之所以选择拍摄武则天的成长史主要是因为在她看来武则天最后舍我其谁的性格都是在少女期养…', N'<span class="px-r">主要从她在家乡的成长讲述到她14岁入宫闱后的权力斗争，与以往的武则天不同的是，“范冰冰版”的武则天在感情故事上下了更多的笔墨，对她入宫前后的生活和感情有了更细致的描写。范冰冰之所以选择拍摄武则天的成长史主要是因为在她看来武则天最后舍我其谁的性格都是在少女期养成的，而她的感情故事和政治谋略也是随着剧情的发展而呈现出不同的精彩。</span>', 99, 0, 0, 1, 0, 0, 0, 0, 1, N'admin', CAST(0x0000A47F00EC130E AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[dt_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [tags], [zhaiyao], [content], [sort_id], [click], [status], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time], [composition_scheme], [site_requirements], [cost_budget], [exhibition_time], [resource_linkage], [resource_phone]) VALUES (75, 8, 33, N'', N'活色生香', N'', N'/upload/201504/19/201504191423290999.jpg', N'活色生香', N'视频,视频分享,视频搜索,视频播放', N'由唐嫣、李易峰、舒畅、陈伟霆主演的年代剧《活色生香》于湖南卫视播出，该剧也是李易峰、陈伟霆继《古剑奇谭》后再度合作的电视剧。有意思的是，该剧除了李易峰会反串女角外，还举行了九次婚礼，被网友调侃为“史上结婚最多的电视剧”。', N'', N'由唐嫣、李易峰、舒畅、陈伟霆主演的年代剧《活色生香》于湖南卫视播出，该剧也是李易峰、陈伟霆继《古剑奇谭》后再度合作的电视剧。有意思的是，该剧除了李易峰会反串女角外，还举行了九次婚礼，被网友调侃为“史上结婚最多的电视剧”。', N'<p>
	<span class="px-r"><span class="px-r">由唐嫣、李易峰、舒畅、陈伟霆主演的年代剧《活色生香》于湖南卫视播出，该剧也是李易峰、陈伟霆继《古剑奇谭》后再度合作的电视剧。有意思的是，该剧除了李易峰会反串女角外，还举行了九次婚礼，被网友调侃为“史上结婚最多的电视剧”。</span></span>
</p>', 99, 0, 0, 1, 0, 0, 0, 0, 1, N'admin', CAST(0x0000A47F00ED2C92 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[dt_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [tags], [zhaiyao], [content], [sort_id], [click], [status], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time], [composition_scheme], [site_requirements], [cost_budget], [exhibition_time], [resource_linkage], [resource_phone]) VALUES (76, 8, 34, N'', N'贤内助女王', N'', N'/upload/201504/19/201504191427360596.jpg', N'贤内助女王', N'视频,视频分享,视频搜索,视频播放', N'梦想成为灰姑娘的智爱（金南珠饰）选择了与医大学生温达秀（吴智昊饰）结婚，原以为自己挑选了王子，没想到却是个傻蛋温达。上帝给了温达秀聪明的头脑，但是又给了胆小怕事和小心眼的性格。', N'', N'梦想成为灰姑娘的智爱（金南珠饰）选择了与医大学生温达秀（吴智昊饰）结婚，原以为自己挑选了王子，没想到却是个傻蛋温达。上帝给了温达秀聪明的头脑，但是又给了胆小怕事和小心眼的性格。现在丈夫是个无业游民，她取出了自己的积蓄，卖掉了结婚戒指，向夫家伸手，断绝了与朋…', N'梦想成为灰姑娘的智爱（金南珠饰）选择了与医大学生温达秀（吴智昊饰）结婚，原以为自己挑选了王子，没想到却是个傻蛋温达。上帝给了温达秀聪明的头脑，但是又给了胆小怕事和小心眼的性格。现在丈夫是个无业游民，她取出了自己的积蓄，卖掉了结婚戒指，向夫家伸手，断绝了与朋友们的聚会，断绝了购物和美容。她接受了灰姑娘的梦想已经破灭的现实。当她好不容易为丈夫谋得一份工作的时候，却发生了一件震惊的事情，学生时期自己的跟班变成真正的灰姑娘出现在面前。现在的她向朋友低头哈腰，但是对她怀恨在心的朋友毫无留情地践踏了她的自尊心。', 99, 0, 0, 1, 0, 0, 0, 0, 1, N'admin', CAST(0x0000A47F00EE4E50 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[dt_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [tags], [zhaiyao], [content], [sort_id], [click], [status], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time], [composition_scheme], [site_requirements], [cost_budget], [exhibition_time], [resource_linkage], [resource_phone]) VALUES (77, 8, 35, N'', N'心花路放', N'', N'/upload/201504/19/201504191433361724.jpg', N'心花路放', N'', N'电影《心花路放》讲述了耿浩（黄渤饰）在生活中遭遇了情感危机，面对情感的背叛，耿浩陷入难以自拔的痛苦之中。好基友郝义（徐峥饰）为了帮助他摆脱痛苦，于是一对“暴走兄弟”带上一只狗，开始了一段搞笑的疯狂的猎艳之旅。', N'', N'电影《心花路放》讲述了耿浩（黄渤饰）在生活中遭遇了情感危机，面对情感的背叛，耿浩陷入难以自拔的痛苦之中。好基友郝义（徐峥饰）为了帮助他摆脱痛苦，于是一对“暴走兄弟”带上一只狗，开始了一段搞笑的疯狂的猎艳之旅。影片上映后，首周票房超6亿，成为史上最快突破6亿票…', N'<p>
	电影《心花路放》讲述了耿浩（黄渤饰）在生活中遭遇了情感危机，面对情感的背叛，耿浩陷入难以自拔的痛苦之中。好基友郝义（徐峥饰）为了帮助他摆脱痛苦，于是一对“暴走兄弟”带上一只狗，开始了一段搞笑的疯狂的猎艳之旅。
</p>
<p>
	影片上映后，首周票房超6亿，成为史上最快突破6亿票房的华语电影[1] 。票房总计11.67亿， 登2014年度国产电影榜首，并成为国产电影史继《泰囧》和《西游降魔》之后的第三名。
</p>', 99, 1, 0, 1, 0, 0, 0, 0, 1, N'admin', CAST(0x0000A47F00EFF373 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[dt_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [tags], [zhaiyao], [content], [sort_id], [click], [status], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time], [composition_scheme], [site_requirements], [cost_budget], [exhibition_time], [resource_linkage], [resource_phone]) VALUES (78, 8, 35, N'', N'有种你爱我', N'', N'/upload/201504/19/201504191438024482.jpg', N'有种你爱我', N'有种你爱我,视频,视频分享,视频搜索,视频播放', N'建筑师左小欣渴望拥有一个只有孩子没有男人的“幸福生活”，机缘巧合结识了人气主持人査义，并生下非婚子左松松。为科学抚养，在孩子周岁时通知了査义，此刻他才明白自己成了朋友们的笑柄——中国“大种马”。査义决计报复，左小欣也不是吃素的，俩人斗智斗勇，玩过火的他们将如何收场？孩子究竟归谁？', N'', N'建筑师左小欣渴望拥有一个只有孩子没有男人的“幸福生活”，机缘巧合结识了人气主持人査义，并生下非婚子左松松。为科学抚养，在孩子周岁时通知了査义，此刻他才明白自己成了朋友们的笑柄——中国“大种马”。査义决计报复，左小欣也不是吃素的，俩人斗智斗勇，玩过火的他们将…', N'建筑师左小欣渴望拥有一个只有孩子没有男人的“幸福生活”，机缘巧合结识了人气主持人査义，并生下非婚子左松松。为科学抚养，在孩子周岁时通知了査义，此刻他才明白自己成了朋友们的笑柄——中国“大种马”。査义决计报复，左小欣也不是吃素的，俩人斗智斗勇，玩过火的他们将如何收场？孩子究竟归谁？', 99, 2, 0, 1, 0, 1, 0, 0, 1, N'admin', CAST(0x0000A47F00F12B64 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[dt_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [tags], [zhaiyao], [content], [sort_id], [click], [status], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time], [composition_scheme], [site_requirements], [cost_budget], [exhibition_time], [resource_linkage], [resource_phone]) VALUES (79, 8, 36, N'', N'速度与激情7', N'', N'/upload/201504/19/201504191450190071.jpg', N'速度与激情7', N'视频,视频分享,视频搜索,视频播放', N'故事开始于多米尼克和布莱恩各自的小队成员带着赦免令回到美国的一年之后。他们过着循规蹈矩的日子，家乡生活的感觉很好。然而他们都不知道，危险正在悄然接近。', N'', N'故事开始于多米尼克和布莱恩各自的小队成员带着赦免令回到美国的一年之后。他们过着循规蹈矩的日子，家乡生活的感觉很好。然而他们都不知道，危险正在悄然接近，冷血的英国特勤杀手肖出现了。从东京的韩被残忍谋杀，到洛杉矶霍布斯的死里逃生，肖有条不紊地追杀着在上一部中干…', N'<p>
	故事开始于多米尼克和布莱恩各自的小队成员带着赦免令回到美国的一年之后。他们过着循规蹈矩的日子，家乡生活的感觉很好。然而他们都不知道，危险正在悄然接近，冷血的英国特勤杀手肖出现了。从东京的韩被残忍谋杀，到洛杉矶霍布斯的死里逃生，肖有条不紊地追杀着在上一部中干掉了欧文的团队成员，因为欧文是他的弟弟。
</p>
<p>
	肖出现了在托雷托家，多米尼克必须去找政府高级特工帮忙。主人公们唯一的希望就是继续开着赛车为美国政府保护一台高科技追踪设备的样品。作为回报，他们可以利用这个设备在肖大开杀戒之前就追查到他的行踪。他们组成了史上最亲密的团队：多米尼克、布莱恩、霍布斯、莱蒂、罗姆、特尔佳、米娅——他们将面临最大的威胁，从阿布扎比转战阿塞拜疆……在那些与家园似曾相识的街道上极速飞驰。
</p>', 99, 7, 0, 1, 0, 0, 0, 1, 1, N'admin', CAST(0x0000A47F00F4FC92 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[dt_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [tags], [zhaiyao], [content], [sort_id], [click], [status], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time], [composition_scheme], [site_requirements], [cost_budget], [exhibition_time], [resource_linkage], [resource_phone]) VALUES (80, 8, 36, N'', N'绿灯侠', N'', N'/upload/201504/19/201504191502166718.jpg', N'绿灯侠', N'绿灯侠,电影,在线影院,好莱坞影院', N'影片讲述宇宙间有一群维护宇宙治安的“绿灯军团”，每个成员都配备了一枚神奇的戒指，可以随心所欲的变出各种东西或实现任何目的。', N'', N'在巨大神秘的宇宙中，一种虽小但力量强大的能源已经存在了数个世纪。一个被称作“绿灯军团”的队伍维护着和平与公正，每位成员都配备了一枚具有神奇力量的戒指。然而，当一名叫做Parallax的大反派闯入之后，威胁着宇宙的平衡，“绿灯军团”以及地球的命运就掌握在一位新成员的…', N'<p>
	在巨大神秘的宇宙中，一种虽小但力量强大的能源已经存在了数个世纪。一个被称作“绿灯军团”的队伍维护着和平与公正，每位成员都配备了一枚具有神奇力量的戒指。然而，当一名叫做Parallax的大反派闯入之后，威胁着宇宙的平衡，“绿灯军团”以及地球的命运就掌握在一位新成员的手中，他就是第一个被召唤成“绿灯侠”的人类哈尔·乔丹（瑞安·雷诺兹饰）。
</p>
<p>
	哈尔本是一名颇有天赋却相当狂妄的试飞员，但是绿灯军团对人类并不是特别信任，人类此前从未戴上那枚具有无穷力量的戒指。但是哈尔的果断与意志力证明了他具有绿灯军团成员们所没有的品质，那就是“人性”。在同伴们和青梅竹马的朋友卡洛儿·菲丽丝（布蕾克·莱弗利饰）的鼓励下，只要哈尔能够迅速掌握新的力量，并克服他的缺点，他将证明自己不但能击败Parallax，还将成为史上最伟大的绿灯侠。
</p>', 99, 0, 0, 1, 0, 1, 0, 0, 1, N'admin', CAST(0x0000A47F00F7D3B4 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[dt_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [tags], [zhaiyao], [content], [sort_id], [click], [status], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time], [composition_scheme], [site_requirements], [cost_budget], [exhibition_time], [resource_linkage], [resource_phone]) VALUES (81, 8, 35, N'', N'熊出没之雪岭熊风', N'', N'/upload/201504/19/201504191509158578.jpg', N'熊出没之雪岭熊风', N'熊出没之雪岭熊风', N'在狗熊岭百年不遇的大雪中，熊二偶遇了小时候曾有过一面之缘的神秘小伙伴，除了重逢的喜悦，小伙伴也给熊二带来了不少麻烦：穷凶极恶的追猎者、神秘而未知的重大传说。', N'', N'在狗熊岭百年不遇的大雪中，熊二偶遇了小时候曾有过一面之缘的神秘小伙伴，除了重逢的喜悦，小伙伴也给熊二带来了不少麻烦：穷凶极恶的追猎者、神秘而未知的重大传说。一系列的阴差阳错，熊大熊二光头强和动物们不可避免地被卷入其中。在小镇和森林中，他们闹出了不少惊险又好…', N'<p>
	在狗熊岭百年不遇的大雪中，熊二偶遇了小时候曾有过一面之缘的神秘小伙伴，除了重逢的喜悦，小伙伴也给熊二带来了不少麻烦：穷凶极恶的追猎者、神秘而未知的重大传说。
</p>
<p>
	一系列的阴差阳错，熊大熊二光头强和动物们不可避免地被卷入其中。在小镇和森林中，他们闹出了不少惊险又好笑的意外，在传说的驱使下，一行人踏上了前往白熊山的旅程，一路上，他们经历了欢笑和感动，勇气日渐增长，友谊也越加深厚，熊大和熊二学会了理解对方，矛盾也渐渐地化解。可是，一场灾难意外地爆发，在千钧一发之际，熊二鼓起勇气，承担起了拯救大家的责任，危机最终圆满解决。
</p>', 99, 4, 0, 1, 0, 0, 0, 1, 1, N'admin', CAST(0x0000A47F00F9CAE0 AS DateTime), CAST(0x0000A47F00FF1524 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[dt_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [tags], [zhaiyao], [content], [sort_id], [click], [status], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time], [composition_scheme], [site_requirements], [cost_budget], [exhibition_time], [resource_linkage], [resource_phone]) VALUES (82, 8, 37, N'', N'星梦奇缘', N'', N'/upload/201504/19/201504191553366190.jpg', N'星梦奇缘', N'马玲,男生宿舍,告白,跳泳池,求爱', N'天津卫视和韩国CJ E&M娱乐共同制作，明星媒人出谋划策，为相亲者奋勇追求心仪对象。', N'', N'各大卫视在创新真人秀类型的基础上，对于有稳定收视群体的恋爱类节目依旧难舍，纷纷由演播室搬至户外，并请来大牌明星加盟，已经定档的有6个之多，如何在同质化中寻找突破，天津卫视与韩国顶尖娱乐公司CJEM联合研发制作的“明星家长式”户外交友真人秀《星梦奇缘》据悉，《星梦…', N'各大卫视在创新真人秀类型的基础上，对于有稳定收视群体的恋爱类节目依旧难舍，纷纷由演播室搬至户外，并请来大牌明星加盟，已经定档的有6个之多，如何在同质化中寻找突破，天津卫视与韩国顶尖娱乐公司CJEM联合研发制作的“明星家长式”户外交友真人秀《星梦奇缘》据悉，《星梦奇缘》于4月10日开播。', 99, 1, 0, 1, 0, 1, 0, 0, 1, N'admin', CAST(0x0000A47F0105EFAE AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[dt_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [tags], [zhaiyao], [content], [sort_id], [click], [status], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time], [composition_scheme], [site_requirements], [cost_budget], [exhibition_time], [resource_linkage], [resource_phone]) VALUES (83, 8, 37, N'', N'奔跑吧兄弟', N'', N'/upload/201504/19/201504191612121323.jpg', N'奔跑吧兄弟', N'视频,视频分享,视频搜索,视频播放', N'奔跑吧兄弟是浙江卫视全新推出的大型户外竞技真人秀节目，节目于2014年8月28日正式开机。', N'', N'奔跑吧兄弟是浙江卫视全新推出的大型户外竞技真人秀节目，节目于2014年8月28日正式开机，10月10日将登陆浙江卫视周五黄金档。该节目原型为韩版《runningman》，中国改名为《奔跑吧兄弟》由浙江卫视和韩版《Running Man》制作团队SBS联合制作。', N'奔跑吧兄弟是浙江卫视全新推出的大型户外竞技真人秀节目，节目于2014年8月28日正式开机，10月10日将登陆浙江卫视周五黄金档。该节目原型为韩版《runningman》，中国改名为《奔跑吧兄弟》由浙江卫视和韩版《Running Man》制作团队SBS联合制作。', 99, 2, 0, 1, 0, 1, 0, 0, 1, N'admin', CAST(0x0000A47F010B0EE7 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[dt_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [tags], [zhaiyao], [content], [sort_id], [click], [status], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time], [composition_scheme], [site_requirements], [cost_budget], [exhibition_time], [resource_linkage], [resource_phone]) VALUES (84, 8, 38, N'', N'非诚勿扰', N'', N'/upload/201504/19/201504191621314730.jpg', N'非诚勿扰', N'非诚勿扰,视频,视频分享,视频搜索,视频播放', N'《非诚勿扰》是适应现代生活节奏的大型婚恋交友节目，新的互动形式完全突破传统的交友方式，完全体现新时代男女的婚恋观。外形靓丽养眼、打扮时髦前卫、表现大胆奔放的男女嘉宾们一次又一次引爆争议热点！', N'', N'《非诚勿扰》是适应现代生活节奏的大型婚恋交友节目，新的互动形式完全突破传统的交友方式，完全体现新时代男女的婚恋观。外形靓丽养眼、打扮时髦前卫、表现大胆奔放的男女嘉宾们一次又一次引爆争议热点！', N'<p>
	《非诚勿扰》是适应现代生活节奏的大型婚恋交友节目，新的互动形式完全突破传统的交友方式，完全体现新时代男女的婚恋观。外形靓丽养眼、打扮时髦前卫、表现大胆奔放的男女嘉宾们一次又一次引爆争议热点！
</p>', 99, 0, 0, 1, 0, 0, 0, 0, 1, N'admin', CAST(0x0000A47F010DB728 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[dt_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [tags], [zhaiyao], [content], [sort_id], [click], [status], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time], [composition_scheme], [site_requirements], [cost_budget], [exhibition_time], [resource_linkage], [resource_phone]) VALUES (85, 8, 38, N'', N'调解面对面', N'', N'/upload/201504/19/201504191628502165.jpg', N'调解面对面', N'调解面对面,视频,视频分享,视频搜索,视频播放', N'智者形象 调解矛盾纠纷 领悟智慧人生通过智者的调解不仅解决当事人的矛盾，观众通过观看节目能学到、领悟到人生智慧。', N'', N'《调解面对面》聚焦社区民情民意，通过媒体调解方式和典型社区案例来化解矛盾，挖掘真情，唤醒良知，引导人性。节目以人和、家和、天下和为口号，定位于调解社区矛盾、关注社区和谐、破解法律疑点，全面创新媒体参与社会管理的职能。', N'<p>
	《调解面对面》聚焦社区民情民意，通过媒体调解方式和典型社区案例来化解矛盾，挖掘真情，唤醒良知，引导人性。节目以人和、家和、天下和为口号，定位于调解社区矛盾、关注社区和谐、破解法律疑点，全面创新媒体参与社会管理的职能。
</p>', 99, 0, 0, 1, 0, 0, 0, 0, 1, N'admin', CAST(0x0000A47F010F9A5A AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[dt_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [tags], [zhaiyao], [content], [sort_id], [click], [status], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time], [composition_scheme], [site_requirements], [cost_budget], [exhibition_time], [resource_linkage], [resource_phone]) VALUES (86, 8, 39, N'', N'舌尖上的中国2：脚步', N'', N'/upload/201504/19/201504191635524475.jpg', N'舌尖上的中国2：脚步', N'舌尖上的中国,视频,视频分享,视频搜索,视频播放', N'延续第一季的主题，探讨中国人与食物的关系。150多个人物，300余种美食，一张张餐桌，见证生命的诞生、成长、相聚、别离。通过美食，使人们可以有滋有味地认知这个古老的东方国度。', N'', N'《舌尖上的中国2》定位为中华美食文化纪录片，延续第一季的主题，探讨中国人与食物的关系。150多个人物，300余种美食，一张张餐桌，见证生命的诞生、成长、相聚、别离。通过美食，使人们可以有滋有味地认知这个古老的东方国度。《舌尖上的中国2》是2012年纪录片《舌尖上的中国…', N'<p>
	《舌尖上的中国2》定位为中华美食文化纪录片，延续第一季的主题，探讨中国人与食物的关系。150多个人物，300余种美食，一张张餐桌，见证生命的诞生、成长、相聚、别离。通过美食，使人们可以有滋有味地认知这个古老的东方国度。
</p>
<p>
	《舌尖上的中国2》是2012年纪录片《舌尖上的中国》的续集，于2014年4月18日起在中央电视台综合频道（CCTV-1）与中央电视台纪录频道（CCTV-9）开播，并在爱奇艺、乐视网等多个网络平台同步播出。
</p>', 99, 0, 0, 1, 0, 0, 0, 0, 1, N'admin', CAST(0x0000A47F01118806 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[dt_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [tags], [zhaiyao], [content], [sort_id], [click], [status], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time], [composition_scheme], [site_requirements], [cost_budget], [exhibition_time], [resource_linkage], [resource_phone]) VALUES (102, 18, 52, N'', N'最有料的互联网峰会', N'', N'/upload/201704/12/201704122107152522.gif', N'', N'', N'', N'', N'噢噢噢噢噢噢噢噢噢噢噢噢噢噢', N'', 1, 0, 0, 0, 0, 0, 1, 0, 1, N'admin', CAST(0x0000A753015C1308 AS DateTime), CAST(0x0000A75A00009EB6 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[dt_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [tags], [zhaiyao], [content], [sort_id], [click], [status], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time], [composition_scheme], [site_requirements], [cost_budget], [exhibition_time], [resource_linkage], [resource_phone]) VALUES (103, 18, 52, N'', N'test', N'', N'/upload/201704/12/201704122108161365.gif', N'', N'', N'', N'', N'', N'', 2, 0, 0, 0, 0, 0, 1, 0, 1, N'admin', CAST(0x0000A753015C5A84 AS DateTime), CAST(0x0000A753015F0F79 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[dt_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [tags], [zhaiyao], [content], [sort_id], [click], [status], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time], [composition_scheme], [site_requirements], [cost_budget], [exhibition_time], [resource_linkage], [resource_phone]) VALUES (104, 18, 52, N'', N'培训', N'', N'/upload/201704/12/201704122118477003.gif', N'', N'', N'', N'', N'', N'', 3, 0, 0, 0, 0, 0, 1, 0, 1, N'admin', CAST(0x0000A753015F3DF8 AS DateTime), CAST(0x0000A753015F6102 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[dt_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [tags], [zhaiyao], [content], [sort_id], [click], [status], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time], [composition_scheme], [site_requirements], [cost_budget], [exhibition_time], [resource_linkage], [resource_phone]) VALUES (105, 18, 52, N'', N'万里江山一片红，背后的企划人辛苦了', N'', N'', N'', N'', N'', N'', N'', N'', 4, 0, 0, 0, 0, 1, 0, 0, 1, N'admin', CAST(0x0000A753015F543C AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[dt_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [tags], [zhaiyao], [content], [sort_id], [click], [status], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time], [composition_scheme], [site_requirements], [cost_budget], [exhibition_time], [resource_linkage], [resource_phone]) VALUES (106, 6, 56, N'', N'封面图片', N'', N'/upload/201704/12/201704122126318704.gif', N'', N'', N'', N'', N'', N'', 0, 0, 0, 0, 1, 0, 0, 0, 1, N'admin', CAST(0x0000A75301615EE4 AS DateTime), CAST(0x0000A757016D4EBE AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[dt_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [tags], [zhaiyao], [content], [sort_id], [click], [status], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time], [composition_scheme], [site_requirements], [cost_budget], [exhibition_time], [resource_linkage], [resource_phone]) VALUES (107, 6, 53, N'', N'文字推荐', N'', N'/upload/201704/12/201704122133154116.gif', N'', N'', N'', N'', N'', N'', 9, 0, 0, 0, 0, 1, 0, 0, 1, N'admin', CAST(0x0000A75301631784 AS DateTime), CAST(0x0000A765001896D5 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[dt_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [tags], [zhaiyao], [content], [sort_id], [click], [status], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time], [composition_scheme], [site_requirements], [cost_budget], [exhibition_time], [resource_linkage], [resource_phone]) VALUES (108, 6, 54, N'', N'文字', N'', N'', N'', N'', N'', N'', N'', N'', 99, 0, 0, 0, 0, 1, 0, 0, 1, N'admin', CAST(0x0000A757016907EA AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[dt_article] OFF
SET IDENTITY_INSERT [dbo].[dt_article_albums] ON 

INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (4, 37, N'/upload/201504/18/thumb_201504181230434303.jpg', N'/upload/201504/18/201504181230434303.jpg', N'', CAST(0x0000A47E00CE353B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (5, 37, N'/upload/201504/18/thumb_201504181230437111.jpg', N'/upload/201504/18/201504181230437111.jpg', N'', CAST(0x0000A47E00CE354A AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (6, 37, N'/upload/201504/18/thumb_201504181230439139.jpg', N'/upload/201504/18/201504181230439139.jpg', N'', CAST(0x0000A47E00CE3558 AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (7, 37, N'/upload/201504/18/thumb_201504181230440387.jpg', N'/upload/201504/18/201504181230440387.jpg', N'', CAST(0x0000A47E00CE3566 AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (8, 37, N'/upload/201504/18/thumb_201504181230444755.jpg', N'/upload/201504/18/201504181230444755.jpg', N'', CAST(0x0000A47E00CE3574 AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (9, 38, N'/upload/201504/18/thumb_201504181237019134.jpg', N'/upload/201504/18/201504181237019134.jpg', N'', CAST(0x0000A47E00CFFBDE AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (10, 38, N'/upload/201504/18/thumb_201504181237020070.jpg', N'/upload/201504/18/201504181237020070.jpg', N'', CAST(0x0000A47E00CFFBF0 AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (11, 38, N'/upload/201504/18/thumb_201504181237021942.jpg', N'/upload/201504/18/201504181237021942.jpg', N'', CAST(0x0000A47E00CFFBFE AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (12, 38, N'/upload/201504/18/thumb_201504181237023658.jpg', N'/upload/201504/18/201504181237023658.jpg', N'', CAST(0x0000A47E00CFFC0C AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (13, 38, N'/upload/201504/18/thumb_201504181237029898.jpg', N'/upload/201504/18/201504181237029898.jpg', N'', CAST(0x0000A47E00CFFC1B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (14, 39, N'/upload/201504/18/thumb_201504181241259978.jpg', N'/upload/201504/18/201504181241259978.jpg', N'', CAST(0x0000A47E00D12AF1 AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (15, 39, N'/upload/201504/18/thumb_201504181241262318.jpg', N'/upload/201504/18/201504181241262318.jpg', N'', CAST(0x0000A47E00D12AFF AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (16, 39, N'/upload/201504/18/thumb_201504181241264190.jpg', N'/upload/201504/18/201504181241264190.jpg', N'', CAST(0x0000A47E00D12B0D AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (17, 39, N'/upload/201504/18/thumb_201504181241265438.jpg', N'/upload/201504/18/201504181241265438.jpg', N'', CAST(0x0000A47E00D12B17 AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (18, 39, N'/upload/201504/18/thumb_201504181241266686.jpg', N'/upload/201504/18/201504181241266686.jpg', N'', CAST(0x0000A47E00D12B24 AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (19, 39, N'/upload/201504/18/thumb_201504181241268246.jpg', N'/upload/201504/18/201504181241268246.jpg', N'', CAST(0x0000A47E00D12B33 AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (20, 39, N'/upload/201504/18/thumb_201504181241270898.jpg', N'/upload/201504/18/201504181241270898.jpg', N'', CAST(0x0000A47E00D12B41 AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (21, 40, N'/upload/201504/18/thumb_201504181246376332.jpg', N'/upload/201504/18/201504181246376332.jpg', N'', CAST(0x0000A47E00D29A11 AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (22, 40, N'/upload/201504/18/thumb_201504181246378360.jpg', N'/upload/201504/18/201504181246378360.jpg', N'', CAST(0x0000A47E00D29A20 AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (23, 40, N'/upload/201504/18/thumb_201504181246381948.jpg', N'/upload/201504/18/201504181246381948.jpg', N'', CAST(0x0000A47E00D29A2E AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (24, 40, N'/upload/201504/18/thumb_201504181246383508.jpg', N'/upload/201504/18/201504181246383508.jpg', N'', CAST(0x0000A47E00D29A3B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (25, 41, N'/upload/201504/18/thumb_201504181252033785.jpg', N'/upload/201504/18/201504181252033785.jpg', N'', CAST(0x0000A47E00D4219A AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (26, 41, N'/upload/201504/18/thumb_201504181252034877.jpg', N'/upload/201504/18/201504181252034877.jpg', N'', CAST(0x0000A47E00D421A3 AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (27, 41, N'/upload/201504/18/thumb_201504181252036437.jpg', N'/upload/201504/18/201504181252036437.jpg', N'', CAST(0x0000A47E00D421B2 AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (28, 41, N'/upload/201504/18/thumb_201504181252040962.jpg', N'/upload/201504/18/201504181252040962.jpg', N'', CAST(0x0000A47E00D421C0 AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (29, 42, N'/upload/201504/18/thumb_201504181255546022.jpg', N'/upload/201504/18/201504181255546022.jpg', N'', CAST(0x0000A47E00D51C17 AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (30, 42, N'/upload/201504/18/thumb_201504181255546646.jpg', N'/upload/201504/18/201504181255546646.jpg', N'', CAST(0x0000A47E00D51C25 AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (31, 42, N'/upload/201504/18/thumb_201504181255552730.jpg', N'/upload/201504/18/201504181255552730.jpg', N'', CAST(0x0000A47E00D51C33 AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (32, 43, N'/upload/201504/18/thumb_201504181258575445.jpg', N'/upload/201504/18/201504181258575445.jpg', N'', CAST(0x0000A47E00D60013 AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (33, 43, N'/upload/201504/18/thumb_201504181258580562.jpg', N'/upload/201504/18/201504181258580562.jpg', N'', CAST(0x0000A47E00D60021 AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (34, 43, N'/upload/201504/18/thumb_201504181258586174.jpg', N'/upload/201504/18/201504181258586174.jpg', N'', CAST(0x0000A47E00D6002B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (35, 44, N'/upload/201504/18/thumb_201504181343191605.jpg', N'/upload/201504/18/201504181343191605.jpg', N'', CAST(0x0000A47E00E21FF4 AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (36, 44, N'/upload/201504/18/thumb_201504181343192455.jpg', N'/upload/201504/18/201504181343192455.jpg', N'', CAST(0x0000A47E00E22002 AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (37, 45, N'/upload/201504/18/thumb_201504181347324908.jpg', N'/upload/201504/18/201504181347324908.jpg', N'', CAST(0x0000A47E00E34AD1 AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (38, 45, N'/upload/201504/18/thumb_201504181347330156.jpg', N'/upload/201504/18/201504181347330156.jpg', N'', CAST(0x0000A47E00E34ADF AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (39, 46, N'/upload/201504/18/thumb_201504181350088573.jpg', N'/upload/201504/18/201504181350088573.jpg', N'', CAST(0x0000A47E00E4001C AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (40, 46, N'/upload/201504/18/thumb_201504181350094036.jpg', N'/upload/201504/18/201504181350094036.jpg', N'', CAST(0x0000A47E00E4002A AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (41, 47, N'/upload/201504/18/thumb_201504181353090559.jpg', N'/upload/201504/18/201504181353090559.jpg', N'', CAST(0x0000A47E00E4D4A3 AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (42, 47, N'/upload/201504/18/thumb_201504181353096645.jpg', N'/upload/201504/18/201504181353096645.jpg', N'', CAST(0x0000A47E00E4D4B2 AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (43, 48, N'/upload/201504/18/thumb_201504181356412687.jpg', N'/upload/201504/18/201504181356412687.jpg', N'', CAST(0x0000A47E00E5E378 AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (44, 48, N'/upload/201504/18/thumb_201504181356417887.jpg', N'/upload/201504/18/201504181356417887.jpg', N'', CAST(0x0000A47E00E5E387 AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (45, 49, N'/upload/201504/18/thumb_201504181404061134.jpg', N'/upload/201504/18/201504181404061134.jpg', N'', CAST(0x0000A47E00E7DF55 AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (46, 49, N'/upload/201504/18/thumb_201504181404062204.jpg', N'/upload/201504/18/201504181404062204.jpg', N'', CAST(0x0000A47E00E7DF63 AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (47, 49, N'/upload/201504/18/thumb_201504181404066434.jpg', N'/upload/201504/18/201504181404066434.jpg', N'', CAST(0x0000A47E00E7DF7F AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (48, 50, N'/upload/201504/18/thumb_201504181416245191.jpg', N'/upload/201504/18/201504181416245191.jpg', N'', CAST(0x0000A47E00EB8C6C AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (49, 50, N'/upload/201504/18/thumb_201504181416251481.jpg', N'/upload/201504/18/201504181416251481.jpg', N'', CAST(0x0000A47E00EB8C7A AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (50, 51, N'/upload/201504/18/thumb_201504181420529760.jpg', N'/upload/201504/18/201504181420529760.jpg', N'', CAST(0x0000A47E00EC779A AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (51, 51, N'/upload/201504/18/thumb_201504181420530761.jpg', N'/upload/201504/18/201504181420530761.jpg', N'', CAST(0x0000A47E00EC77A8 AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (52, 51, N'/upload/201504/18/thumb_201504181420533291.jpg', N'/upload/201504/18/201504181420533291.jpg', N'', CAST(0x0000A47E00EC77B1 AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (53, 52, N'/upload/201504/18/thumb_201504181426524427.jpg', N'/upload/201504/18/201504181426524427.jpg', N'', CAST(0x0000A47E00EE2348 AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (54, 52, N'/upload/201504/18/thumb_201504181426525744.jpg', N'/upload/201504/18/201504181426525744.jpg', N'', CAST(0x0000A47E00EE2356 AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (55, 52, N'/upload/201504/18/thumb_201504181426531161.jpg', N'/upload/201504/18/201504181426531161.jpg', N'', CAST(0x0000A47E00EE2364 AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (56, 53, N'/upload/201504/18/thumb_201504181431411505.jpg', N'/upload/201504/18/201504181431411505.jpg', N'', CAST(0x0000A47E00EF6964 AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (57, 53, N'/upload/201504/18/thumb_201504181431416818.jpg', N'/upload/201504/18/201504181431416818.jpg', N'', CAST(0x0000A47E00EF6972 AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (81, 30, N'/upload/201704/17/thumb_201704172352095496.jpg', N'/upload/201704/17/201704172352095496.jpg', N'', CAST(0x0000A75801895FDC AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (82, 30, N'/upload/201704/17/thumb_201704172352099849.jpg', N'/upload/201704/17/201704172352099849.jpg', N'', CAST(0x0000A75801895FDC AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (83, 30, N'/upload/201704/17/thumb_201704172352100477.jpg', N'/upload/201704/17/201704172352100477.jpg', N'', CAST(0x0000A75801895FDC AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (84, 30, N'/upload/201704/17/thumb_201704172352101393.jpg', N'/upload/201704/17/201704172352101393.jpg', N'', CAST(0x0000A75801895FDC AS DateTime))
SET IDENTITY_INSERT [dbo].[dt_article_albums] OFF
SET IDENTITY_INSERT [dbo].[dt_article_attach] ON 

INSERT [dbo].[dt_article_attach] ([id], [article_id], [file_name], [file_path], [file_size], [file_ext], [down_num], [point], [add_time]) VALUES (1, 56, N'干净整洁的绿色扁平化UI套件(PSD).zip', N'/upload/201504/18/201504182311117470.zip', 608, N'zip', 0, 0, CAST(0x0000A47E017E207B AS DateTime))
INSERT [dbo].[dt_article_attach] ([id], [article_id], [file_name], [file_path], [file_size], [file_ext], [down_num], [point], [add_time]) VALUES (2, 57, N'jqueryrotate制作机锋网积分抽奖效果.zip', N'/upload/201504/18/201504182322569933.zip', 217, N'zip', 0, 1, CAST(0x0000A47E0181D9E5 AS DateTime))
INSERT [dbo].[dt_article_attach] ([id], [article_id], [file_name], [file_path], [file_size], [file_ext], [down_num], [point], [add_time]) VALUES (3, 58, N'jQThumb – jQuery缩略图插件.zip', N'/upload/201504/18/201504182330109147.zip', 772, N'zip', 0, 0, CAST(0x0000A47E01856E22 AS DateTime))
INSERT [dbo].[dt_article_attach] ([id], [article_id], [file_name], [file_path], [file_size], [file_ext], [down_num], [point], [add_time]) VALUES (4, 59, N'Tipso – 轻巧的jQuery提示框插件.zip', N'/upload/201504/18/201504182342075293.zip', 41, N'zip', 0, 0, CAST(0x0000A47E0187EEE5 AS DateTime))
INSERT [dbo].[dt_article_attach] ([id], [article_id], [file_name], [file_path], [file_size], [file_ext], [down_num], [point], [add_time]) VALUES (5, 60, N'ck_slide – 简单的jQuery幻灯片插件.zip', N'/upload/201504/18/201504182357255775.zip', 544, N'zip', 0, 0, CAST(0x0000A47E018AD571 AS DateTime))
INSERT [dbo].[dt_article_attach] ([id], [article_id], [file_name], [file_path], [file_size], [file_ext], [down_num], [point], [add_time]) VALUES (6, 61, N'WOW.js – 让页面滚动更有趣.zip', N'/upload/201504/19/201504190003237865.zip', 16, N'zip', 1, 0, CAST(0x0000A47F0000EF6D AS DateTime))
INSERT [dbo].[dt_article_attach] ([id], [article_id], [file_name], [file_path], [file_size], [file_ext], [down_num], [point], [add_time]) VALUES (7, 62, N'12个丰富多彩的图标PSD素材.zip', N'/upload/201504/19/201504190022397292.zip', 120, N'zip', 0, 0, CAST(0x0000A47F0006F0E4 AS DateTime))
INSERT [dbo].[dt_article_attach] ([id], [article_id], [file_name], [file_path], [file_size], [file_ext], [down_num], [point], [add_time]) VALUES (8, 63, N'六边形上传按钮PSD源文件下载.zip', N'/upload/201504/19/201504190030190442.zip', 559, N'zip', 0, 0, CAST(0x0000A47F00092C37 AS DateTime))
INSERT [dbo].[dt_article_attach] ([id], [article_id], [file_name], [file_path], [file_size], [file_ext], [down_num], [point], [add_time]) VALUES (9, 64, N'Linecons – 48个免费矢量图标.rar', N'/upload/201504/19/201504190039107074.rar', 67, N'rar', 0, 0, CAST(0x0000A47F000AC915 AS DateTime))
INSERT [dbo].[dt_article_attach] ([id], [article_id], [file_name], [file_path], [file_size], [file_ext], [down_num], [point], [add_time]) VALUES (10, 65, N'30个IOS7风格简洁线条图标PSD素材.zip', N'/upload/201504/19/201504190048014374.zip', 238, N'zip', 0, 0, CAST(0x0000A47F000D308E AS DateTime))
INSERT [dbo].[dt_article_attach] ([id], [article_id], [file_name], [file_path], [file_size], [file_ext], [down_num], [point], [add_time]) VALUES (11, 66, N'腾讯游戏盒子2013官网页面html代码.zip', N'/upload/201504/19/201504190053004277.zip', 105, N'zip', 1, 0, CAST(0x0000A47F000E8F2F AS DateTime))
INSERT [dbo].[dt_article_attach] ([id], [article_id], [file_name], [file_path], [file_size], [file_ext], [down_num], [point], [add_time]) VALUES (12, 67, N'简单的描边图标.zip', N'/upload/201504/19/201504190056330184.zip', 101, N'zip', 0, 0, CAST(0x0000A47F000F896A AS DateTime))
INSERT [dbo].[dt_article_attach] ([id], [article_id], [file_name], [file_path], [file_size], [file_ext], [down_num], [point], [add_time]) VALUES (13, 68, N'百度百科2014新首页幻灯片.zip', N'/upload/201504/19/201504190101129112.zip', 353, N'zip', 0, 0, CAST(0x0000A47F0012CFCC AS DateTime))
INSERT [dbo].[dt_article_attach] ([id], [article_id], [file_name], [file_path], [file_size], [file_ext], [down_num], [point], [add_time]) VALUES (14, 69, N'polyfill.zip', N'/upload/201504/19/201504190111527909.zip', 206, N'zip', 0, 0, CAST(0x0000A47F0013BDDF AS DateTime))
INSERT [dbo].[dt_article_attach] ([id], [article_id], [file_name], [file_path], [file_size], [file_ext], [down_num], [point], [add_time]) VALUES (15, 70, N'PgwMenu – jQueryZepto响应式菜单.zip', N'/upload/201504/19/201504190121229928.zip', 39, N'zip', 1, 0, CAST(0x0000A47F0016FA42 AS DateTime))
SET IDENTITY_INSERT [dbo].[dt_article_attach] OFF
SET IDENTITY_INSERT [dbo].[dt_article_attribute_field] ON 

INSERT [dbo].[dt_article_attribute_field] ([id], [name], [title], [control_type], [data_type], [data_length], [data_place], [item_option], [default_value], [is_required], [is_password], [is_html], [editor_type], [valid_tip_msg], [valid_error_msg], [valid_pattern], [sort_id], [is_sys]) VALUES (3, N'source', N'信息来源', N'single-text', N'nvarchar(100)', 100, 0, N'', N'本站', 0, 0, 0, 0, N'非必填，最多50个字符', N'', N's0-50', 100, 1)
INSERT [dbo].[dt_article_attribute_field] ([id], [name], [title], [control_type], [data_type], [data_length], [data_place], [item_option], [default_value], [is_required], [is_password], [is_html], [editor_type], [valid_tip_msg], [valid_error_msg], [valid_pattern], [sort_id], [is_sys]) VALUES (7, N'market_price', N'市场价格', N'number', N'decimal(9,2)', 0, 2, N'', N'0', 0, 0, 0, 0, N'市场的参与价格，不参与计算', N'', N'/^(([1-9]{1}\d*)|([0]{1}))(\.(\d){1,2})?$/', 104, 1)
INSERT [dbo].[dt_article_attribute_field] ([id], [name], [title], [control_type], [data_type], [data_length], [data_place], [item_option], [default_value], [is_required], [is_password], [is_html], [editor_type], [valid_tip_msg], [valid_error_msg], [valid_pattern], [sort_id], [is_sys]) VALUES (8, N'sell_price', N'销售价格', N'number', N'decimal(9,2)', 0, 2, N'', N'0', 1, 0, 0, 0, N'*出售的实际交易价格', N'', N'/^(([1-9]{1}\d*)|([0]{1}))(\.(\d){1,2})?$/', 105, 1)
INSERT [dbo].[dt_article_attribute_field] ([id], [name], [title], [control_type], [data_type], [data_length], [data_place], [item_option], [default_value], [is_required], [is_password], [is_html], [editor_type], [valid_tip_msg], [valid_error_msg], [valid_pattern], [sort_id], [is_sys]) VALUES (12, N'video_src', N'视频上传', N'video', N'nvarchar(255)', 0, 0, N'', N'', 0, 0, 0, 0, N'', N'', N'', 99, 0)
SET IDENTITY_INSERT [dbo].[dt_article_attribute_field] OFF
INSERT [dbo].[dt_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point], [video_src]) VALUES (27, N'', N'网易新闻', N'', N'', 0, CAST(0.00 AS Decimal(9, 2)), CAST(0.00 AS Decimal(9, 2)), 0, NULL)
INSERT [dbo].[dt_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point], [video_src]) VALUES (29, N'', N'荆楚网', N'', N'', 0, CAST(0.00 AS Decimal(9, 2)), CAST(0.00 AS Decimal(9, 2)), 0, NULL)
INSERT [dbo].[dt_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point], [video_src]) VALUES (30, N'', N'新浪网', N'', N'', 0, CAST(0.00 AS Decimal(9, 2)), CAST(0.00 AS Decimal(9, 2)), 0, NULL)
INSERT [dbo].[dt_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point], [video_src]) VALUES (37, NULL, N'本站', N'', NULL, 0, CAST(0.00 AS Decimal(9, 2)), CAST(0.00 AS Decimal(9, 2)), 0, NULL)
INSERT [dbo].[dt_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point], [video_src]) VALUES (38, NULL, N'本站', N'', NULL, 0, CAST(0.00 AS Decimal(9, 2)), CAST(0.00 AS Decimal(9, 2)), 0, NULL)
INSERT [dbo].[dt_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point], [video_src]) VALUES (39, NULL, N'本站', N'', NULL, 0, CAST(0.00 AS Decimal(9, 2)), CAST(0.00 AS Decimal(9, 2)), 0, NULL)
INSERT [dbo].[dt_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point], [video_src]) VALUES (40, NULL, N'本站', N'', NULL, 0, CAST(0.00 AS Decimal(9, 2)), CAST(0.00 AS Decimal(9, 2)), 0, NULL)
INSERT [dbo].[dt_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point], [video_src]) VALUES (41, NULL, N'本站', N'', NULL, 0, CAST(0.00 AS Decimal(9, 2)), CAST(0.00 AS Decimal(9, 2)), 0, NULL)
INSERT [dbo].[dt_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point], [video_src]) VALUES (42, NULL, N'本站', N'', NULL, 0, CAST(0.00 AS Decimal(9, 2)), CAST(0.00 AS Decimal(9, 2)), 0, NULL)
INSERT [dbo].[dt_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point], [video_src]) VALUES (43, NULL, N'本站', N'', NULL, 0, CAST(0.00 AS Decimal(9, 2)), CAST(0.00 AS Decimal(9, 2)), 0, NULL)
INSERT [dbo].[dt_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point], [video_src]) VALUES (44, NULL, N'本站', N'', NULL, 0, CAST(0.00 AS Decimal(9, 2)), CAST(0.00 AS Decimal(9, 2)), 0, NULL)
INSERT [dbo].[dt_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point], [video_src]) VALUES (45, NULL, N'本站', N'', NULL, 0, CAST(0.00 AS Decimal(9, 2)), CAST(0.00 AS Decimal(9, 2)), 0, NULL)
INSERT [dbo].[dt_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point], [video_src]) VALUES (46, NULL, N'本站', N'', NULL, 0, CAST(0.00 AS Decimal(9, 2)), CAST(0.00 AS Decimal(9, 2)), 0, NULL)
INSERT [dbo].[dt_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point], [video_src]) VALUES (47, NULL, N'本站', N'', NULL, 0, CAST(0.00 AS Decimal(9, 2)), CAST(0.00 AS Decimal(9, 2)), 0, NULL)
INSERT [dbo].[dt_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point], [video_src]) VALUES (48, NULL, N'本站', N'', NULL, 0, CAST(0.00 AS Decimal(9, 2)), CAST(0.00 AS Decimal(9, 2)), 0, NULL)
INSERT [dbo].[dt_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point], [video_src]) VALUES (49, NULL, N'本站', N'', NULL, 0, CAST(0.00 AS Decimal(9, 2)), CAST(0.00 AS Decimal(9, 2)), 0, NULL)
INSERT [dbo].[dt_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point], [video_src]) VALUES (50, NULL, N'本站', N'', NULL, 0, CAST(0.00 AS Decimal(9, 2)), CAST(0.00 AS Decimal(9, 2)), 0, NULL)
INSERT [dbo].[dt_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point], [video_src]) VALUES (51, NULL, N'本站', N'', NULL, 0, CAST(0.00 AS Decimal(9, 2)), CAST(0.00 AS Decimal(9, 2)), 0, NULL)
INSERT [dbo].[dt_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point], [video_src]) VALUES (52, NULL, N'本站', N'', NULL, 0, CAST(0.00 AS Decimal(9, 2)), CAST(0.00 AS Decimal(9, 2)), 0, NULL)
INSERT [dbo].[dt_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point], [video_src]) VALUES (53, NULL, N'本站', N'', NULL, 0, CAST(0.00 AS Decimal(9, 2)), CAST(0.00 AS Decimal(9, 2)), 0, NULL)
INSERT [dbo].[dt_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point], [video_src]) VALUES (54, NULL, NULL, NULL, NULL, 0, CAST(0.00 AS Decimal(9, 2)), CAST(0.00 AS Decimal(9, 2)), 0, NULL)
INSERT [dbo].[dt_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point], [video_src]) VALUES (55, NULL, NULL, NULL, NULL, 0, CAST(0.00 AS Decimal(9, 2)), CAST(0.00 AS Decimal(9, 2)), 0, NULL)
INSERT [dbo].[dt_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point], [video_src]) VALUES (56, NULL, N'本站', N'', NULL, 0, CAST(0.00 AS Decimal(9, 2)), CAST(0.00 AS Decimal(9, 2)), 0, NULL)
INSERT [dbo].[dt_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point], [video_src]) VALUES (57, NULL, N'本站', N'', NULL, 0, CAST(0.00 AS Decimal(9, 2)), CAST(0.00 AS Decimal(9, 2)), 0, NULL)
INSERT [dbo].[dt_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point], [video_src]) VALUES (58, NULL, N'本站', N'', NULL, 0, CAST(0.00 AS Decimal(9, 2)), CAST(0.00 AS Decimal(9, 2)), 0, NULL)
INSERT [dbo].[dt_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point], [video_src]) VALUES (59, NULL, N'本站', N'', NULL, 0, CAST(0.00 AS Decimal(9, 2)), CAST(0.00 AS Decimal(9, 2)), 0, NULL)
INSERT [dbo].[dt_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point], [video_src]) VALUES (60, NULL, N'本站', N'', NULL, 0, CAST(0.00 AS Decimal(9, 2)), CAST(0.00 AS Decimal(9, 2)), 0, NULL)
INSERT [dbo].[dt_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point], [video_src]) VALUES (61, NULL, N'本站', N'', NULL, 0, CAST(0.00 AS Decimal(9, 2)), CAST(0.00 AS Decimal(9, 2)), 0, NULL)
INSERT [dbo].[dt_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point], [video_src]) VALUES (62, NULL, N'本站', N'', NULL, 0, CAST(0.00 AS Decimal(9, 2)), CAST(0.00 AS Decimal(9, 2)), 0, NULL)
INSERT [dbo].[dt_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point], [video_src]) VALUES (63, NULL, N'本站', N'', NULL, 0, CAST(0.00 AS Decimal(9, 2)), CAST(0.00 AS Decimal(9, 2)), 0, NULL)
INSERT [dbo].[dt_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point], [video_src]) VALUES (64, NULL, N'本站', N'', NULL, 0, CAST(0.00 AS Decimal(9, 2)), CAST(0.00 AS Decimal(9, 2)), 0, NULL)
INSERT [dbo].[dt_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point], [video_src]) VALUES (65, NULL, N'本站', N'', NULL, 0, CAST(0.00 AS Decimal(9, 2)), CAST(0.00 AS Decimal(9, 2)), 0, NULL)
INSERT [dbo].[dt_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point], [video_src]) VALUES (66, NULL, N'本站', N'', NULL, 0, CAST(0.00 AS Decimal(9, 2)), CAST(0.00 AS Decimal(9, 2)), 0, NULL)
INSERT [dbo].[dt_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point], [video_src]) VALUES (67, NULL, N'本站', N'', NULL, 0, CAST(0.00 AS Decimal(9, 2)), CAST(0.00 AS Decimal(9, 2)), 0, NULL)
INSERT [dbo].[dt_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point], [video_src]) VALUES (68, NULL, N'本站', N'', NULL, 0, CAST(0.00 AS Decimal(9, 2)), CAST(0.00 AS Decimal(9, 2)), 0, NULL)
INSERT [dbo].[dt_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point], [video_src]) VALUES (69, NULL, N'本站', N'', NULL, 0, CAST(0.00 AS Decimal(9, 2)), CAST(0.00 AS Decimal(9, 2)), 0, NULL)
INSERT [dbo].[dt_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point], [video_src]) VALUES (70, NULL, N'本站', N'', NULL, 0, CAST(0.00 AS Decimal(9, 2)), CAST(0.00 AS Decimal(9, 2)), 0, NULL)
INSERT [dbo].[dt_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point], [video_src]) VALUES (71, N'更新至18集', NULL, NULL, NULL, 0, CAST(0.00 AS Decimal(9, 2)), CAST(0.00 AS Decimal(9, 2)), 0, N'http://movie.ks.js.cn/flv/other/1_0.mp4')
INSERT [dbo].[dt_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point], [video_src]) VALUES (72, N'更新至19集', NULL, NULL, NULL, 0, CAST(0.00 AS Decimal(9, 2)), CAST(0.00 AS Decimal(9, 2)), 0, N'http://movie.ks.js.cn/flv/other/1_0.mp4')
INSERT [dbo].[dt_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point], [video_src]) VALUES (73, N'23集全', NULL, NULL, NULL, 0, CAST(0.00 AS Decimal(9, 2)), CAST(0.00 AS Decimal(9, 2)), 0, N'http://movie.ks.js.cn/flv/other/1_0.mp4')
INSERT [dbo].[dt_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point], [video_src]) VALUES (74, N'96集全', NULL, NULL, NULL, 0, CAST(0.00 AS Decimal(9, 2)), CAST(0.00 AS Decimal(9, 2)), 0, N'http://movie.ks.js.cn/flv/other/1_0.mp4')
INSERT [dbo].[dt_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point], [video_src]) VALUES (75, N'主演：李易峰 / 陈伟霆 / 唐嫣', NULL, NULL, NULL, 0, CAST(0.00 AS Decimal(9, 2)), CAST(0.00 AS Decimal(9, 2)), 0, N'http://movie.ks.js.cn/flv/other/1_0.mp4')
INSERT [dbo].[dt_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point], [video_src]) VALUES (76, N'主演：金南珠 / 吴志浩', NULL, NULL, NULL, 0, CAST(0.00 AS Decimal(9, 2)), CAST(0.00 AS Decimal(9, 2)), 0, N'http://movie.ks.js.cn/flv/other/1_0.mp4')
INSERT [dbo].[dt_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point], [video_src]) VALUES (77, N'主演：黄渤 / 徐峥 / 袁泉', NULL, NULL, NULL, 0, CAST(0.00 AS Decimal(9, 2)), CAST(0.00 AS Decimal(9, 2)), 0, N'http://movie.ks.js.cn/flv/other/1_0.mp4')
INSERT [dbo].[dt_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point], [video_src]) VALUES (78, N'主演：江一燕 / 郑恺', NULL, NULL, NULL, 0, CAST(0.00 AS Decimal(9, 2)), CAST(0.00 AS Decimal(9, 2)), 0, N'http://movie.ks.js.cn/flv/other/1_0.mp4')
INSERT [dbo].[dt_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point], [video_src]) VALUES (79, N'上映时间：2015年4月12日', NULL, NULL, NULL, 0, CAST(0.00 AS Decimal(9, 2)), CAST(0.00 AS Decimal(9, 2)), 0, N'http://movie.ks.js.cn/flv/other/1_0.mp4')
INSERT [dbo].[dt_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point], [video_src]) VALUES (80, N'2011年6月17日美国上映', NULL, NULL, NULL, 0, CAST(0.00 AS Decimal(9, 2)), CAST(0.00 AS Decimal(9, 2)), 0, N'http://movie.ks.js.cn/flv/other/1_0.mp4')
INSERT [dbo].[dt_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point], [video_src]) VALUES (81, N'2015年1月30日在中国上映', NULL, NULL, NULL, 0, CAST(0.00 AS Decimal(9, 2)), CAST(0.00 AS Decimal(9, 2)), 0, N'http://movie.ks.js.cn/flv/other/1_0.mp4')
INSERT [dbo].[dt_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point], [video_src]) VALUES (82, N'马玲蹲守男生宿舍大胆告白 为爱跳泳池换取求爱机会', NULL, NULL, NULL, 0, CAST(0.00 AS Decimal(9, 2)), CAST(0.00 AS Decimal(9, 2)), 0, N'http://movie.ks.js.cn/flv/other/1_0.mp4')
INSERT [dbo].[dt_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point], [video_src]) VALUES (83, N'大型户外竞技真人秀节目', NULL, NULL, NULL, 0, CAST(0.00 AS Decimal(9, 2)), CAST(0.00 AS Decimal(9, 2)), 0, N'http://movie.ks.js.cn/flv/other/1_0.mp4')
INSERT [dbo].[dt_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point], [video_src]) VALUES (84, N'现代生活节奏的相亲节目', NULL, NULL, NULL, 0, CAST(0.00 AS Decimal(9, 2)), CAST(0.00 AS Decimal(9, 2)), 0, N'http://movie.ks.js.cn/flv/other/1_0.mp4')
INSERT [dbo].[dt_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point], [video_src]) VALUES (85, N'以人和、家和、天下和为口号', NULL, NULL, NULL, 0, CAST(0.00 AS Decimal(9, 2)), CAST(0.00 AS Decimal(9, 2)), 0, N'http://movie.ks.js.cn/flv/other/1_0.mp4')
INSERT [dbo].[dt_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point], [video_src]) VALUES (86, N'探讨中国人与美食的关系', NULL, NULL, NULL, 0, CAST(0.00 AS Decimal(9, 2)), CAST(0.00 AS Decimal(9, 2)), 0, N'http://movie.ks.js.cn/flv/other/1_0.mp4')
INSERT [dbo].[dt_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point], [video_src]) VALUES (102, N'最有料的互联网峰会', N'本站', N'', N'', 0, CAST(0.00 AS Decimal(9, 2)), CAST(0.00 AS Decimal(9, 2)), 0, NULL)
INSERT [dbo].[dt_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point], [video_src]) VALUES (103, N'', N'本站', N'', N'', 0, CAST(0.00 AS Decimal(9, 2)), CAST(0.00 AS Decimal(9, 2)), 0, NULL)
INSERT [dbo].[dt_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point], [video_src]) VALUES (104, N'', N'本站', N'', N'', 0, CAST(0.00 AS Decimal(9, 2)), CAST(0.00 AS Decimal(9, 2)), 0, NULL)
INSERT [dbo].[dt_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point], [video_src]) VALUES (105, N'万里江山一片红，背后的企划人辛苦了', N'本站', N'', N'', 0, CAST(0.00 AS Decimal(9, 2)), CAST(0.00 AS Decimal(9, 2)), 0, NULL)
INSERT [dbo].[dt_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point], [video_src]) VALUES (106, N'', N'本站', N'', N'', 0, CAST(0.00 AS Decimal(9, 2)), CAST(0.00 AS Decimal(9, 2)), 0, NULL)
INSERT [dbo].[dt_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point], [video_src]) VALUES (107, N'文字推荐', N'本站', N'', N'', 0, CAST(0.00 AS Decimal(9, 2)), CAST(0.00 AS Decimal(9, 2)), 0, NULL)
INSERT [dbo].[dt_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point], [video_src]) VALUES (108, N'文字', N'本站', N'', N'', 0, CAST(0.00 AS Decimal(9, 2)), CAST(0.00 AS Decimal(9, 2)), 0, NULL)
SET IDENTITY_INSERT [dbo].[dt_article_category] ON 

INSERT [dbo].[dt_article_category] ([id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description]) VALUES (26, 10, N'明星专家', N'', 0, N',26,', 1, 1, N'', N'', N'', N'', N'', N'')
INSERT [dbo].[dt_article_category] ([id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description]) VALUES (52, 18, N'自营资源', N'Proprietaryresources', 0, N',52,', 1, 1, N'', N'', N'', N'自营资源', N'', N'')
INSERT [dbo].[dt_article_category] ([id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description]) VALUES (53, 6, N'开业', N'', 57, N',57,53,', 2, 1, N'', N'', N'', N'', N'', N'')
INSERT [dbo].[dt_article_category] ([id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description]) VALUES (54, 6, N'频道2', N'', 57, N',57,54,', 2, 2, N'', N'', N'', N'', N'', N'')
INSERT [dbo].[dt_article_category] ([id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description]) VALUES (55, 6, N'频道3', N'', 57, N',57,55,', 2, 3, N'', N'', N'', N'', N'', N'')
INSERT [dbo].[dt_article_category] ([id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description]) VALUES (56, 6, N'封面', N'', 57, N',57,56,', 2, 0, N'', N'', N'', N'', N'', N'')
INSERT [dbo].[dt_article_category] ([id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description]) VALUES (57, 6, N'动漫IP', N'', 0, N',57,', 1, 1, N'', N'', N'', N'', N'', N'')
INSERT [dbo].[dt_article_category] ([id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description]) VALUES (58, 7, N'文化展览', N'', 0, N',58,', 1, 1, N'', N'', N'', N'', N'', N'')
INSERT [dbo].[dt_article_category] ([id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description]) VALUES (59, 7, N'平岛1', N'', 58, N',58,59,', 2, 2, N'', N'', N'', N'', N'', N'')
INSERT [dbo].[dt_article_category] ([id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description]) VALUES (60, 7, N'平岛2', N'', 58, N',58,60,', 2, 3, N'', N'', N'', N'', N'', N'')
INSERT [dbo].[dt_article_category] ([id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description]) VALUES (61, 9, N'文艺演出', N'', 0, N',61,', 1, 1, N'', N'', N'', N'', N'', N'')
INSERT [dbo].[dt_article_category] ([id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description]) VALUES (62, 9, N'平岛1', N'', 61, N',61,62,', 2, 2, N'', N'', N'', N'', N'', N'')
INSERT [dbo].[dt_article_category] ([id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description]) VALUES (63, 9, N'平岛2', N'', 61, N',61,63,', 2, 3, N'', N'', N'', N'', N'', N'')
INSERT [dbo].[dt_article_category] ([id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description]) VALUES (64, 10, N'平岛1', N'', 26, N',26,64,', 2, 2, N'', N'', N'', N'', N'', N'')
INSERT [dbo].[dt_article_category] ([id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description]) VALUES (65, 11, N'主题活动', N'', 0, N',65,', 1, 1, N'', N'', N'', N'', N'', N'')
INSERT [dbo].[dt_article_category] ([id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description]) VALUES (66, 11, N'平岛13333', N'', 65, N',65,66,', 2, 2, N'', N'', N'', N'', N'', N'')
INSERT [dbo].[dt_article_category] ([id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description]) VALUES (67, 8, N'创意道具', N'', 0, N',67,', 1, 1, N'', N'', N'', N'', N'', N'')
INSERT [dbo].[dt_article_category] ([id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description]) VALUES (68, 8, N'平岛13反对萨芬打算', N'', 67, N',67,68,', 2, 2, N'', N'', N'', N'', N'', N'')
SET IDENTITY_INSERT [dbo].[dt_article_category] OFF
SET IDENTITY_INSERT [dbo].[dt_article_spec] ON 

INSERT [dbo].[dt_article_spec] ([id], [parent_id], [title], [img_url], [remark], [sort_id]) VALUES (8, 0, N'颜色', NULL, N'全部颜色规格', 99)
INSERT [dbo].[dt_article_spec] ([id], [parent_id], [title], [img_url], [remark], [sort_id]) VALUES (9, 8, N'白色', N'/upload/201503/25/201503251553231051.jpg', NULL, 99)
INSERT [dbo].[dt_article_spec] ([id], [parent_id], [title], [img_url], [remark], [sort_id]) VALUES (10, 8, N'红色', N'/upload/201503/25/201503251553387052.jpg', NULL, 101)
INSERT [dbo].[dt_article_spec] ([id], [parent_id], [title], [img_url], [remark], [sort_id]) VALUES (11, 8, N'绿色', N'/upload/201503/25/201503251553466924.jpg', NULL, 101)
INSERT [dbo].[dt_article_spec] ([id], [parent_id], [title], [img_url], [remark], [sort_id]) VALUES (12, 8, N'黄色', N'/upload/201503/25/201503251553550852.jpg', NULL, 102)
INSERT [dbo].[dt_article_spec] ([id], [parent_id], [title], [img_url], [remark], [sort_id]) VALUES (13, 8, N'黑色', N'/upload/201503/25/201503251554034624.jpg', NULL, 103)
INSERT [dbo].[dt_article_spec] ([id], [parent_id], [title], [img_url], [remark], [sort_id]) VALUES (14, 8, N'蓝色', N'/upload/201503/25/201503251554117928.jpg', NULL, 104)
INSERT [dbo].[dt_article_spec] ([id], [parent_id], [title], [img_url], [remark], [sort_id]) VALUES (15, 0, N'版本', NULL, N'', 100)
INSERT [dbo].[dt_article_spec] ([id], [parent_id], [title], [img_url], [remark], [sort_id]) VALUES (16, 15, N'移动4G', N'', NULL, 99)
INSERT [dbo].[dt_article_spec] ([id], [parent_id], [title], [img_url], [remark], [sort_id]) VALUES (17, 15, N'联通4G', N'', NULL, 100)
INSERT [dbo].[dt_article_spec] ([id], [parent_id], [title], [img_url], [remark], [sort_id]) VALUES (18, 15, N'电信4G', N'', NULL, 101)
INSERT [dbo].[dt_article_spec] ([id], [parent_id], [title], [img_url], [remark], [sort_id]) VALUES (19, 15, N'双网通', N'', NULL, 102)
INSERT [dbo].[dt_article_spec] ([id], [parent_id], [title], [img_url], [remark], [sort_id]) VALUES (22, 15, N'全网通', N'', NULL, 103)
SET IDENTITY_INSERT [dbo].[dt_article_spec] OFF
SET IDENTITY_INSERT [dbo].[dt_article_tags] ON 

INSERT [dbo].[dt_article_tags] ([id], [title], [is_red], [sort_id], [add_time]) VALUES (5, N'房企利润', 0, 99, CAST(0x0000A47C00C3237E AS DateTime))
INSERT [dbo].[dt_article_tags] ([id], [title], [is_red], [sort_id], [add_time]) VALUES (6, N'跌幅', 0, 99, CAST(0x0000A47C00C323A4 AS DateTime))
INSERT [dbo].[dt_article_tags] ([id], [title], [is_red], [sort_id], [add_time]) VALUES (7, N'买房', 1, 99, CAST(0x0000A47C00C7492C AS DateTime))
INSERT [dbo].[dt_article_tags] ([id], [title], [is_red], [sort_id], [add_time]) VALUES (8, N'炒股', 1, 99, CAST(0x0000A47C00C74956 AS DateTime))
INSERT [dbo].[dt_article_tags] ([id], [title], [is_red], [sort_id], [add_time]) VALUES (9, N'猎豹CS10', 1, 99, CAST(0x0000A47C00CAF3F7 AS DateTime))
INSERT [dbo].[dt_article_tags] ([id], [title], [is_red], [sort_id], [add_time]) VALUES (10, N'哈弗H8', 1, 99, CAST(0x0000A47C00CDF43B AS DateTime))
INSERT [dbo].[dt_article_tags] ([id], [title], [is_red], [sort_id], [add_time]) VALUES (11, N'哈弗H6', 1, 99, CAST(0x0000A47C00CF0823 AS DateTime))
INSERT [dbo].[dt_article_tags] ([id], [title], [is_red], [sort_id], [add_time]) VALUES (12, N'比亚迪S7', 1, 99, CAST(0x0000A47C00CF084D AS DateTime))
INSERT [dbo].[dt_article_tags] ([id], [title], [is_red], [sort_id], [add_time]) VALUES (13, N'长安CS75', 1, 99, CAST(0x0000A47C00CF0877 AS DateTime))
INSERT [dbo].[dt_article_tags] ([id], [title], [is_red], [sort_id], [add_time]) VALUES (14, N'三星S6', 1, 99, CAST(0x0000A47C00D27D26 AS DateTime))
INSERT [dbo].[dt_article_tags] ([id], [title], [is_red], [sort_id], [add_time]) VALUES (15, N'乐视手机', 1, 99, CAST(0x0000A47C00D4BFCB AS DateTime))
INSERT [dbo].[dt_article_tags] ([id], [title], [is_red], [sort_id], [add_time]) VALUES (16, N'淘宝', 1, 99, CAST(0x0000A47D00A93253 AS DateTime))
INSERT [dbo].[dt_article_tags] ([id], [title], [is_red], [sort_id], [add_time]) VALUES (17, N'海外购房', 1, 99, CAST(0x0000A47D00AA707A AS DateTime))
INSERT [dbo].[dt_article_tags] ([id], [title], [is_red], [sort_id], [add_time]) VALUES (18, N'京东', 1, 99, CAST(0x0000A47D00B74A58 AS DateTime))
INSERT [dbo].[dt_article_tags] ([id], [title], [is_red], [sort_id], [add_time]) VALUES (19, N'海外代购', 1, 99, CAST(0x0000A47D00B74A82 AS DateTime))
INSERT [dbo].[dt_article_tags] ([id], [title], [is_red], [sort_id], [add_time]) VALUES (20, N'卧室', 1, 99, CAST(0x0000A47E00CE3A3A AS DateTime))
INSERT [dbo].[dt_article_tags] ([id], [title], [is_red], [sort_id], [add_time]) VALUES (21, N'书柜', 1, 99, CAST(0x0000A47E00D000D7 AS DateTime))
INSERT [dbo].[dt_article_tags] ([id], [title], [is_red], [sort_id], [add_time]) VALUES (22, N'UI套件', 1, 99, CAST(0x0000A47E017E2511 AS DateTime))
INSERT [dbo].[dt_article_tags] ([id], [title], [is_red], [sort_id], [add_time]) VALUES (23, N'jQuery插件', 1, 99, CAST(0x0000A47E0187F36C AS DateTime))
INSERT [dbo].[dt_article_tags] ([id], [title], [is_red], [sort_id], [add_time]) VALUES (24, N'PSD素材', 1, 99, CAST(0x0000A47F0006F56C AS DateTime))
INSERT [dbo].[dt_article_tags] ([id], [title], [is_red], [sort_id], [add_time]) VALUES (25, N'美剧', 1, 99, CAST(0x0000A47F00E30E21 AS DateTime))
INSERT [dbo].[dt_article_tags] ([id], [title], [is_red], [sort_id], [add_time]) VALUES (26, N'大陆剧', 1, 99, CAST(0x0000A47F00EC134F AS DateTime))
SET IDENTITY_INSERT [dbo].[dt_article_tags] OFF
SET IDENTITY_INSERT [dbo].[dt_article_tags_relation] ON 

INSERT [dbo].[dt_article_tags_relation] ([id], [article_id], [tag_id]) VALUES (31, 37, 20)
INSERT [dbo].[dt_article_tags_relation] ([id], [article_id], [tag_id]) VALUES (32, 38, 21)
INSERT [dbo].[dt_article_tags_relation] ([id], [article_id], [tag_id]) VALUES (33, 56, 22)
INSERT [dbo].[dt_article_tags_relation] ([id], [article_id], [tag_id]) VALUES (34, 59, 23)
INSERT [dbo].[dt_article_tags_relation] ([id], [article_id], [tag_id]) VALUES (35, 60, 23)
INSERT [dbo].[dt_article_tags_relation] ([id], [article_id], [tag_id]) VALUES (36, 61, 23)
INSERT [dbo].[dt_article_tags_relation] ([id], [article_id], [tag_id]) VALUES (37, 62, 24)
INSERT [dbo].[dt_article_tags_relation] ([id], [article_id], [tag_id]) VALUES (41, 74, 26)
INSERT [dbo].[dt_article_tags_relation] ([id], [article_id], [tag_id]) VALUES (42, 71, 25)
INSERT [dbo].[dt_article_tags_relation] ([id], [article_id], [tag_id]) VALUES (43, 72, 25)
INSERT [dbo].[dt_article_tags_relation] ([id], [article_id], [tag_id]) VALUES (44, 73, 25)
INSERT [dbo].[dt_article_tags_relation] ([id], [article_id], [tag_id]) VALUES (54, 29, 16)
INSERT [dbo].[dt_article_tags_relation] ([id], [article_id], [tag_id]) VALUES (57, 30, 17)
SET IDENTITY_INSERT [dbo].[dt_article_tags_relation] OFF
SET IDENTITY_INSERT [dbo].[dt_channel] ON 

INSERT [dbo].[dt_channel] ([id], [site_id], [name], [title], [is_albums], [is_attach], [is_spec], [sort_id]) VALUES (6, 4, N'ComicIP', N'动漫IP', 1, 1, 0, 1)
INSERT [dbo].[dt_channel] ([id], [site_id], [name], [title], [is_albums], [is_attach], [is_spec], [sort_id]) VALUES (7, 4, N'CulturalExhibition', N'文化展览', 1, 1, 0, 2)
INSERT [dbo].[dt_channel] ([id], [site_id], [name], [title], [is_albums], [is_attach], [is_spec], [sort_id]) VALUES (8, 4, N'Creativeprops', N'创意道具', 1, 1, 0, 3)
INSERT [dbo].[dt_channel] ([id], [site_id], [name], [title], [is_albums], [is_attach], [is_spec], [sort_id]) VALUES (9, 4, N'Theatricalperformances', N'文艺演出', 1, 1, 0, 4)
INSERT [dbo].[dt_channel] ([id], [site_id], [name], [title], [is_albums], [is_attach], [is_spec], [sort_id]) VALUES (10, 4, N'Starexpert', N'明星专家', 1, 1, 0, 5)
INSERT [dbo].[dt_channel] ([id], [site_id], [name], [title], [is_albums], [is_attach], [is_spec], [sort_id]) VALUES (11, 4, N'Themeactivities', N'主题活动', 1, 1, 0, 6)
INSERT [dbo].[dt_channel] ([id], [site_id], [name], [title], [is_albums], [is_attach], [is_spec], [sort_id]) VALUES (18, 4, N'Proprietaryresources', N'自营资源', 1, 1, 0, 0)
INSERT [dbo].[dt_channel] ([id], [site_id], [name], [title], [is_albums], [is_attach], [is_spec], [sort_id]) VALUES (20, 4, N'ad', N'广告管理', 1, 0, 0, 7)
SET IDENTITY_INSERT [dbo].[dt_channel] OFF
SET IDENTITY_INSERT [dbo].[dt_channel_field] ON 

INSERT [dbo].[dt_channel_field] ([id], [channel_id], [field_id]) VALUES (16, 6, 3)
INSERT [dbo].[dt_channel_field] ([id], [channel_id], [field_id]) VALUES (25, 7, 7)
INSERT [dbo].[dt_channel_field] ([id], [channel_id], [field_id]) VALUES (26, 7, 8)
INSERT [dbo].[dt_channel_field] ([id], [channel_id], [field_id]) VALUES (29, 9, 3)
INSERT [dbo].[dt_channel_field] ([id], [channel_id], [field_id]) VALUES (31, 10, 3)
INSERT [dbo].[dt_channel_field] ([id], [channel_id], [field_id]) VALUES (48, 7, 3)
INSERT [dbo].[dt_channel_field] ([id], [channel_id], [field_id]) VALUES (52, 6, 7)
INSERT [dbo].[dt_channel_field] ([id], [channel_id], [field_id]) VALUES (53, 6, 8)
INSERT [dbo].[dt_channel_field] ([id], [channel_id], [field_id]) VALUES (55, 8, 3)
INSERT [dbo].[dt_channel_field] ([id], [channel_id], [field_id]) VALUES (58, 8, 7)
INSERT [dbo].[dt_channel_field] ([id], [channel_id], [field_id]) VALUES (59, 8, 8)
INSERT [dbo].[dt_channel_field] ([id], [channel_id], [field_id]) VALUES (63, 9, 7)
INSERT [dbo].[dt_channel_field] ([id], [channel_id], [field_id]) VALUES (64, 9, 8)
INSERT [dbo].[dt_channel_field] ([id], [channel_id], [field_id]) VALUES (68, 10, 7)
INSERT [dbo].[dt_channel_field] ([id], [channel_id], [field_id]) VALUES (69, 10, 8)
INSERT [dbo].[dt_channel_field] ([id], [channel_id], [field_id]) VALUES (72, 11, 3)
INSERT [dbo].[dt_channel_field] ([id], [channel_id], [field_id]) VALUES (75, 11, 7)
INSERT [dbo].[dt_channel_field] ([id], [channel_id], [field_id]) VALUES (76, 11, 8)
INSERT [dbo].[dt_channel_field] ([id], [channel_id], [field_id]) VALUES (79, 18, 3)
INSERT [dbo].[dt_channel_field] ([id], [channel_id], [field_id]) VALUES (82, 18, 7)
INSERT [dbo].[dt_channel_field] ([id], [channel_id], [field_id]) VALUES (83, 18, 8)
INSERT [dbo].[dt_channel_field] ([id], [channel_id], [field_id]) VALUES (89, 20, 3)
INSERT [dbo].[dt_channel_field] ([id], [channel_id], [field_id]) VALUES (90, 20, 7)
INSERT [dbo].[dt_channel_field] ([id], [channel_id], [field_id]) VALUES (91, 20, 8)
SET IDENTITY_INSERT [dbo].[dt_channel_field] OFF
SET IDENTITY_INSERT [dbo].[dt_channel_site] ON 

INSERT [dbo].[dt_channel_site] ([id], [title], [build_path], [templet_path], [domain], [name], [logo], [company], [address], [tel], [fax], [email], [crod], [copyright], [seo_title], [seo_keyword], [seo_description], [is_mobile], [is_default], [sort_id]) VALUES (4, N'默认站点', N'main', N'main', N'', N'活动资源网内容管理系统', N'', N'活动资源网有限公司', N'短短的', N'', N'-', N'fdsafas@qq.com', N'fdsafsdfsd', N'活动资源网首页fdsafsafsfs', N'活动资源网首页', N'活动资源网首页', N'活动资源网首页', 0, 1, 99)
INSERT [dbo].[dt_channel_site] ([id], [title], [build_path], [templet_path], [domain], [name], [logo], [company], [address], [tel], [fax], [email], [crod], [copyright], [seo_title], [seo_keyword], [seo_description], [is_mobile], [is_default], [sort_id]) VALUES (5, N'手机网站', N'mobile', N'mobile', N'm.dtcms.net', N'活动资源网首页', N'', N'活动资源网', N'活动资源网', N'', N'', N'fdsafsdafds', N'fdsafsdafds', N'活动资源网首页fdsfsfsfsd', N'活动资源网首页', N'活动资源网首页', N'活动资源网首页', 1, 0, 100)
SET IDENTITY_INSERT [dbo].[dt_channel_site] OFF
SET IDENTITY_INSERT [dbo].[dt_express] ON 

INSERT [dbo].[dt_express] ([id], [title], [express_code], [express_fee], [website], [remark], [sort_id], [is_lock]) VALUES (1, N'顺丰快递', N'shunfeng', CAST(24.00 AS Decimal(9, 2)), N'http://www.sf-express.com', N'国内最好的物流公司', 99, 0)
SET IDENTITY_INSERT [dbo].[dt_express] OFF
SET IDENTITY_INSERT [dbo].[dt_link] ON 

INSERT [dbo].[dt_link] ([id], [site_path], [title], [user_name], [user_tel], [email], [site_url], [img_url], [is_image], [sort_id], [is_red], [is_lock], [add_time]) VALUES (1, N'main', N'动软中国', N'', N'', N'', N'http://www.maticsoft.com', N'http://www.maticsoft.com/images/logo/logo12.gif', 1, 99, 1, 0, CAST(0x0000A48D0015CDA4 AS DateTime))
INSERT [dbo].[dt_link] ([id], [site_path], [title], [user_name], [user_tel], [email], [site_url], [img_url], [is_image], [sort_id], [is_red], [is_lock], [add_time]) VALUES (2, N'main', N'读科技', N'', N'', N'', N'http://www.dukeji.com', N'http://www.dukeji.com/Content/themes/base/CMS/images/logo.jpg', 1, 99, 1, 0, CAST(0x0000A48D001C735A AS DateTime))
INSERT [dbo].[dt_link] ([id], [site_path], [title], [user_name], [user_tel], [email], [site_url], [img_url], [is_image], [sort_id], [is_red], [is_lock], [add_time]) VALUES (3, N'main', N'中国站长网', N'', N'', N'', N'http://www.chinaz.com', N'http://www.chinaz.com/images/chinaz.gif', 1, 99, 1, 0, CAST(0x0000A48D001CAACE AS DateTime))
INSERT [dbo].[dt_link] ([id], [site_path], [title], [user_name], [user_tel], [email], [site_url], [img_url], [is_image], [sort_id], [is_red], [is_lock], [add_time]) VALUES (4, N'main', N'我要源码站', N'', N'', N'', N'http://www.51aspx.com', N'http://img.51aspx.com/p/images/logo_88x31.gif', 1, 99, 1, 0, CAST(0x0000A48D001E65E1 AS DateTime))
INSERT [dbo].[dt_link] ([id], [site_path], [title], [user_name], [user_tel], [email], [site_url], [img_url], [is_image], [sort_id], [is_red], [is_lock], [add_time]) VALUES (5, N'main', N'懒人图库', N'', N'', N'', N'http://www.lanrentuku.com', N'http://img.lanrentuku.com/img/images/logo88x31.gif', 1, 99, 1, 0, CAST(0x0000A48D00217018 AS DateTime))
INSERT [dbo].[dt_link] ([id], [site_path], [title], [user_name], [user_tel], [email], [site_url], [img_url], [is_image], [sort_id], [is_red], [is_lock], [add_time]) VALUES (6, N'main', N'深圳体验设计专业委员会', N'', N'', N'', N'http://www.uxdc.org', N'http://www.uxdc.org/logo/uxdc_logo.gif', 1, 99, 1, 0, CAST(0x0000A48D00228774 AS DateTime))
INSERT [dbo].[dt_link] ([id], [site_path], [title], [user_name], [user_tel], [email], [site_url], [img_url], [is_image], [sort_id], [is_red], [is_lock], [add_time]) VALUES (7, N'main', N'腾讯CDC', N'', N'', N'', N'http://cdc.tencent.com', N'http://cdc.tencent.com/wp-content/uploads/cdc_logo.gif', 1, 99, 1, 0, CAST(0x0000A48D0022BB96 AS DateTime))
INSERT [dbo].[dt_link] ([id], [site_path], [title], [user_name], [user_tel], [email], [site_url], [img_url], [is_image], [sort_id], [is_red], [is_lock], [add_time]) VALUES (8, N'main', N'视觉同盟', N'', N'', N'', N'http://www.visionunion.com', N'http://www.visionunion.com/help/images/vu_logo.gif', 1, 99, 1, 0, CAST(0x0000A48D0022FCB5 AS DateTime))
INSERT [dbo].[dt_link] ([id], [site_path], [title], [user_name], [user_tel], [email], [site_url], [img_url], [is_image], [sort_id], [is_red], [is_lock], [add_time]) VALUES (9, N'main', N'百度搜索用户体验中心', N'', N'', N'', N'http://ued.baidu.com', N'http://cdc.tencent.com/wp-content/uploads/2015/02/ued.baidu_.com_.jpg', 1, 99, 1, 0, CAST(0x0000A48D00240099 AS DateTime))
INSERT [dbo].[dt_link] ([id], [site_path], [title], [user_name], [user_tel], [email], [site_url], [img_url], [is_image], [sort_id], [is_red], [is_lock], [add_time]) VALUES (10, N'main', N'蓝色理想', N'', N'', N'', N'http://www.blueidea.com', N'http://www.blueidea.com/logo.gif', 1, 99, 1, 0, CAST(0x0000A48D0024A247 AS DateTime))
INSERT [dbo].[dt_link] ([id], [site_path], [title], [user_name], [user_tel], [email], [site_url], [img_url], [is_image], [sort_id], [is_red], [is_lock], [add_time]) VALUES (11, N'main', N'盒子UI设计', N'', N'', N'', N'http://www.boxui.com', N'', 0, 99, 1, 0, CAST(0x0000A48D00255466 AS DateTime))
INSERT [dbo].[dt_link] ([id], [site_path], [title], [user_name], [user_tel], [email], [site_url], [img_url], [is_image], [sort_id], [is_red], [is_lock], [add_time]) VALUES (12, N'main', N'图标下载', N'', N'', N'', N'http://www.easyicon.net/', N'', 0, 99, 1, 0, CAST(0x0000A48D00258403 AS DateTime))
INSERT [dbo].[dt_link] ([id], [site_path], [title], [user_name], [user_tel], [email], [site_url], [img_url], [is_image], [sort_id], [is_red], [is_lock], [add_time]) VALUES (13, N'main', N'素材天下', N'', N'', N'', N'http://www.sucaitianxia.com', N'', 0, 99, 1, 0, CAST(0x0000A48D0025BF3C AS DateTime))
INSERT [dbo].[dt_link] ([id], [site_path], [title], [user_name], [user_tel], [email], [site_url], [img_url], [is_image], [sort_id], [is_red], [is_lock], [add_time]) VALUES (14, N'main', N'设计联盟', N'', N'', N'', N'http://www.cndu.cn', N'', 0, 99, 1, 0, CAST(0x0000A48D0025E484 AS DateTime))
INSERT [dbo].[dt_link] ([id], [site_path], [title], [user_name], [user_tel], [email], [site_url], [img_url], [is_image], [sort_id], [is_red], [is_lock], [add_time]) VALUES (15, N'main', N'插画中国', N'', N'', N'', N'http://www.chahua.org', N'', 0, 99, 1, 0, CAST(0x0000A48D00261835 AS DateTime))
INSERT [dbo].[dt_link] ([id], [site_path], [title], [user_name], [user_tel], [email], [site_url], [img_url], [is_image], [sort_id], [is_red], [is_lock], [add_time]) VALUES (16, N'main', N'设计路上', N'', N'', N'', N'http://www.sj63.com', N'', 0, 99, 1, 0, CAST(0x0000A48D00264A5C AS DateTime))
INSERT [dbo].[dt_link] ([id], [site_path], [title], [user_name], [user_tel], [email], [site_url], [img_url], [is_image], [sort_id], [is_red], [is_lock], [add_time]) VALUES (17, N'main', N'UI制造者', N'', N'', N'', N'http://www.uimaker.com', N'', 0, 99, 1, 0, CAST(0x0000A48D002676B5 AS DateTime))
INSERT [dbo].[dt_link] ([id], [site_path], [title], [user_name], [user_tel], [email], [site_url], [img_url], [is_image], [sort_id], [is_red], [is_lock], [add_time]) VALUES (18, N'main', N'视觉中国', N'', N'', N'', N'http://www.shijue.me', N'', 0, 99, 1, 0, CAST(0x0000A48D0026CF1E AS DateTime))
INSERT [dbo].[dt_link] ([id], [site_path], [title], [user_name], [user_tel], [email], [site_url], [img_url], [is_image], [sort_id], [is_red], [is_lock], [add_time]) VALUES (19, N'main', N'美图看看', N'', N'', N'', N'http://kankan.meitu.com', N'', 0, 99, 1, 0, CAST(0x0000A48D0026F9D9 AS DateTime))
INSERT [dbo].[dt_link] ([id], [site_path], [title], [user_name], [user_tel], [email], [site_url], [img_url], [is_image], [sort_id], [is_red], [is_lock], [add_time]) VALUES (20, N'main', N'包装设计网', N'', N'', N'', N'http://www.chndesign.com', N'', 0, 99, 1, 0, CAST(0x0000A48D00272ECD AS DateTime))
INSERT [dbo].[dt_link] ([id], [site_path], [title], [user_name], [user_tel], [email], [site_url], [img_url], [is_image], [sort_id], [is_red], [is_lock], [add_time]) VALUES (21, N'main', N'火星网', N'', N'', N'', N'http://www.hxsd.com.cn', N'', 0, 99, 1, 0, CAST(0x0000A48D0027B09E AS DateTime))
INSERT [dbo].[dt_link] ([id], [site_path], [title], [user_name], [user_tel], [email], [site_url], [img_url], [is_image], [sort_id], [is_red], [is_lock], [add_time]) VALUES (22, N'main', N'桌面城市', N'', N'', N'', N'http://www.deskcity.com', N'', 0, 99, 1, 0, CAST(0x0000A48D0027D690 AS DateTime))
INSERT [dbo].[dt_link] ([id], [site_path], [title], [user_name], [user_tel], [email], [site_url], [img_url], [is_image], [sort_id], [is_red], [is_lock], [add_time]) VALUES (23, N'main', N'天堂图片', N'', N'', N'', N'http://www.ivsky.com', N'', 0, 99, 1, 0, CAST(0x0000A48D00280930 AS DateTime))
INSERT [dbo].[dt_link] ([id], [site_path], [title], [user_name], [user_tel], [email], [site_url], [img_url], [is_image], [sort_id], [is_red], [is_lock], [add_time]) VALUES (24, N'main', N'游艺网', N'', N'', N'', N'http://www.game798.com', N'', 0, 99, 1, 0, CAST(0x0000A48D002830A3 AS DateTime))
INSERT [dbo].[dt_link] ([id], [site_path], [title], [user_name], [user_tel], [email], [site_url], [img_url], [is_image], [sort_id], [is_red], [is_lock], [add_time]) VALUES (25, N'main', N'JQuery', N'', N'', N'', N'http://www.jquery.com', N'', 0, 99, 1, 0, CAST(0x0000A48D00287C1C AS DateTime))
INSERT [dbo].[dt_link] ([id], [site_path], [title], [user_name], [user_tel], [email], [site_url], [img_url], [is_image], [sort_id], [is_red], [is_lock], [add_time]) VALUES (26, N'main', N'dowebok', N'', N'', N'', N'http://www.dowebok.com', N'', 0, 99, 1, 0, CAST(0x0000A48D0028EB91 AS DateTime))
INSERT [dbo].[dt_link] ([id], [site_path], [title], [user_name], [user_tel], [email], [site_url], [img_url], [is_image], [sort_id], [is_red], [is_lock], [add_time]) VALUES (27, N'main', N'前端开发仓库', N'', N'', N'', N'http://code.ciaoca.com', N'', 0, 99, 1, 0, CAST(0x0000A48D00292080 AS DateTime))
INSERT [dbo].[dt_link] ([id], [site_path], [title], [user_name], [user_tel], [email], [site_url], [img_url], [is_image], [sort_id], [is_red], [is_lock], [add_time]) VALUES (28, N'main', N'Discuz社区', N'', N'', N'', N'http://www.discuz.net', N'', 0, 99, 1, 0, CAST(0x0000A48D00299958 AS DateTime))
INSERT [dbo].[dt_link] ([id], [site_path], [title], [user_name], [user_tel], [email], [site_url], [img_url], [is_image], [sort_id], [is_red], [is_lock], [add_time]) VALUES (29, N'main', N'IT之家', N'', N'', N'', N'http://www.ithome.com', N'', 0, 99, 1, 0, CAST(0x0000A48D0029C44A AS DateTime))
INSERT [dbo].[dt_link] ([id], [site_path], [title], [user_name], [user_tel], [email], [site_url], [img_url], [is_image], [sort_id], [is_red], [is_lock], [add_time]) VALUES (30, N'main', N'中国IT实验室', N'', N'', N'', N'http://www.chinaitlab.com', N'', 0, 99, 1, 0, CAST(0x0000A48D002A1589 AS DateTime))
INSERT [dbo].[dt_link] ([id], [site_path], [title], [user_name], [user_tel], [email], [site_url], [img_url], [is_image], [sort_id], [is_red], [is_lock], [add_time]) VALUES (31, N'main', N'驱动之家', N'', N'', N'', N'http://www.mydrivers.com', N'', 0, 99, 1, 0, CAST(0x0000A48D002A47B0 AS DateTime))
INSERT [dbo].[dt_link] ([id], [site_path], [title], [user_name], [user_tel], [email], [site_url], [img_url], [is_image], [sort_id], [is_red], [is_lock], [add_time]) VALUES (32, N'main', N'雷锋网', N'', N'', N'', N'http://www.leiphone.com', N'', 0, 99, 1, 0, CAST(0x0000A48D002A71AA AS DateTime))
INSERT [dbo].[dt_link] ([id], [site_path], [title], [user_name], [user_tel], [email], [site_url], [img_url], [is_image], [sort_id], [is_red], [is_lock], [add_time]) VALUES (33, N'main', N'ckplayer视频播放器', N'', N'', N'', N'http://www.ckplayer.com', N'', 0, 99, 1, 0, CAST(0x0000A48D002A983C AS DateTime))
INSERT [dbo].[dt_link] ([id], [site_path], [title], [user_name], [user_tel], [email], [site_url], [img_url], [is_image], [sort_id], [is_red], [is_lock], [add_time]) VALUES (34, N'main', N'快递查询', N'', N'', N'', N'http://www.kuaidi100.com', N'', 0, 99, 1, 0, CAST(0x0000A48D002AE9E5 AS DateTime))
INSERT [dbo].[dt_link] ([id], [site_path], [title], [user_name], [user_tel], [email], [site_url], [img_url], [is_image], [sort_id], [is_red], [is_lock], [add_time]) VALUES (35, N'main', N'动力启航', N'', N'', N'', N'http://www.dtsoft.net', N'', 0, 99, 1, 0, CAST(0x0000A48D002B09B3 AS DateTime))
SET IDENTITY_INSERT [dbo].[dt_link] OFF
SET IDENTITY_INSERT [dbo].[dt_mail_template] ON 

INSERT [dbo].[dt_mail_template] ([id], [title], [call_index], [maill_title], [content], [is_sys]) VALUES (2, N'注册激活账户邮件', N'regverify', N'激活注册账户(请勿回复此邮件)', N'<p>
	<strong>尊敬的{username}，您好：</strong> 
</p>
<p>
	&nbsp;&nbsp;&nbsp; 欢迎您成为{webname}会员用户，请点击如下的网址进行激活您的会员账户：
</p>
<p>
	&nbsp;&nbsp;&nbsp; <a href="{linkurl}" target="_blank">{linkurl}</a> 
</p>
<hr />
<p>
	此链接有效期为{valid}天，请在{valid}天内点击链接进行注册；如果您从未注册过本站会员，请忽略本邮件；此邮件为系统自动发出，请勿回复。<br />
任何疑问，请拨打客服热线咨询：{webtel}。谢谢您的支持！
</p>
<div style="text-align:right;">
	{webname} {weburl}
</div>', 1)
INSERT [dbo].[dt_mail_template] ([id], [title], [call_index], [maill_title], [content], [is_sys]) VALUES (3, N'用户取回密码', N'getpassword', N'找回密码提示(请勿回复此邮件)', N'<strong>{username}，您好：</strong><br />
<p>
	您在<span style="color:#FF0000;">{webname}</span>点击了“忘记密码”找回申请，故系统自动为您发送了这封邮件。您可以点击以下链接修改您的密码：<br />
<a href="{linkurl}" target="_blank">{linkurl}</a> 
</p>
<hr />
<p>
	此链接有效期为{valid}天，请在{valid}天内点击链接进行修改。如果您不需要修改密码，或者您从未点击过“忘记密码”按钮，请忽略本邮件。<br />
任何疑问，请拨打客服热线咨询：{webtel}。谢谢您的支持！
</p>
<div style="text-align:right;">
	{webname} {weburl}
</div>', 1)
INSERT [dbo].[dt_mail_template] ([id], [title], [call_index], [maill_title], [content], [is_sys]) VALUES (4, N'欢迎新用户邮件', N'welcomemsg', N'欢迎新用户(请勿回复此邮件)', N'<p>
	<strong>尊敬的{username}，您好：</strong> 
</p>
<p>
	&nbsp;&nbsp;&nbsp; 您已成功注册并正式成为{webname}会员用户，请您注意保管好个人账户信息，防止丢失或泄漏。
</p>
<hr />
<p>
	此邮件为系统自动发出，请勿回复本邮件，任何疑问，请拨打客服热线咨询：{webtel}。谢谢您的支持！
</p>
<div style="text-align:right;">
	{webname} {weburl}
</div>', 1)
INSERT [dbo].[dt_mail_template] ([id], [title], [call_index], [maill_title], [content], [is_sys]) VALUES (5, N'订单确认通知', N'order_confirm', N'订单确认通知', N'<p>
	<strong>尊敬的{username}，您好：</strong> 
</p>
<p>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 您在{webname}的一笔订单已确认，订单号为：{orderno}，共计{amount}元，我们会尽快安排发货，请您耐心等待，祝您购物愉快！
</p>
<hr />
<p>
	此邮件为系统自动发出，请勿回复本邮件，任何疑问，请拨打客服热线咨询：{webtel}。谢谢您的支持！
</p>
<div style="text-align:right;">
	{webname} {weburl}
</div>', 1)
INSERT [dbo].[dt_mail_template] ([id], [title], [call_index], [maill_title], [content], [is_sys]) VALUES (6, N'订单发货通知', N'order_express', N'订单发货通知', N'<p>
	<strong>尊敬的{username}，您好：</strong> 
</p>
<p>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 您在{webname}的一笔订单已经发货，订单号为：{orderno}，共计{amount}元，请您注意查收，祝您购物愉快！
</p>
<hr />
<p>
	此邮件为系统自动发出，请勿回复本邮件，任何疑问，请拨打客服热线咨询：{webtel}。谢谢您的支持！
</p>
<div style="text-align:right;">
	{webname} {weburl}
</div>', 1)
INSERT [dbo].[dt_mail_template] ([id], [title], [call_index], [maill_title], [content], [is_sys]) VALUES (7, N'订单完成通知', N'order_complete', N'订单完成通知', N'<p>
	<strong>尊敬的{username}，您好：</strong> 
</p>
<p>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 您在{webname}的一笔订单交易完成，订单号为：{orderno}，共计{amount}元，期待您下次光临，祝您购物愉快！
</p>
<hr />
<p>
	此邮件为系统自动发出，请勿回复本邮件，任何疑问，请拨打客服热线咨询：{webtel}。谢谢您的支持！
</p>
<div style="text-align:right;">
	{webname} {weburl}
</div>', 1)
SET IDENTITY_INSERT [dbo].[dt_mail_template] OFF
SET IDENTITY_INSERT [dbo].[dt_manager] ON 

INSERT [dbo].[dt_manager] ([id], [role_id], [role_type], [user_name], [password], [salt], [real_name], [telephone], [email], [is_lock], [add_time]) VALUES (1, 1, 1, N'admin', N'399E45A6362B6082', N'24V0XZ', N'超级管理员', N'13800138000', N'info@dtcms.net', 0, CAST(0x0000A45A00E1AC53 AS DateTime))
SET IDENTITY_INSERT [dbo].[dt_manager] OFF
SET IDENTITY_INSERT [dbo].[dt_manager_role] ON 

INSERT [dbo].[dt_manager_role] ([id], [role_name], [role_type], [is_sys]) VALUES (1, N'超级管理组', 1, 1)
SET IDENTITY_INSERT [dbo].[dt_manager_role] OFF
SET IDENTITY_INSERT [dbo].[dt_navigation] ON 

INSERT [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys], [is_block]) VALUES (1, 0, 0, N'System', N'sys_contents', N'站点管理', N'站点', N'/admin/skin/default/nav/home.png', N'', 99, 0, N'系统默认导航，不可更改导航ID', N'Show', 1, 0)
INSERT [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys], [is_block]) VALUES (2, 0, 0, N'System', N'sys_application', N'应用管理', N'应用', N'/admin/skin/default/nav/pus.png', N'', 100, 0, N'系统默认导航，不可更改导航ID', N'Show', 1, 0)
INSERT [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys], [is_block]) VALUES (3, 0, 0, N'System', N'sys_users', N'会员管理', N'会员', N'/admin/skin/default/nav/user.png', N'', 101, 0, N'系统默认导航，不可更改导航ID', N'Show', 1, 0)
INSERT [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys], [is_block]) VALUES (4, 0, 0, N'System', N'sys_controller', N'控制面板', N'控制面板', N'/admin/skin/default/nav/sys.png', N'', 103, 0, N'系统默认导航，不可更改导航ID', N'Show', 0, 0)
INSERT [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys], [is_block]) VALUES (7, 4, 0, N'System', N'sys_manager', N'系统用户', N'', N'', N'', 103, 0, N'', N'Show', 0, 0)
INSERT [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys], [is_block]) VALUES (8, 7, 0, N'System', N'manager_list', N'管理员管理', N'', N'', N'manager/manager_list.aspx', 99, 0, N'', N'Show,View,Add,Edit,Delete', 0, 0)
INSERT [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys], [is_block]) VALUES (9, 7, 0, N'System', N'manager_role', N'角色管理', N'', N'', N'manager/role_list.aspx', 100, 0, N'', N'Show,View,Add,Edit,Delete', 0, 0)
INSERT [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys], [is_block]) VALUES (11, 4, 0, N'System', N'sys_settings', N'系统管理', N'', N'', N'', 99, 0, N'', N'Show', 0, 0)
INSERT [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys], [is_block]) VALUES (12, 11, 0, N'System', N'sys_config', N'系统设置', N'', N'', N'settings/sys_config.aspx', 99, 0, N'', N'Show,View,Edit', 0, 0)
INSERT [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys], [is_block]) VALUES (15, 4, 0, N'System', N'sys_site_settings', N'站点设置', N'', N'', N'', 100, 0, N'', N'Show', 0, 0)
INSERT [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys], [is_block]) VALUES (16, 15, 0, N'System', N'sys_site_manage', N'站点管理', N'', N'', N'channel/site_list.aspx', 99, 0, N'', N'Show,View,Add,Edit,Delete', 0, 0)
INSERT [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys], [is_block]) VALUES (17, 15, 0, N'System', N'sys_channel_manage', N'频道管理', N'', N'', N'channel/channel_list.aspx', 100, 0, N'', N'Show,View,Add,Edit,Delete', 0, 0)
INSERT [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys], [is_block]) VALUES (19, 4, 0, N'System', N'sys_design', N'界面管理', N'', N'', N'', 102, 0, N'', N'Show', 0, 0)
INSERT [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys], [is_block]) VALUES (22, 19, 0, N'System', N'sys_navigation', N'后台导航管理', N'', N'', N'settings/nav_list.aspx', 102, 0, N'', N'Show,View,Add,Edit,Delete', 0, 0)
INSERT [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys], [is_block]) VALUES (23, 0, 0, N'System', N'sys_orders', N'订单管理', N'订单', N'/admin/skin/default/nav/order.png', N'', 102, 0, N'', N'Show', 0, 0)
INSERT [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys], [is_block]) VALUES (25, 1, 0, N'System', N'channel_main', N'默认站点', N'', N'', N'', 99, 0, N'', N'Show', 1, 0)
INSERT [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys], [is_block]) VALUES (26, 2, 0, N'System', N'sys_plugin_manage', N'插件管理', N'', N'', N'', 99, 0, N'', N'Show,View', 1, 0)
INSERT [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys], [is_block]) VALUES (31, 25, 6, N'System', N'channel_ComicIP', N'动漫IP', N'', NULL, N'', 1, 0, N'', N'Show', 1, 0)
INSERT [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys], [is_block]) VALUES (32, 31, 6, N'System', N'channel_ComicIP_list', N'内容管理', N'', NULL, N'article/article_list.aspx', 99, 0, N'', N'Show,View,Add,Edit,Delete,Audit', 1, 0)
INSERT [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys], [is_block]) VALUES (33, 31, 6, N'System', N'channel_ComicIP_category', N'栏目类别', N'', NULL, N'article/category_list.aspx', 100, 0, N'', N'Show,View,Add,Edit,Delete', 1, 0)
INSERT [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys], [is_block]) VALUES (35, 23, 0, N'System', N'order_manage', N'订单管理', N'', N'', N'', 99, 0, N'', N'Show', 0, 0)
INSERT [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys], [is_block]) VALUES (36, 23, 0, N'System', N'order_settings', N'订单设置', N'', N'', N'', 100, 0, N'', N'Show', 0, 1)
INSERT [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys], [is_block]) VALUES (38, 36, 0, N'System', N'order_payment', N'支付方式设置', N'', N'', N'order/payment_list.aspx', 100, 0, N'', N'Show,View,Edit', 0, 1)
INSERT [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys], [is_block]) VALUES (41, 35, 0, N'System', N'order_confirm', N'待确认订单', N'', N'', N'order/order_confirm.aspx', 99, 0, N'', N'Show,View,Confirm', 0, 0)
INSERT [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys], [is_block]) VALUES (42, 35, 0, N'System', N'order_list', N'全部订单', N'', N'', N'order/order_list.aspx', 100, 0, N'', N'Show,View,Add,Edit,Delete,Confirm,Cancel,Invalid', 0, 0)
INSERT [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys], [is_block]) VALUES (43, 3, 0, N'System', N'user_manage', N'会员管理', N'', N'', N'', 99, 0, N'', N'Show', 0, 0)
INSERT [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys], [is_block]) VALUES (44, 43, 0, N'System', N'user_audit', N'审核会员', N'', N'', N'users/user_audit.aspx', 99, 0, N'', N'Show,View,Audit', 0, 0)
INSERT [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys], [is_block]) VALUES (45, 43, 0, N'System', N'user_list', N'所有会员', N'', N'', N'users/user_list.aspx', 100, 0, N'', N'Show,View,Add,Edit,Delete', 0, 0)
INSERT [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys], [is_block]) VALUES (46, 43, 0, N'System', N'user_group', N'会员组别', N'', N'', N'users/group_list.aspx', 101, 0, N'', N'Show,View,Add,Edit,Delete', 0, 0)
INSERT [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys], [is_block]) VALUES (47, 3, 0, N'System', N'user_log', N'会员日志', N'', N'', N'', 100, 0, N'', N'Show', 0, 0)
INSERT [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys], [is_block]) VALUES (50, 47, 0, N'System', N'user_recharge_log', N'充值记录', N'', N'', N'users/recharge_list.aspx', 101, 0, N'', N'Show,View,Add,Delete', 0, 0)
INSERT [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys], [is_block]) VALUES (51, 47, 0, N'System', N'user_amount_log', N'消费记录', N'', N'', N'users/amount_log.aspx', 102, 0, N'', N'Show,View,Delete', 0, 0)
INSERT [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys], [is_block]) VALUES (52, 47, 0, N'System', N'user_point_log', N'积分记录', N'', N'', N'users/point_log.aspx', 103, 0, N'', N'Show,View,Delete', 0, 1)
INSERT [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys], [is_block]) VALUES (53, 3, 0, N'System', N'user_settings', N'会员设置', N'', N'', N'', 101, 1, N'', N'Show', 0, 1)
INSERT [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys], [is_block]) VALUES (54, 53, 0, N'System', N'user_config', N'参数设置', N'', N'', N'users/user_config.aspx', 99, 0, N'', N'Show,View,Edit', 0, 1)
INSERT [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys], [is_block]) VALUES (56, 53, 0, N'System', N'user_mail_template', N'邮件模板', N'', N'', N'users/mail_template_list.aspx', 102, 0, N'', N'Show,View,Add,Edit,Delete', 0, 1)
INSERT [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys], [is_block]) VALUES (57, 53, 0, N'System', N'user_oauth', N'OAuth设置', N'', N'', N'users/oauth_app_list.aspx', 100, 0, N'', N'Show,View,Add,Edit,Delete', 0, 1)
INSERT [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys], [is_block]) VALUES (60, 25, 7, N'System', N'channel_CulturalExhibition', N'文化展览', N'', NULL, N'', 2, 0, N'', N'Show', 1, 0)
INSERT [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys], [is_block]) VALUES (61, 60, 7, N'System', N'channel_CulturalExhibition_list', N'内容管理', N'', NULL, N'article/article_list.aspx', 99, 0, N'', N'Show,View,Add,Edit,Delete,Audit', 1, 0)
INSERT [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys], [is_block]) VALUES (62, 60, 7, N'System', N'channel_CulturalExhibition_category', N'栏目类别', N'', NULL, N'article/category_list.aspx', 100, 0, N'', N'Show,View,Add,Edit,Delete', 1, 0)
INSERT [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys], [is_block]) VALUES (64, 25, 8, N'System', N'channel_Creativeprops', N'创意道具', N'', NULL, N'', 3, 0, N'', N'Show', 1, 0)
INSERT [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys], [is_block]) VALUES (65, 64, 8, N'System', N'channel_Creativeprops_list', N'内容管理', N'', NULL, N'article/article_list.aspx', 99, 0, N'', N'Show,View,Add,Edit,Delete,Audit', 1, 0)
INSERT [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys], [is_block]) VALUES (66, 64, 8, N'System', N'channel_Creativeprops_category', N'栏目类别', N'', NULL, N'article/category_list.aspx', 100, 0, N'', N'Show,View,Add,Edit,Delete', 1, 0)
INSERT [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys], [is_block]) VALUES (68, 25, 9, N'System', N'channel_Theatricalperformances', N'文艺演出', N'', NULL, N'', 4, 0, N'', N'Show', 1, 0)
INSERT [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys], [is_block]) VALUES (69, 68, 9, N'System', N'channel_Theatricalperformances_list', N'内容管理', N'', NULL, N'article/article_list.aspx', 99, 0, N'', N'Show,View,Add,Edit,Delete,Audit', 1, 0)
INSERT [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys], [is_block]) VALUES (70, 68, 9, N'System', N'channel_Theatricalperformances_category', N'栏目类别', N'', NULL, N'article/category_list.aspx', 100, 0, N'', N'Show,View,Add,Edit,Delete', 1, 0)
INSERT [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys], [is_block]) VALUES (72, 25, 10, N'System', N'channel_Starexpert', N'明星专家', N'', NULL, N'', 5, 0, N'', N'Show', 1, 0)
INSERT [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys], [is_block]) VALUES (73, 72, 10, N'System', N'channel_Starexpert_list', N'内容管理', N'', NULL, N'article/article_list.aspx', 99, 0, N'', N'Show,View,Add,Edit,Delete,Audit', 1, 0)
INSERT [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys], [is_block]) VALUES (74, 72, 10, N'System', N'channel_Starexpert_category', N'栏目类别', N'', NULL, N'article/category_list.aspx', 100, 0, N'', N'Show,View,Add,Edit,Delete', 1, 0)
INSERT [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys], [is_block]) VALUES (76, 25, 11, N'System', N'channel_Themeactivities', N'主题活动', N'', NULL, N'', 6, 0, N'', N'Show', 1, 0)
INSERT [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys], [is_block]) VALUES (77, 76, 11, N'System', N'channel_Themeactivities_list', N'内容管理', N'', NULL, N'article/article_list.aspx', 99, 0, N'', N'Show,View,Add,Edit,Delete,Audit', 1, 0)
INSERT [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys], [is_block]) VALUES (78, 76, 11, N'System', N'channel_Themeactivities_category', N'栏目类别', N'', NULL, N'article/category_list.aspx', 100, 0, N'', N'Show,View,Add,Edit,Delete', 1, 0)
INSERT [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys], [is_block]) VALUES (81, 26, 0, N'System', N'plugin_link', N'链接管理', N'', N'', N'/plugins/link/admin/index.aspx', 0, 0, N'', N'Show,View,Add,Edit,Delete', 1, 0)
INSERT [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys], [is_block]) VALUES (116, 25, 18, N'System', N'channel_Proprietaryresources', N'自营资源', N'', N'', N'', 0, 0, N'', N'Show,View,Add,Edit,Delete', 1, 0)
INSERT [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys], [is_block]) VALUES (117, 116, 18, N'System', N'channel_Proprietaryresources_list', N'内容管理', N'', N'', N'article/article_list.aspx', 99, 0, N'', N'Show,View,Add,Edit,Delete', 1, 0)
INSERT [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys], [is_block]) VALUES (118, 116, 18, N'System', N'channel_Proprietaryresources_category', N'栏目类别', N'', N'', N'article/category_list.aspx', 100, 0, N'', N'Show,View,Add,Edit,Delete', 1, 0)
INSERT [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys], [is_block]) VALUES (123, 25, 20, N'System', N'channel_ad', N'广告管理', N'', NULL, N'', 7, 0, N'', N'Show', 1, 0)
INSERT [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys], [is_block]) VALUES (124, 123, 20, N'System', N'channel_ad_list', N'内容管理', N'', N'', N'ad/Index.aspx', 99, 0, N'', N'Show,View,Add,Edit,Delete,Audit', 1, 0)
INSERT [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys], [is_block]) VALUES (125, 123, 20, N'System', N'channel_ad_category', N'栏目类别', N'', N'', N'article/category_list.aspx', 100, 1, N'', N'Show,View,Add,Edit,Delete', 1, 0)
SET IDENTITY_INSERT [dbo].[dt_navigation] OFF
SET IDENTITY_INSERT [dbo].[dt_payment] ON 

INSERT [dbo].[dt_payment] ([id], [title], [img_url], [remark], [type], [poundage_type], [poundage_amount], [sort_id], [is_mobile], [is_lock], [api_path]) VALUES (1, N'货到付款', N'', N'收到商品后进行支付，支持现金和刷卡服务。', 2, 2, CAST(0.00 AS Decimal(9, 2)), 99, 0, 0, N'')
INSERT [dbo].[dt_payment] ([id], [title], [img_url], [remark], [type], [poundage_type], [poundage_amount], [sort_id], [is_mobile], [is_lock], [api_path]) VALUES (2, N'账户余额', N'', N'账户余额是客户在您网站上的账户虚拟资金', 1, 2, CAST(0.00 AS Decimal(9, 2)), 100, 0, 0, N'balance')
INSERT [dbo].[dt_payment] ([id], [title], [img_url], [remark], [type], [poundage_type], [poundage_amount], [sort_id], [is_mobile], [is_lock], [api_path]) VALUES (3, N'支付宝', N'', N'付款后立即到账，无预付/年费，单笔费率阶梯最低0.7%，无流量限制。<a href="https://www.alipay.com/himalayas/practicality_customer.htm?customer_external_id=C433530444855584111X&market_type=from_agent_contract&pro_codes=61F99645EC0DC4380ADE569DD132AD7A" target="_blank">立即申请</a>', 1, 2, CAST(0.00 AS Decimal(9, 2)), 101, 1, 0, N'alipaypc')
INSERT [dbo].[dt_payment] ([id], [title], [img_url], [remark], [type], [poundage_type], [poundage_amount], [sort_id], [is_mobile], [is_lock], [api_path]) VALUES (4, N'财付通', N'', N'费率最低至<span style="color:#FF0000;font-weight: bold;">0.61%</span>，并赠送价值千元企业QQ。<a href="http://union.tenpay.com/mch/mch_register.shtml?sp_suggestuser=1202822001" target="_blank">中小商家签约入口</a>', 1, 2, CAST(0.00 AS Decimal(9, 2)), 102, 1, 0, N'tenpaypc')
INSERT [dbo].[dt_payment] ([id], [title], [img_url], [remark], [type], [poundage_type], [poundage_amount], [sort_id], [is_mobile], [is_lock], [api_path]) VALUES (5, N'网银在线', N'', N'国内领先的电子支付解决方案提供商，专注于为各行业提供安全、便捷的综合电子支付服务。', 1, 2, CAST(0.00 AS Decimal(9, 2)), 103, 1, 0, N'chinabankpc')
SET IDENTITY_INSERT [dbo].[dt_payment] OFF
SET IDENTITY_INSERT [dbo].[dt_sms_template] ON 

INSERT [dbo].[dt_sms_template] ([id], [title], [call_index], [content], [is_sys]) VALUES (1, N'会员验证码短信', N'usercode', N'您的验证码为：{code}，{valid}分钟内有效。', 1)
INSERT [dbo].[dt_sms_template] ([id], [title], [call_index], [content], [is_sys]) VALUES (2, N'欢迎新用户短信', N'welcomemsg', N'欢迎成为{webname}会员，你的用户名为：{username}，注意保管好您的账户信息。', 1)
INSERT [dbo].[dt_sms_template] ([id], [title], [call_index], [content], [is_sys]) VALUES (3, N'订单确认通知', N'order_confirm', N'尊敬的{username}，您在{webname}的订单已确认，订单号为：{orderno}，共计{amount}元，我们会尽快安排发货。', 1)
INSERT [dbo].[dt_sms_template] ([id], [title], [call_index], [content], [is_sys]) VALUES (4, N'订单发货通知', N'order_express', N'尊敬的{username}，您在{webname}的订单已发货，订单号为：{orderno}，请注意查收。', 1)
INSERT [dbo].[dt_sms_template] ([id], [title], [call_index], [content], [is_sys]) VALUES (5, N'订单完成通知', N'order_complete', N'尊敬的{username}，您在{webname}的一笔订单交易完成，订单号为：{orderno}，期待下次光临，祝您购物愉快。', 1)
SET IDENTITY_INSERT [dbo].[dt_sms_template] OFF
SET IDENTITY_INSERT [dbo].[dt_user_groups] ON 

INSERT [dbo].[dt_user_groups] ([id], [title], [grade], [upgrade_exp], [amount], [point], [discount], [is_default], [is_upgrade], [is_lock]) VALUES (1, N'注册会员', 1, 0, CAST(0.00 AS Decimal(9, 2)), 0, 100, 1, 0, 0)
INSERT [dbo].[dt_user_groups] ([id], [title], [grade], [upgrade_exp], [amount], [point], [discount], [is_default], [is_upgrade], [is_lock]) VALUES (2, N'年费会员', 2, 1000, CAST(0.00 AS Decimal(9, 2)), 0, 99, 0, 0, 0)
SET IDENTITY_INSERT [dbo].[dt_user_groups] OFF
SET IDENTITY_INSERT [dbo].[dt_user_oauth_app] ON 

INSERT [dbo].[dt_user_oauth_app] ([id], [title], [img_url], [app_id], [app_key], [remark], [sort_id], [is_mobile], [is_lock], [api_path]) VALUES (1, N'用QQ帐号登录', N'/images/oauth/qq.png', N'API Key', N'Secret Key', N'QQ互联开放平台', 99, 0, 0, N'qq')
INSERT [dbo].[dt_user_oauth_app] ([id], [title], [img_url], [app_id], [app_key], [remark], [sort_id], [is_mobile], [is_lock], [api_path]) VALUES (2, N'用新浪微博登录', N'/images/oauth/weibo.png', N'API Key', N'Secret Key', N'新浪微博开放平台', 100, 0, 0, N'sina')
INSERT [dbo].[dt_user_oauth_app] ([id], [title], [img_url], [app_id], [app_key], [remark], [sort_id], [is_mobile], [is_lock], [api_path]) VALUES (3, N'用淘宝账号登录', N'/images/oauth/taobao.png', N'API Key', N'Secret Key', N'淘宝开放平台', 101, 0, 0, N'taobao')
INSERT [dbo].[dt_user_oauth_app] ([id], [title], [img_url], [app_id], [app_key], [remark], [sort_id], [is_mobile], [is_lock], [api_path]) VALUES (4, N'用开心网帐号登录', N'/images/oauth/kaixin.png', N'API Key', N'Secret Key', N'开心网开放平台', 102, 0, 0, N'kaixin')
INSERT [dbo].[dt_user_oauth_app] ([id], [title], [img_url], [app_id], [app_key], [remark], [sort_id], [is_mobile], [is_lock], [api_path]) VALUES (5, N'用人人网帐号登录', N'/images/oauth/renren.png', N'API Key', N'Secret Key', N'人人网开放平台', 103, 0, 0, N'renren')
INSERT [dbo].[dt_user_oauth_app] ([id], [title], [img_url], [app_id], [app_key], [remark], [sort_id], [is_mobile], [is_lock], [api_path]) VALUES (6, N'用飞信账号登录', N'/images/oauth/feixin.png', N'API Key', N'Secret Key', N'中国移动飞信开放平台', 104, 0, 0, N'feixin')
SET IDENTITY_INSERT [dbo].[dt_user_oauth_app] OFF
SET IDENTITY_INSERT [dbo].[dt_users] ON 

INSERT [dbo].[dt_users] ([id], [group_id], [user_name], [salt], [password], [mobile], [email], [avatar], [nick_name], [sex], [birthday], [telphone], [area], [address], [qq], [msn], [amount], [point], [exp], [status], [reg_time], [reg_ip]) VALUES (1, 1, N'test', N'4B2H04', N'ED60EDEC7283B95C', N'13800138000', N'test@dtcms.net', N'', N'测试', N'保密', NULL, N'', N'', N'', N'', N'', CAST(500.00 AS Decimal(9, 2)), 10, 20, 0, CAST(0x0000A46B01451CE8 AS DateTime), N'127.0.0.1')
SET IDENTITY_INSERT [dbo].[dt_users] OFF
ALTER TABLE [dbo].[dt_article] ADD  CONSTRAINT [DF__dt_articl__chann__44801EAD]  DEFAULT ((0)) FOR [channel_id]
GO
ALTER TABLE [dbo].[dt_article] ADD  CONSTRAINT [DF__dt_articl__categ__457442E6]  DEFAULT ((0)) FOR [category_id]
GO
ALTER TABLE [dbo].[dt_article] ADD  CONSTRAINT [DF__dt_articl__call___4668671F]  DEFAULT ('') FOR [call_index]
GO
ALTER TABLE [dbo].[dt_article] ADD  CONSTRAINT [DF__dt_articl__link___475C8B58]  DEFAULT ('') FOR [link_url]
GO
ALTER TABLE [dbo].[dt_article] ADD  CONSTRAINT [DF__dt_articl__img_u__4850AF91]  DEFAULT ('') FOR [img_url]
GO
ALTER TABLE [dbo].[dt_article] ADD  CONSTRAINT [DF__dt_articl__seo_t__4944D3CA]  DEFAULT ('') FOR [seo_title]
GO
ALTER TABLE [dbo].[dt_article] ADD  CONSTRAINT [DF__dt_articl__seo_k__4A38F803]  DEFAULT ('') FOR [seo_keywords]
GO
ALTER TABLE [dbo].[dt_article] ADD  CONSTRAINT [DF__dt_articl__seo_d__4B2D1C3C]  DEFAULT ('') FOR [seo_description]
GO
ALTER TABLE [dbo].[dt_article] ADD  CONSTRAINT [DF__dt_articl__zhaiy__4C214075]  DEFAULT ('') FOR [zhaiyao]
GO
ALTER TABLE [dbo].[dt_article] ADD  CONSTRAINT [DF__dt_articl__sort___4D1564AE]  DEFAULT ((99)) FOR [sort_id]
GO
ALTER TABLE [dbo].[dt_article] ADD  CONSTRAINT [DF__dt_articl__click__4E0988E7]  DEFAULT ((0)) FOR [click]
GO
ALTER TABLE [dbo].[dt_article] ADD  CONSTRAINT [DF__dt_articl__statu__4EFDAD20]  DEFAULT ((0)) FOR [status]
GO
ALTER TABLE [dbo].[dt_article] ADD  CONSTRAINT [DF__dt_articl__is_ms__4FF1D159]  DEFAULT ((0)) FOR [is_msg]
GO
ALTER TABLE [dbo].[dt_article] ADD  CONSTRAINT [DF__dt_articl__is_to__50E5F592]  DEFAULT ((0)) FOR [is_top]
GO
ALTER TABLE [dbo].[dt_article] ADD  CONSTRAINT [DF__dt_articl__is_re__51DA19CB]  DEFAULT ((0)) FOR [is_red]
GO
ALTER TABLE [dbo].[dt_article] ADD  CONSTRAINT [DF__dt_articl__is_ho__52CE3E04]  DEFAULT ((0)) FOR [is_hot]
GO
ALTER TABLE [dbo].[dt_article] ADD  CONSTRAINT [DF__dt_articl__is_sl__53C2623D]  DEFAULT ((0)) FOR [is_slide]
GO
ALTER TABLE [dbo].[dt_article] ADD  CONSTRAINT [DF__dt_articl__is_sy__54B68676]  DEFAULT ((0)) FOR [is_sys]
GO
ALTER TABLE [dbo].[dt_article] ADD  CONSTRAINT [DF__dt_articl__add_t__55AAAAAF]  DEFAULT (getdate()) FOR [add_time]
GO
ALTER TABLE [dbo].[dt_article_albums] ADD  CONSTRAINT [DF__dt_articl__artic__5887175A]  DEFAULT ((0)) FOR [article_id]
GO
ALTER TABLE [dbo].[dt_article_albums] ADD  CONSTRAINT [DF__dt_articl__thumb__597B3B93]  DEFAULT ('') FOR [thumb_path]
GO
ALTER TABLE [dbo].[dt_article_albums] ADD  CONSTRAINT [DF__dt_articl__origi__5A6F5FCC]  DEFAULT ('') FOR [original_path]
GO
ALTER TABLE [dbo].[dt_article_albums] ADD  CONSTRAINT [DF__dt_articl__remar__5B638405]  DEFAULT ('') FOR [remark]
GO
ALTER TABLE [dbo].[dt_article_albums] ADD  CONSTRAINT [DF__dt_articl__add_t__5C57A83E]  DEFAULT (getdate()) FOR [add_time]
GO
ALTER TABLE [dbo].[dt_article_attach] ADD  CONSTRAINT [DF__dt_articl__artic__5F3414E9]  DEFAULT ((0)) FOR [article_id]
GO
ALTER TABLE [dbo].[dt_article_attach] ADD  CONSTRAINT [DF__dt_articl__file___60283922]  DEFAULT ('') FOR [file_name]
GO
ALTER TABLE [dbo].[dt_article_attach] ADD  CONSTRAINT [DF__dt_articl__file___611C5D5B]  DEFAULT ('') FOR [file_path]
GO
ALTER TABLE [dbo].[dt_article_attach] ADD  CONSTRAINT [DF__dt_articl__file___62108194]  DEFAULT ((0)) FOR [file_size]
GO
ALTER TABLE [dbo].[dt_article_attach] ADD  CONSTRAINT [DF__dt_articl__file___6304A5CD]  DEFAULT ('') FOR [file_ext]
GO
ALTER TABLE [dbo].[dt_article_attach] ADD  CONSTRAINT [DF__dt_articl__down___63F8CA06]  DEFAULT ((0)) FOR [down_num]
GO
ALTER TABLE [dbo].[dt_article_attach] ADD  CONSTRAINT [DF__dt_articl__point__64ECEE3F]  DEFAULT ((0)) FOR [point]
GO
ALTER TABLE [dbo].[dt_article_attach] ADD  CONSTRAINT [DF__dt_articl__add_t__65E11278]  DEFAULT (getdate()) FOR [add_time]
GO
ALTER TABLE [dbo].[dt_article_attribute_field] ADD  CONSTRAINT [DF__dt_articl__title__68BD7F23]  DEFAULT ('') FOR [title]
GO
ALTER TABLE [dbo].[dt_article_attribute_field] ADD  CONSTRAINT [DF__dt_articl__data___69B1A35C]  DEFAULT ((0)) FOR [data_length]
GO
ALTER TABLE [dbo].[dt_article_attribute_field] ADD  CONSTRAINT [DF__dt_articl__data___6AA5C795]  DEFAULT ((0)) FOR [data_place]
GO
ALTER TABLE [dbo].[dt_article_attribute_field] ADD  CONSTRAINT [DF__dt_articl__item___6B99EBCE]  DEFAULT ('') FOR [item_option]
GO
ALTER TABLE [dbo].[dt_article_attribute_field] ADD  CONSTRAINT [DF__dt_articl__defau__6C8E1007]  DEFAULT ('') FOR [default_value]
GO
ALTER TABLE [dbo].[dt_article_attribute_field] ADD  CONSTRAINT [DF__dt_articl__is_re__6D823440]  DEFAULT ((0)) FOR [is_required]
GO
ALTER TABLE [dbo].[dt_article_attribute_field] ADD  CONSTRAINT [DF__dt_articl__is_pa__6E765879]  DEFAULT ((0)) FOR [is_password]
GO
ALTER TABLE [dbo].[dt_article_attribute_field] ADD  CONSTRAINT [DF__dt_articl__is_ht__6F6A7CB2]  DEFAULT ((0)) FOR [is_html]
GO
ALTER TABLE [dbo].[dt_article_attribute_field] ADD  CONSTRAINT [DF__dt_articl__edito__705EA0EB]  DEFAULT ((0)) FOR [editor_type]
GO
ALTER TABLE [dbo].[dt_article_attribute_field] ADD  CONSTRAINT [DF__dt_articl__valid__7152C524]  DEFAULT ('') FOR [valid_tip_msg]
GO
ALTER TABLE [dbo].[dt_article_attribute_field] ADD  CONSTRAINT [DF__dt_articl__valid__7246E95D]  DEFAULT ('') FOR [valid_error_msg]
GO
ALTER TABLE [dbo].[dt_article_attribute_field] ADD  CONSTRAINT [DF__dt_articl__valid__733B0D96]  DEFAULT ('') FOR [valid_pattern]
GO
ALTER TABLE [dbo].[dt_article_attribute_field] ADD  CONSTRAINT [DF__dt_articl__sort___742F31CF]  DEFAULT ((99)) FOR [sort_id]
GO
ALTER TABLE [dbo].[dt_article_attribute_field] ADD  CONSTRAINT [DF__dt_articl__is_sy__75235608]  DEFAULT ((0)) FOR [is_sys]
GO
ALTER TABLE [dbo].[dt_article_attribute_value] ADD  CONSTRAINT [DF_dt_article_attribute_value_stock_quantity]  DEFAULT ((0)) FOR [stock_quantity]
GO
ALTER TABLE [dbo].[dt_article_attribute_value] ADD  CONSTRAINT [DF_dt_article_attribute_value_market_price]  DEFAULT ((0)) FOR [market_price]
GO
ALTER TABLE [dbo].[dt_article_attribute_value] ADD  CONSTRAINT [DF_dt_article_attribute_value_sell_price]  DEFAULT ((0)) FOR [sell_price]
GO
ALTER TABLE [dbo].[dt_article_attribute_value] ADD  CONSTRAINT [DF_dt_article_attribute_value_point]  DEFAULT ((0)) FOR [point]
GO
ALTER TABLE [dbo].[dt_article_category] ADD  CONSTRAINT [DF__dt_articl__call___7FA0E47B]  DEFAULT ('') FOR [call_index]
GO
ALTER TABLE [dbo].[dt_article_category] ADD  CONSTRAINT [DF__dt_articl__paren__009508B4]  DEFAULT ((0)) FOR [parent_id]
GO
ALTER TABLE [dbo].[dt_article_category] ADD  CONSTRAINT [DF_dt_article_category_class_layer]  DEFAULT ((0)) FOR [class_layer]
GO
ALTER TABLE [dbo].[dt_article_category] ADD  CONSTRAINT [DF__dt_articl__sort___01892CED]  DEFAULT ((99)) FOR [sort_id]
GO
ALTER TABLE [dbo].[dt_article_category] ADD  CONSTRAINT [DF__dt_articl__link___027D5126]  DEFAULT ('') FOR [link_url]
GO
ALTER TABLE [dbo].[dt_article_category] ADD  CONSTRAINT [DF__dt_articl__img_u__0371755F]  DEFAULT ('') FOR [img_url]
GO
ALTER TABLE [dbo].[dt_article_category] ADD  CONSTRAINT [DF__dt_articl__seo_t__04659998]  DEFAULT ('') FOR [seo_title]
GO
ALTER TABLE [dbo].[dt_article_category] ADD  CONSTRAINT [DF__dt_articl__seo_k__0559BDD1]  DEFAULT ('') FOR [seo_keywords]
GO
ALTER TABLE [dbo].[dt_article_category] ADD  CONSTRAINT [DF__dt_articl__seo_d__064DE20A]  DEFAULT ('') FOR [seo_description]
GO
ALTER TABLE [dbo].[dt_article_comment] ADD  CONSTRAINT [DF__dt_articl__chann__092A4EB5]  DEFAULT ((0)) FOR [channel_id]
GO
ALTER TABLE [dbo].[dt_article_comment] ADD  CONSTRAINT [DF__dt_articl__artic__0A1E72EE]  DEFAULT ((0)) FOR [article_id]
GO
ALTER TABLE [dbo].[dt_article_comment] ADD  CONSTRAINT [DF__dt_articl__paren__0B129727]  DEFAULT ((0)) FOR [parent_id]
GO
ALTER TABLE [dbo].[dt_article_comment] ADD  CONSTRAINT [DF__dt_articl__user___0C06BB60]  DEFAULT ((0)) FOR [user_id]
GO
ALTER TABLE [dbo].[dt_article_comment] ADD  CONSTRAINT [DF__dt_articl__user___0CFADF99]  DEFAULT ('') FOR [user_name]
GO
ALTER TABLE [dbo].[dt_article_comment] ADD  CONSTRAINT [DF__dt_articl__is_lo__0DEF03D2]  DEFAULT ((0)) FOR [is_lock]
GO
ALTER TABLE [dbo].[dt_article_comment] ADD  CONSTRAINT [DF__dt_articl__add_t__0EE3280B]  DEFAULT (getdate()) FOR [add_time]
GO
ALTER TABLE [dbo].[dt_article_comment] ADD  CONSTRAINT [DF__dt_articl__is_re__0FD74C44]  DEFAULT ((0)) FOR [is_reply]
GO
ALTER TABLE [dbo].[dt_article_goods] ADD  CONSTRAINT [DF__dt_articl__stock__12B3B8EF]  DEFAULT ((0)) FOR [stock_quantity]
GO
ALTER TABLE [dbo].[dt_article_spec] ADD  CONSTRAINT [DF__dt_articl__paren__168449D3]  DEFAULT ((0)) FOR [parent_id]
GO
ALTER TABLE [dbo].[dt_article_spec] ADD  CONSTRAINT [DF__dt_articl__sort___17786E0C]  DEFAULT ((99)) FOR [sort_id]
GO
ALTER TABLE [dbo].[dt_article_tags] ADD  CONSTRAINT [DF__dt_articl__is_re__1A54DAB7]  DEFAULT ((0)) FOR [is_red]
GO
ALTER TABLE [dbo].[dt_article_tags] ADD  CONSTRAINT [DF__dt_articl__sort___1B48FEF0]  DEFAULT ((99)) FOR [sort_id]
GO
ALTER TABLE [dbo].[dt_article_tags] ADD  CONSTRAINT [DF__dt_articl__add_t__1C3D2329]  DEFAULT (getdate()) FOR [add_time]
GO
ALTER TABLE [dbo].[dt_channel] ADD  CONSTRAINT [DF__dt_channel__name__2101D846]  DEFAULT ('') FOR [name]
GO
ALTER TABLE [dbo].[dt_channel] ADD  CONSTRAINT [DF__dt_channe__title__21F5FC7F]  DEFAULT ('') FOR [title]
GO
ALTER TABLE [dbo].[dt_channel] ADD  CONSTRAINT [DF__dt_channe__is_al__22EA20B8]  DEFAULT ((0)) FOR [is_albums]
GO
ALTER TABLE [dbo].[dt_channel] ADD  CONSTRAINT [DF__dt_channe__is_at__23DE44F1]  DEFAULT ((0)) FOR [is_attach]
GO
ALTER TABLE [dbo].[dt_channel] ADD  CONSTRAINT [DF__dt_channe__is_sp__24D2692A]  DEFAULT ((0)) FOR [is_spec]
GO
ALTER TABLE [dbo].[dt_channel] ADD  CONSTRAINT [DF__dt_channe__sort___25C68D63]  DEFAULT ((99)) FOR [sort_id]
GO
ALTER TABLE [dbo].[dt_channel_site] ADD  CONSTRAINT [DF__dt_channe__build__2B7F66B9]  DEFAULT ('') FOR [build_path]
GO
ALTER TABLE [dbo].[dt_channel_site] ADD  CONSTRAINT [DF__dt_channe__templ__2C738AF2]  DEFAULT ('') FOR [templet_path]
GO
ALTER TABLE [dbo].[dt_channel_site] ADD  CONSTRAINT [DF__dt_channe__domai__2D67AF2B]  DEFAULT ('') FOR [domain]
GO
ALTER TABLE [dbo].[dt_channel_site] ADD  CONSTRAINT [DF__dt_channe__is_mo__2E5BD364]  DEFAULT ((0)) FOR [is_mobile]
GO
ALTER TABLE [dbo].[dt_channel_site] ADD  CONSTRAINT [DF__dt_channe__is_de__2F4FF79D]  DEFAULT ((0)) FOR [is_default]
GO
ALTER TABLE [dbo].[dt_channel_site] ADD  CONSTRAINT [DF__dt_channe__sort___30441BD6]  DEFAULT ((99)) FOR [sort_id]
GO
ALTER TABLE [dbo].[dt_express] ADD  CONSTRAINT [DF__dt_expres__expre__33208881]  DEFAULT ('') FOR [express_code]
GO
ALTER TABLE [dbo].[dt_express] ADD  CONSTRAINT [DF__dt_expres__expre__3414ACBA]  DEFAULT ((0)) FOR [express_fee]
GO
ALTER TABLE [dbo].[dt_express] ADD  CONSTRAINT [DF__dt_expres__websi__3508D0F3]  DEFAULT ('') FOR [website]
GO
ALTER TABLE [dbo].[dt_express] ADD  CONSTRAINT [DF__dt_expres__remar__35FCF52C]  DEFAULT ('') FOR [remark]
GO
ALTER TABLE [dbo].[dt_express] ADD  CONSTRAINT [DF__dt_expres__sort___36F11965]  DEFAULT ((99)) FOR [sort_id]
GO
ALTER TABLE [dbo].[dt_express] ADD  CONSTRAINT [DF__dt_expres__is_lo__37E53D9E]  DEFAULT ((0)) FOR [is_lock]
GO
ALTER TABLE [dbo].[dt_link] ADD  CONSTRAINT [DF__dt_link__is_imag__5E94F66B]  DEFAULT ((0)) FOR [is_image]
GO
ALTER TABLE [dbo].[dt_link] ADD  CONSTRAINT [DF__dt_link__sort_id__5F891AA4]  DEFAULT ((99)) FOR [sort_id]
GO
ALTER TABLE [dbo].[dt_link] ADD  CONSTRAINT [DF__dt_link__is_red__607D3EDD]  DEFAULT ((0)) FOR [is_red]
GO
ALTER TABLE [dbo].[dt_link] ADD  CONSTRAINT [DF__dt_link__add_tim__61716316]  DEFAULT (getdate()) FOR [add_time]
GO
ALTER TABLE [dbo].[dt_mail_template] ADD  CONSTRAINT [DF__dt_mail_t__is_sy__3AC1AA49]  DEFAULT ((0)) FOR [is_sys]
GO
ALTER TABLE [dbo].[dt_manager] ADD  CONSTRAINT [DF__dt_manage__role___3D9E16F4]  DEFAULT ((2)) FOR [role_type]
GO
ALTER TABLE [dbo].[dt_manager] ADD  CONSTRAINT [DF__dt_manage__real___3E923B2D]  DEFAULT ('') FOR [real_name]
GO
ALTER TABLE [dbo].[dt_manager] ADD  CONSTRAINT [DF__dt_manage__telep__3F865F66]  DEFAULT ('') FOR [telephone]
GO
ALTER TABLE [dbo].[dt_manager] ADD  CONSTRAINT [DF__dt_manage__email__407A839F]  DEFAULT ('') FOR [email]
GO
ALTER TABLE [dbo].[dt_manager] ADD  CONSTRAINT [DF__dt_manage__is_lo__416EA7D8]  DEFAULT ((0)) FOR [is_lock]
GO
ALTER TABLE [dbo].[dt_manager] ADD  CONSTRAINT [DF__dt_manage__add_t__4262CC11]  DEFAULT (getdate()) FOR [add_time]
GO
ALTER TABLE [dbo].[dt_manager_log] ADD  CONSTRAINT [DF__dt_manage__add_t__453F38BC]  DEFAULT (getdate()) FOR [add_time]
GO
ALTER TABLE [dbo].[dt_manager_role] ADD  CONSTRAINT [DF__dt_manage__is_sy__481BA567]  DEFAULT ((0)) FOR [is_sys]
GO
ALTER TABLE [dbo].[dt_navigation] ADD  CONSTRAINT [DF__dt_naviga__paren__4CE05A84]  DEFAULT ((0)) FOR [parent_id]
GO
ALTER TABLE [dbo].[dt_navigation] ADD  CONSTRAINT [DF__dt_naviga__chann__4DD47EBD]  DEFAULT ((0)) FOR [channel_id]
GO
ALTER TABLE [dbo].[dt_navigation] ADD  CONSTRAINT [DF__dt_naviga__nav_t__4EC8A2F6]  DEFAULT ('') FOR [nav_type]
GO
ALTER TABLE [dbo].[dt_navigation] ADD  CONSTRAINT [DF__dt_navigat__name__4FBCC72F]  DEFAULT ('') FOR [name]
GO
ALTER TABLE [dbo].[dt_navigation] ADD  CONSTRAINT [DF__dt_naviga__title__50B0EB68]  DEFAULT ('') FOR [title]
GO
ALTER TABLE [dbo].[dt_navigation] ADD  CONSTRAINT [DF__dt_naviga__sub_t__51A50FA1]  DEFAULT ('') FOR [sub_title]
GO
ALTER TABLE [dbo].[dt_navigation] ADD  CONSTRAINT [DF__dt_naviga__link___529933DA]  DEFAULT ('') FOR [link_url]
GO
ALTER TABLE [dbo].[dt_navigation] ADD  CONSTRAINT [DF__dt_naviga__sort___538D5813]  DEFAULT ((99)) FOR [sort_id]
GO
ALTER TABLE [dbo].[dt_navigation] ADD  CONSTRAINT [DF__dt_naviga__is_lo__54817C4C]  DEFAULT ((0)) FOR [is_lock]
GO
ALTER TABLE [dbo].[dt_navigation] ADD  CONSTRAINT [DF__dt_naviga__remar__5575A085]  DEFAULT ('') FOR [remark]
GO
ALTER TABLE [dbo].[dt_navigation] ADD  CONSTRAINT [DF__dt_naviga__actio__5669C4BE]  DEFAULT ('') FOR [action_type]
GO
ALTER TABLE [dbo].[dt_navigation] ADD  CONSTRAINT [DF__dt_naviga__is_sy__575DE8F7]  DEFAULT ((0)) FOR [is_sys]
GO
ALTER TABLE [dbo].[dt_order_goods] ADD  CONSTRAINT [DF__dt_order___goods__5A3A55A2]  DEFAULT ((0)) FOR [goods_price]
GO
ALTER TABLE [dbo].[dt_order_goods] ADD  CONSTRAINT [DF__dt_order___real___5B2E79DB]  DEFAULT ((0)) FOR [real_price]
GO
ALTER TABLE [dbo].[dt_order_goods] ADD  CONSTRAINT [DF__dt_order___quant__5C229E14]  DEFAULT ((0)) FOR [quantity]
GO
ALTER TABLE [dbo].[dt_order_goods] ADD  CONSTRAINT [DF__dt_order___point__5D16C24D]  DEFAULT ((0)) FOR [point]
GO
ALTER TABLE [dbo].[dt_orders] ADD  CONSTRAINT [DF__dt_orders__order__5FF32EF8]  DEFAULT ('') FOR [order_no]
GO
ALTER TABLE [dbo].[dt_orders] ADD  CONSTRAINT [DF__dt_orders__trade__60E75331]  DEFAULT ('') FOR [trade_no]
GO
ALTER TABLE [dbo].[dt_orders] ADD  CONSTRAINT [DF__dt_orders__user___61DB776A]  DEFAULT ((0)) FOR [user_id]
GO
ALTER TABLE [dbo].[dt_orders] ADD  CONSTRAINT [DF__dt_orders__user___62CF9BA3]  DEFAULT ('') FOR [user_name]
GO
ALTER TABLE [dbo].[dt_orders] ADD  CONSTRAINT [DF__dt_orders__payme__63C3BFDC]  DEFAULT ((0)) FOR [payment_id]
GO
ALTER TABLE [dbo].[dt_orders] ADD  CONSTRAINT [DF__dt_orders__payme__64B7E415]  DEFAULT ((0)) FOR [payment_fee]
GO
ALTER TABLE [dbo].[dt_orders] ADD  CONSTRAINT [DF__dt_orders__payme__65AC084E]  DEFAULT ((0)) FOR [payment_status]
GO
ALTER TABLE [dbo].[dt_orders] ADD  CONSTRAINT [DF__dt_orders__expre__66A02C87]  DEFAULT ((0)) FOR [express_id]
GO
ALTER TABLE [dbo].[dt_orders] ADD  CONSTRAINT [DF__dt_orders__expre__679450C0]  DEFAULT ('') FOR [express_no]
GO
ALTER TABLE [dbo].[dt_orders] ADD  CONSTRAINT [DF__dt_orders__expre__688874F9]  DEFAULT ((0)) FOR [express_fee]
GO
ALTER TABLE [dbo].[dt_orders] ADD  CONSTRAINT [DF__dt_orders__expre__697C9932]  DEFAULT ((0)) FOR [express_status]
GO
ALTER TABLE [dbo].[dt_orders] ADD  CONSTRAINT [DF__dt_orders__accep__6A70BD6B]  DEFAULT ('') FOR [accept_name]
GO
ALTER TABLE [dbo].[dt_orders] ADD  CONSTRAINT [DF__dt_orders__post___6B64E1A4]  DEFAULT ('') FOR [post_code]
GO
ALTER TABLE [dbo].[dt_orders] ADD  CONSTRAINT [DF__dt_orders__telph__6C5905DD]  DEFAULT ('') FOR [telphone]
GO
ALTER TABLE [dbo].[dt_orders] ADD  CONSTRAINT [DF__dt_orders__mobil__6D4D2A16]  DEFAULT ('') FOR [mobile]
GO
ALTER TABLE [dbo].[dt_orders] ADD  CONSTRAINT [DF_dt_orders_email]  DEFAULT ('') FOR [email]
GO
ALTER TABLE [dbo].[dt_orders] ADD  CONSTRAINT [DF__dt_orders__area__6E414E4F]  DEFAULT ('') FOR [area]
GO
ALTER TABLE [dbo].[dt_orders] ADD  CONSTRAINT [DF__dt_orders__addre__6F357288]  DEFAULT ('') FOR [address]
GO
ALTER TABLE [dbo].[dt_orders] ADD  CONSTRAINT [DF__dt_orders__messa__702996C1]  DEFAULT ('') FOR [message]
GO
ALTER TABLE [dbo].[dt_orders] ADD  CONSTRAINT [DF__dt_orders__remar__711DBAFA]  DEFAULT ('') FOR [remark]
GO
ALTER TABLE [dbo].[dt_orders] ADD  CONSTRAINT [DF__dt_orders__is_in__7211DF33]  DEFAULT ((0)) FOR [is_invoice]
GO
ALTER TABLE [dbo].[dt_orders] ADD  CONSTRAINT [DF__dt_orders__invoi__7306036C]  DEFAULT ((0)) FOR [invoice_taxes]
GO
ALTER TABLE [dbo].[dt_orders] ADD  CONSTRAINT [DF__dt_orders__payab__73FA27A5]  DEFAULT ((0)) FOR [payable_amount]
GO
ALTER TABLE [dbo].[dt_orders] ADD  CONSTRAINT [DF__dt_orders__real___74EE4BDE]  DEFAULT ((0)) FOR [real_amount]
GO
ALTER TABLE [dbo].[dt_orders] ADD  CONSTRAINT [DF__dt_orders__order__75E27017]  DEFAULT ((0)) FOR [order_amount]
GO
ALTER TABLE [dbo].[dt_orders] ADD  CONSTRAINT [DF__dt_orders__point__76D69450]  DEFAULT ((0)) FOR [point]
GO
ALTER TABLE [dbo].[dt_orders] ADD  CONSTRAINT [DF__dt_orders__statu__77CAB889]  DEFAULT ((1)) FOR [status]
GO
ALTER TABLE [dbo].[dt_orders] ADD  CONSTRAINT [DF__dt_orders__add_t__78BEDCC2]  DEFAULT (getdate()) FOR [add_time]
GO
ALTER TABLE [dbo].[dt_payment] ADD  CONSTRAINT [DF__dt_paymen__img_u__7B9B496D]  DEFAULT ('') FOR [img_url]
GO
ALTER TABLE [dbo].[dt_payment] ADD  CONSTRAINT [DF__dt_payment__type__7C8F6DA6]  DEFAULT ((1)) FOR [type]
GO
ALTER TABLE [dbo].[dt_payment] ADD  CONSTRAINT [DF__dt_paymen__pound__7D8391DF]  DEFAULT ((1)) FOR [poundage_type]
GO
ALTER TABLE [dbo].[dt_payment] ADD  CONSTRAINT [DF__dt_paymen__pound__7E77B618]  DEFAULT ((0)) FOR [poundage_amount]
GO
ALTER TABLE [dbo].[dt_payment] ADD  CONSTRAINT [DF__dt_paymen__sort___7F6BDA51]  DEFAULT ((99)) FOR [sort_id]
GO
ALTER TABLE [dbo].[dt_payment] ADD  CONSTRAINT [DF__dt_paymen__is_mo__005FFE8A]  DEFAULT ((0)) FOR [is_mobile]
GO
ALTER TABLE [dbo].[dt_payment] ADD  CONSTRAINT [DF__dt_paymen__is_lo__015422C3]  DEFAULT ((0)) FOR [is_lock]
GO
ALTER TABLE [dbo].[dt_sms_template] ADD  CONSTRAINT [DF__dt_sms_te__title__04308F6E]  DEFAULT ('') FOR [title]
GO
ALTER TABLE [dbo].[dt_sms_template] ADD  CONSTRAINT [DF__dt_sms_te__call___0524B3A7]  DEFAULT ('') FOR [call_index]
GO
ALTER TABLE [dbo].[dt_sms_template] ADD  CONSTRAINT [DF__dt_sms_te__conte__0618D7E0]  DEFAULT ('') FOR [content]
GO
ALTER TABLE [dbo].[dt_sms_template] ADD  CONSTRAINT [DF__dt_sms_te__is_sy__070CFC19]  DEFAULT ((0)) FOR [is_sys]
GO
ALTER TABLE [dbo].[dt_user_addr_book] ADD  CONSTRAINT [DF__dt_user_a__mobil__09E968C4]  DEFAULT ('') FOR [mobile]
GO
ALTER TABLE [dbo].[dt_user_addr_book] ADD  CONSTRAINT [DF__dt_user_a__telph__0ADD8CFD]  DEFAULT ('') FOR [telphone]
GO
ALTER TABLE [dbo].[dt_user_addr_book] ADD  CONSTRAINT [DF__dt_user_a__email__0BD1B136]  DEFAULT ('') FOR [email]
GO
ALTER TABLE [dbo].[dt_user_addr_book] ADD  CONSTRAINT [DF__dt_user_a__post___0CC5D56F]  DEFAULT ('') FOR [post_code]
GO
ALTER TABLE [dbo].[dt_user_addr_book] ADD  CONSTRAINT [DF__dt_user_a__is_de__0DB9F9A8]  DEFAULT ((0)) FOR [is_default]
GO
ALTER TABLE [dbo].[dt_user_addr_book] ADD  CONSTRAINT [DF__dt_user_a__add_t__0EAE1DE1]  DEFAULT (getdate()) FOR [add_time]
GO
ALTER TABLE [dbo].[dt_user_amount_log] ADD  CONSTRAINT [DF__dt_user_a__payme__118A8A8C]  DEFAULT ((0)) FOR [payment_id]
GO
ALTER TABLE [dbo].[dt_user_amount_log] ADD  CONSTRAINT [DF__dt_user_a__value__127EAEC5]  DEFAULT ((0)) FOR [value]
GO
ALTER TABLE [dbo].[dt_user_amount_log] ADD  CONSTRAINT [DF__dt_user_a__remar__1372D2FE]  DEFAULT ('') FOR [remark]
GO
ALTER TABLE [dbo].[dt_user_amount_log] ADD  CONSTRAINT [DF__dt_user_a__add_t__1466F737]  DEFAULT (getdate()) FOR [add_time]
GO
ALTER TABLE [dbo].[dt_user_attach_log] ADD  CONSTRAINT [DF__dt_user_a__add_t__164F3FA9]  DEFAULT (getdate()) FOR [add_time]
GO
ALTER TABLE [dbo].[dt_user_code] ADD  CONSTRAINT [DF__dt_user_c__count__192BAC54]  DEFAULT ((0)) FOR [count]
GO
ALTER TABLE [dbo].[dt_user_code] ADD  CONSTRAINT [DF__dt_user_c__statu__1A1FD08D]  DEFAULT ((0)) FOR [status]
GO
ALTER TABLE [dbo].[dt_user_code] ADD  CONSTRAINT [DF__dt_user_c__add_t__1B13F4C6]  DEFAULT (getdate()) FOR [add_time]
GO
ALTER TABLE [dbo].[dt_user_group_price] ADD  CONSTRAINT [DF__dt_user_g__artic__1DF06171]  DEFAULT ((0)) FOR [article_id]
GO
ALTER TABLE [dbo].[dt_user_group_price] ADD  CONSTRAINT [DF__dt_user_g__goods__1EE485AA]  DEFAULT ((0)) FOR [goods_id]
GO
ALTER TABLE [dbo].[dt_user_group_price] ADD  CONSTRAINT [DF__dt_user_g__group__1FD8A9E3]  DEFAULT ((0)) FOR [group_id]
GO
ALTER TABLE [dbo].[dt_user_group_price] ADD  CONSTRAINT [DF__dt_user_g__price__20CCCE1C]  DEFAULT ((0)) FOR [price]
GO
ALTER TABLE [dbo].[dt_user_groups] ADD  CONSTRAINT [DF__dt_user_g__title__23A93AC7]  DEFAULT ('') FOR [title]
GO
ALTER TABLE [dbo].[dt_user_groups] ADD  CONSTRAINT [DF__dt_user_g__grade__249D5F00]  DEFAULT ((0)) FOR [grade]
GO
ALTER TABLE [dbo].[dt_user_groups] ADD  CONSTRAINT [DF__dt_user_g__upgra__25918339]  DEFAULT ((0)) FOR [upgrade_exp]
GO
ALTER TABLE [dbo].[dt_user_groups] ADD  CONSTRAINT [DF__dt_user_g__amoun__2685A772]  DEFAULT ((0)) FOR [amount]
GO
ALTER TABLE [dbo].[dt_user_groups] ADD  CONSTRAINT [DF__dt_user_g__point__2779CBAB]  DEFAULT ((0)) FOR [point]
GO
ALTER TABLE [dbo].[dt_user_groups] ADD  CONSTRAINT [DF__dt_user_g__is_de__286DEFE4]  DEFAULT ((0)) FOR [is_default]
GO
ALTER TABLE [dbo].[dt_user_groups] ADD  CONSTRAINT [DF__dt_user_g__is_up__2962141D]  DEFAULT ((1)) FOR [is_upgrade]
GO
ALTER TABLE [dbo].[dt_user_groups] ADD  CONSTRAINT [DF__dt_user_g__is_lo__2A563856]  DEFAULT ((0)) FOR [is_lock]
GO
ALTER TABLE [dbo].[dt_user_login_log] ADD  CONSTRAINT [DF__dt_user_l__user___2D32A501]  DEFAULT ('') FOR [user_name]
GO
ALTER TABLE [dbo].[dt_user_login_log] ADD  CONSTRAINT [DF__dt_user_l__remar__2E26C93A]  DEFAULT ('') FOR [remark]
GO
ALTER TABLE [dbo].[dt_user_login_log] ADD  CONSTRAINT [DF__dt_user_l__login__2F1AED73]  DEFAULT (getdate()) FOR [login_time]
GO
ALTER TABLE [dbo].[dt_user_login_log] ADD  CONSTRAINT [DF__dt_user_l__login__300F11AC]  DEFAULT ('') FOR [login_ip]
GO
ALTER TABLE [dbo].[dt_user_message] ADD  CONSTRAINT [DF__dt_user_me__type__32EB7E57]  DEFAULT ((1)) FOR [type]
GO
ALTER TABLE [dbo].[dt_user_message] ADD  CONSTRAINT [DF__dt_user_m__is_re__33DFA290]  DEFAULT ((0)) FOR [is_read]
GO
ALTER TABLE [dbo].[dt_user_message] ADD  CONSTRAINT [DF__dt_user_m__post___34D3C6C9]  DEFAULT (getdate()) FOR [post_time]
GO
ALTER TABLE [dbo].[dt_user_oauth] ADD  CONSTRAINT [DF__dt_user_o__oauth__37B03374]  DEFAULT ('0') FOR [oauth_name]
GO
ALTER TABLE [dbo].[dt_user_oauth] ADD  CONSTRAINT [DF__dt_user_o__add_t__38A457AD]  DEFAULT (getdate()) FOR [add_time]
GO
ALTER TABLE [dbo].[dt_user_oauth_app] ADD  CONSTRAINT [DF__dt_user_o__title__3B80C458]  DEFAULT ('') FOR [title]
GO
ALTER TABLE [dbo].[dt_user_oauth_app] ADD  CONSTRAINT [DF__dt_user_o__img_u__3C74E891]  DEFAULT ('') FOR [img_url]
GO
ALTER TABLE [dbo].[dt_user_oauth_app] ADD  CONSTRAINT [DF__dt_user_o__remar__3D690CCA]  DEFAULT ('') FOR [remark]
GO
ALTER TABLE [dbo].[dt_user_oauth_app] ADD  CONSTRAINT [DF__dt_user_o__sort___3E5D3103]  DEFAULT ((99)) FOR [sort_id]
GO
ALTER TABLE [dbo].[dt_user_oauth_app] ADD  CONSTRAINT [DF__dt_user_o__is_mo__3F51553C]  DEFAULT ((0)) FOR [is_mobile]
GO
ALTER TABLE [dbo].[dt_user_oauth_app] ADD  CONSTRAINT [DF__dt_user_o__is_lo__40457975]  DEFAULT ((0)) FOR [is_lock]
GO
ALTER TABLE [dbo].[dt_user_oauth_app] ADD  CONSTRAINT [DF__dt_user_o__api_p__41399DAE]  DEFAULT ('') FOR [api_path]
GO
ALTER TABLE [dbo].[dt_user_point_log] ADD  CONSTRAINT [DF__dt_user_p__add_t__44160A59]  DEFAULT (getdate()) FOR [add_time]
GO
ALTER TABLE [dbo].[dt_user_recharge] ADD  CONSTRAINT [DF__dt_user_r__amoun__4BB72C21]  DEFAULT ((0)) FOR [amount]
GO
ALTER TABLE [dbo].[dt_user_recharge] ADD  CONSTRAINT [DF__dt_user_r__statu__4CAB505A]  DEFAULT ((0)) FOR [status]
GO
ALTER TABLE [dbo].[dt_user_recharge] ADD  CONSTRAINT [DF__dt_user_r__add_t__4D9F7493]  DEFAULT (getdate()) FOR [add_time]
GO
ALTER TABLE [dbo].[dt_users] ADD  CONSTRAINT [DF__dt_users__mobile__6E0C4425]  DEFAULT ('') FOR [mobile]
GO
ALTER TABLE [dbo].[dt_users] ADD  CONSTRAINT [DF__dt_users__email__6F00685E]  DEFAULT ('') FOR [email]
GO
ALTER TABLE [dbo].[dt_users] ADD  CONSTRAINT [DF__dt_users__avatar__6FF48C97]  DEFAULT ('') FOR [avatar]
GO
ALTER TABLE [dbo].[dt_users] ADD  CONSTRAINT [DF__dt_users__nick_n__70E8B0D0]  DEFAULT ('') FOR [nick_name]
GO
ALTER TABLE [dbo].[dt_users] ADD  CONSTRAINT [DF__dt_users__sex__71DCD509]  DEFAULT ('') FOR [sex]
GO
ALTER TABLE [dbo].[dt_users] ADD  CONSTRAINT [DF__dt_users__telpho__72D0F942]  DEFAULT ('') FOR [telphone]
GO
ALTER TABLE [dbo].[dt_users] ADD  CONSTRAINT [DF__dt_users__area__73C51D7B]  DEFAULT ('') FOR [area]
GO
ALTER TABLE [dbo].[dt_users] ADD  CONSTRAINT [DF__dt_users__addres__74B941B4]  DEFAULT ('') FOR [address]
GO
ALTER TABLE [dbo].[dt_users] ADD  CONSTRAINT [DF__dt_users__qq__75AD65ED]  DEFAULT ('') FOR [qq]
GO
ALTER TABLE [dbo].[dt_users] ADD  CONSTRAINT [DF__dt_users__msn__76A18A26]  DEFAULT ('') FOR [msn]
GO
ALTER TABLE [dbo].[dt_users] ADD  CONSTRAINT [DF__dt_users__amount__7795AE5F]  DEFAULT ((0)) FOR [amount]
GO
ALTER TABLE [dbo].[dt_users] ADD  CONSTRAINT [DF__dt_users__point__7889D298]  DEFAULT ((0)) FOR [point]
GO
ALTER TABLE [dbo].[dt_users] ADD  CONSTRAINT [DF__dt_users__exp__797DF6D1]  DEFAULT ((0)) FOR [exp]
GO
ALTER TABLE [dbo].[dt_users] ADD  CONSTRAINT [DF__dt_users__status__7A721B0A]  DEFAULT ((0)) FOR [status]
GO
ALTER TABLE [dbo].[dt_users] ADD  CONSTRAINT [DF__dt_users__reg_ti__7B663F43]  DEFAULT (getdate()) FOR [reg_time]
GO
ALTER TABLE [dbo].[dt_weixin_access_token] ADD  CONSTRAINT [DF__dt_weixin__expir__233F2673]  DEFAULT ((0)) FOR [expires_in]
GO
ALTER TABLE [dbo].[dt_weixin_access_token] ADD  CONSTRAINT [DF__dt_weixin__count__24334AAC]  DEFAULT ((0)) FOR [count]
GO
ALTER TABLE [dbo].[dt_weixin_access_token] ADD  CONSTRAINT [DF__dt_weixin__add_t__25276EE5]  DEFAULT (getdate()) FOR [add_time]
GO
ALTER TABLE [dbo].[dt_weixin_account] ADD  CONSTRAINT [DF__dt_weixin__is_pu__19B5BC39]  DEFAULT ((0)) FOR [is_push]
GO
ALTER TABLE [dbo].[dt_weixin_account] ADD  CONSTRAINT [DF__dt_weixin__sort___1AA9E072]  DEFAULT ((99)) FOR [sort_id]
GO
ALTER TABLE [dbo].[dt_weixin_account] ADD  CONSTRAINT [DF__dt_weixin__add_t__1B9E04AB]  DEFAULT (getdate()) FOR [add_time]
GO
ALTER TABLE [dbo].[dt_weixin_request_content] ADD  CONSTRAINT [DF__dt_weixin__add_t__2803DB90]  DEFAULT (getdate()) FOR [add_time]
GO
ALTER TABLE [dbo].[dt_weixin_request_rule] ADD  CONSTRAINT [DF__dt_weixin__is_li__1E7A7156]  DEFAULT ((0)) FOR [is_like_query]
GO
ALTER TABLE [dbo].[dt_weixin_request_rule] ADD  CONSTRAINT [DF__dt_weixin__is_de__1F6E958F]  DEFAULT ((0)) FOR [is_default]
GO
ALTER TABLE [dbo].[dt_weixin_request_rule] ADD  CONSTRAINT [DF__dt_weixin__add_t__2062B9C8]  DEFAULT (getdate()) FOR [add_time]
GO
ALTER TABLE [dbo].[dt_weixin_response_content] ADD  CONSTRAINT [DF__dt_weixin__add_t__2AE0483B]  DEFAULT (getdate()) FOR [add_time]
GO
ALTER TABLE [dbo].[dt_article_attribute_value]  WITH CHECK ADD  CONSTRAINT [FK_DT_ARTIC_REFERENCE_DT_ARTIC] FOREIGN KEY([article_id])
REFERENCES [dbo].[dt_article] ([id])
GO
ALTER TABLE [dbo].[dt_article_attribute_value] CHECK CONSTRAINT [FK_DT_ARTIC_REFERENCE_DT_ARTIC]
GO
ALTER TABLE [dbo].[dt_channel]  WITH CHECK ADD  CONSTRAINT [FK_DT_CHANN_REFERENCE_DT_CHANN] FOREIGN KEY([site_id])
REFERENCES [dbo].[dt_channel_site] ([id])
GO
ALTER TABLE [dbo].[dt_channel] CHECK CONSTRAINT [FK_DT_CHANN_REFERENCE_DT_CHANN]
GO
ALTER TABLE [dbo].[dt_channel_field]  WITH CHECK ADD  CONSTRAINT [FK_DT_CHANN_REFERENCE_DT_ARTIC] FOREIGN KEY([field_id])
REFERENCES [dbo].[dt_article_attribute_field] ([id])
GO
ALTER TABLE [dbo].[dt_channel_field] CHECK CONSTRAINT [FK_DT_CHANN_REFERENCE_DT_ARTIC]
GO
ALTER TABLE [dbo].[dt_channel_field]  WITH CHECK ADD  CONSTRAINT [FK_DT_CHANN_REFERENCE_DT_CHANN_FIELD] FOREIGN KEY([channel_id])
REFERENCES [dbo].[dt_channel] ([id])
GO
ALTER TABLE [dbo].[dt_channel_field] CHECK CONSTRAINT [FK_DT_CHANN_REFERENCE_DT_CHANN_FIELD]
GO
ALTER TABLE [dbo].[dt_manager]  WITH CHECK ADD  CONSTRAINT [FK_DT_MANAG_REFERENCE_DT_MANAG] FOREIGN KEY([role_id])
REFERENCES [dbo].[dt_manager_role] ([id])
GO
ALTER TABLE [dbo].[dt_manager] CHECK CONSTRAINT [FK_DT_MANAG_REFERENCE_DT_MANAG]
GO
ALTER TABLE [dbo].[dt_manager_role_value]  WITH CHECK ADD  CONSTRAINT [FK_DT_MANAG_REFERENCE_DT_MANAG_ROLE_VALUE] FOREIGN KEY([role_id])
REFERENCES [dbo].[dt_manager_role] ([id])
GO
ALTER TABLE [dbo].[dt_manager_role_value] CHECK CONSTRAINT [FK_DT_MANAG_REFERENCE_DT_MANAG_ROLE_VALUE]
GO
ALTER TABLE [dbo].[dt_order_goods]  WITH CHECK ADD  CONSTRAINT [FK_DT_ORDER_REFERENCE_DT_ORDER] FOREIGN KEY([order_id])
REFERENCES [dbo].[dt_orders] ([id])
GO
ALTER TABLE [dbo].[dt_order_goods] CHECK CONSTRAINT [FK_DT_ORDER_REFERENCE_DT_ORDER]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'频道ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article', @level2type=N'COLUMN',@level2name=N'channel_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类别ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article', @level2type=N'COLUMN',@level2name=N'category_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'调用别名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article', @level2type=N'COLUMN',@level2name=N'call_index'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article', @level2type=N'COLUMN',@level2name=N'title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'外部链接' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article', @level2type=N'COLUMN',@level2name=N'link_url'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'图片地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article', @level2type=N'COLUMN',@level2name=N'img_url'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'SEO标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article', @level2type=N'COLUMN',@level2name=N'seo_title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'SEO关健字' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article', @level2type=N'COLUMN',@level2name=N'seo_keywords'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'SEO描述' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article', @level2type=N'COLUMN',@level2name=N'seo_description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TAG标签逗号分隔' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article', @level2type=N'COLUMN',@level2name=N'tags'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'内容摘要' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article', @level2type=N'COLUMN',@level2name=N'zhaiyao'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'详细内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article', @level2type=N'COLUMN',@level2name=N'content'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article', @level2type=N'COLUMN',@level2name=N'sort_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'浏览次数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article', @level2type=N'COLUMN',@level2name=N'click'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态0正常1未审核2锁定' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article', @level2type=N'COLUMN',@level2name=N'status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否允许评论' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article', @level2type=N'COLUMN',@level2name=N'is_msg'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否置顶' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article', @level2type=N'COLUMN',@level2name=N'is_top'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否推荐' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article', @level2type=N'COLUMN',@level2name=N'is_red'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否热门' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article', @level2type=N'COLUMN',@level2name=N'is_hot'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否幻灯片' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article', @level2type=N'COLUMN',@level2name=N'is_slide'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否管理员发布0不是1是' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article', @level2type=N'COLUMN',@level2name=N'is_sys'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article', @level2type=N'COLUMN',@level2name=N'user_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article', @level2type=N'COLUMN',@level2name=N'add_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article', @level2type=N'COLUMN',@level2name=N'update_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_albums', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文章ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_albums', @level2type=N'COLUMN',@level2name=N'article_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'缩略图地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_albums', @level2type=N'COLUMN',@level2name=N'thumb_path'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'原图地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_albums', @level2type=N'COLUMN',@level2name=N'original_path'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'图片描述' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_albums', @level2type=N'COLUMN',@level2name=N'remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'上传时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_albums', @level2type=N'COLUMN',@level2name=N'add_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'图片相册' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_albums'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_attach', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文章ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_attach', @level2type=N'COLUMN',@level2name=N'article_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文件名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_attach', @level2type=N'COLUMN',@level2name=N'file_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文件路径' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_attach', @level2type=N'COLUMN',@level2name=N'file_path'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文件大小(字节)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_attach', @level2type=N'COLUMN',@level2name=N'file_size'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文件扩展名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_attach', @level2type=N'COLUMN',@level2name=N'file_ext'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'下载次数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_attach', @level2type=N'COLUMN',@level2name=N'down_num'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'积分(正赠送负消费)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_attach', @level2type=N'COLUMN',@level2name=N'point'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'上传时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_attach', @level2type=N'COLUMN',@level2name=N'add_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'附件表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_attach'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_attribute_field', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'列名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_attribute_field', @level2type=N'COLUMN',@level2name=N'name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_attribute_field', @level2type=N'COLUMN',@level2name=N'title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'控件类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_attribute_field', @level2type=N'COLUMN',@level2name=N'control_type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'字段类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_attribute_field', @level2type=N'COLUMN',@level2name=N'data_type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'字段长度' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_attribute_field', @level2type=N'COLUMN',@level2name=N'data_length'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'小数点位数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_attribute_field', @level2type=N'COLUMN',@level2name=N'data_place'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'选项列表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_attribute_field', @level2type=N'COLUMN',@level2name=N'item_option'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'默认值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_attribute_field', @level2type=N'COLUMN',@level2name=N'default_value'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否必填0非必填1必填' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_attribute_field', @level2type=N'COLUMN',@level2name=N'is_required'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否密码框' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_attribute_field', @level2type=N'COLUMN',@level2name=N'is_password'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否允许HTML' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_attribute_field', @level2type=N'COLUMN',@level2name=N'is_html'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编辑器类型0标准型1简洁型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_attribute_field', @level2type=N'COLUMN',@level2name=N'editor_type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'验证提示信息' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_attribute_field', @level2type=N'COLUMN',@level2name=N'valid_tip_msg'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'验证失败提示信息' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_attribute_field', @level2type=N'COLUMN',@level2name=N'valid_error_msg'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'验证正则表达式' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_attribute_field', @level2type=N'COLUMN',@level2name=N'valid_pattern'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序数字' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_attribute_field', @level2type=N'COLUMN',@level2name=N'sort_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'系统默认' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_attribute_field', @level2type=N'COLUMN',@level2name=N'is_sys'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'扩展属性表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_attribute_field'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'父表ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_attribute_value', @level2type=N'COLUMN',@level2name=N'article_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'扩展属性表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_attribute_value'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_category', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'频道ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_category', @level2type=N'COLUMN',@level2name=N'channel_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类别标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_category', @level2type=N'COLUMN',@level2name=N'title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'调用别名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_category', @level2type=N'COLUMN',@level2name=N'call_index'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'父类别ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_category', @level2type=N'COLUMN',@level2name=N'parent_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类别ID列表(逗号分隔开)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_category', @level2type=N'COLUMN',@level2name=N'class_list'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类别深度' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_category', @level2type=N'COLUMN',@level2name=N'class_layer'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序数字' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_category', @level2type=N'COLUMN',@level2name=N'sort_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'URL跳转地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_category', @level2type=N'COLUMN',@level2name=N'link_url'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'图片地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_category', @level2type=N'COLUMN',@level2name=N'img_url'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注说明' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_category', @level2type=N'COLUMN',@level2name=N'content'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'SEO标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_category', @level2type=N'COLUMN',@level2name=N'seo_title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'SEO关健字' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_category', @level2type=N'COLUMN',@level2name=N'seo_keywords'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'SEO描述' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_category', @level2type=N'COLUMN',@level2name=N'seo_description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_comment', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'频道ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_comment', @level2type=N'COLUMN',@level2name=N'channel_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主表ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_comment', @level2type=N'COLUMN',@level2name=N'article_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'父评论ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_comment', @level2type=N'COLUMN',@level2name=N'parent_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_comment', @level2type=N'COLUMN',@level2name=N'user_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_comment', @level2type=N'COLUMN',@level2name=N'user_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户IP' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_comment', @level2type=N'COLUMN',@level2name=N'user_ip'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'评论内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_comment', @level2type=N'COLUMN',@level2name=N'content'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否锁定' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_comment', @level2type=N'COLUMN',@level2name=N'is_lock'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发表时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_comment', @level2type=N'COLUMN',@level2name=N'add_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否已答复' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_comment', @level2type=N'COLUMN',@level2name=N'is_reply'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'答复内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_comment', @level2type=N'COLUMN',@level2name=N'reply_content'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'回复时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_comment', @level2type=N'COLUMN',@level2name=N'reply_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_goods', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文章ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_goods', @level2type=N'COLUMN',@level2name=N'article_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'货号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_goods', @level2type=N'COLUMN',@level2name=N'goods_no'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'规格ID以逗号分隔开' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_goods', @level2type=N'COLUMN',@level2name=N'spec_ids'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'规格描述' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_goods', @level2type=N'COLUMN',@level2name=N'spec_text'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'库存数量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_goods', @level2type=N'COLUMN',@level2name=N'stock_quantity'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'市场价格' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_goods', @level2type=N'COLUMN',@level2name=N'market_price'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'销售价格' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_goods', @level2type=N'COLUMN',@level2name=N'sell_price'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'商品扩展' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_goods'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文章ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_goods_spec', @level2type=N'COLUMN',@level2name=N'article_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'规格ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_goods_spec', @level2type=N'COLUMN',@level2name=N'spec_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'规格父ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_goods_spec', @level2type=N'COLUMN',@level2name=N'parent_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'规格标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_goods_spec', @level2type=N'COLUMN',@level2name=N'title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'规格图片' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_goods_spec', @level2type=N'COLUMN',@level2name=N'img_url'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'商品对应规格' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_goods_spec'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_spec', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'父节点ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_spec', @level2type=N'COLUMN',@level2name=N'parent_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'规格标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_spec', @level2type=N'COLUMN',@level2name=N'title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'规格图片' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_spec', @level2type=N'COLUMN',@level2name=N'img_url'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注说明' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_spec', @level2type=N'COLUMN',@level2name=N'remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序数字' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_spec', @level2type=N'COLUMN',@level2name=N'sort_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'商品规格' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_spec'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_tags', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_tags', @level2type=N'COLUMN',@level2name=N'title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否推荐' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_tags', @level2type=N'COLUMN',@level2name=N'is_red'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序数字' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_tags', @level2type=N'COLUMN',@level2name=N'sort_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_tags', @level2type=N'COLUMN',@level2name=N'add_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TAG标签' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_tags'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_tags_relation', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文章ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_tags_relation', @level2type=N'COLUMN',@level2name=N'article_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'标签ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_tags_relation', @level2type=N'COLUMN',@level2name=N'tag_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TAG标签关系' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_tags_relation'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_channel', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'站点ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_channel', @level2type=N'COLUMN',@level2name=N'site_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'频道名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_channel', @level2type=N'COLUMN',@level2name=N'name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'频道标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_channel', @level2type=N'COLUMN',@level2name=N'title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否开启相册功能' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_channel', @level2type=N'COLUMN',@level2name=N'is_albums'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否开启附件功能' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_channel', @level2type=N'COLUMN',@level2name=N'is_attach'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否开启规格' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_channel', @level2type=N'COLUMN',@level2name=N'is_spec'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序数字' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_channel', @level2type=N'COLUMN',@level2name=N'sort_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'系统频道表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_channel'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_channel_field', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'频道ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_channel_field', @level2type=N'COLUMN',@level2name=N'channel_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'字段ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_channel_field', @level2type=N'COLUMN',@level2name=N'field_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'频道属性表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_channel_field'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_channel_site', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'生成目录名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_channel_site', @level2type=N'COLUMN',@level2name=N'build_path'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'模板目录名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_channel_site', @level2type=N'COLUMN',@level2name=N'templet_path'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'绑定域名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_channel_site', @level2type=N'COLUMN',@level2name=N'domain'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'网站名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_channel_site', @level2type=N'COLUMN',@level2name=N'name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'网站LOGO' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_channel_site', @level2type=N'COLUMN',@level2name=N'logo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'公司名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_channel_site', @level2type=N'COLUMN',@level2name=N'company'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'通讯地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_channel_site', @level2type=N'COLUMN',@level2name=N'address'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'联系电话' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_channel_site', @level2type=N'COLUMN',@level2name=N'tel'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'传真号码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_channel_site', @level2type=N'COLUMN',@level2name=N'fax'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'电子邮箱' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_channel_site', @level2type=N'COLUMN',@level2name=N'email'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备案号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_channel_site', @level2type=N'COLUMN',@level2name=N'crod'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'版权信息' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_channel_site', @level2type=N'COLUMN',@level2name=N'copyright'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'SEO标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_channel_site', @level2type=N'COLUMN',@level2name=N'seo_title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'SEO关健字' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_channel_site', @level2type=N'COLUMN',@level2name=N'seo_keyword'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'SEO描述' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_channel_site', @level2type=N'COLUMN',@level2name=N'seo_description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否移动站' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_channel_site', @level2type=N'COLUMN',@level2name=N'is_mobile'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否默认' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_channel_site', @level2type=N'COLUMN',@level2name=N'is_default'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序数字' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_channel_site', @level2type=N'COLUMN',@level2name=N'sort_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'频道分类' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_channel_site'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_express', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'快递名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_express', @level2type=N'COLUMN',@level2name=N'title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'物流编码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_express', @level2type=N'COLUMN',@level2name=N'express_code'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'配送费用' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_express', @level2type=N'COLUMN',@level2name=N'express_fee'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'快递网址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_express', @level2type=N'COLUMN',@level2name=N'website'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注说明' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_express', @level2type=N'COLUMN',@level2name=N'remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_express', @level2type=N'COLUMN',@level2name=N'sort_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否不显示' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_express', @level2type=N'COLUMN',@level2name=N'is_lock'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'物流快递' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_express'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_mail_template', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'标题名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_mail_template', @level2type=N'COLUMN',@level2name=N'title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'调用别名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_mail_template', @level2type=N'COLUMN',@level2name=N'call_index'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'邮件标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_mail_template', @level2type=N'COLUMN',@level2name=N'maill_title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'邮件内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_mail_template', @level2type=N'COLUMN',@level2name=N'content'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'系统默认' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_mail_template', @level2type=N'COLUMN',@level2name=N'is_sys'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'邮件模板' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_mail_template'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_manager', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'角色ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_manager', @level2type=N'COLUMN',@level2name=N'role_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'管理员类型1超管2系管' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_manager', @level2type=N'COLUMN',@level2name=N'role_type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_manager', @level2type=N'COLUMN',@level2name=N'user_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'登录密码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_manager', @level2type=N'COLUMN',@level2name=N'password'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'6位随机字符串,加密用到' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_manager', @level2type=N'COLUMN',@level2name=N'salt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户昵称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_manager', @level2type=N'COLUMN',@level2name=N'real_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'联系电话' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_manager', @level2type=N'COLUMN',@level2name=N'telephone'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'电子邮箱' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_manager', @level2type=N'COLUMN',@level2name=N'email'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否锁定' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_manager', @level2type=N'COLUMN',@level2name=N'is_lock'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'添加时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_manager', @level2type=N'COLUMN',@level2name=N'add_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'管理员信息表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_manager'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_manager_log', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_manager_log', @level2type=N'COLUMN',@level2name=N'user_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_manager_log', @level2type=N'COLUMN',@level2name=N'user_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'操作类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_manager_log', @level2type=N'COLUMN',@level2name=N'action_type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_manager_log', @level2type=N'COLUMN',@level2name=N'remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户IP' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_manager_log', @level2type=N'COLUMN',@level2name=N'user_ip'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'操作时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_manager_log', @level2type=N'COLUMN',@level2name=N'add_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'管理日志表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_manager_log'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_manager_role', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'角色名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_manager_role', @level2type=N'COLUMN',@level2name=N'role_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'角色类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_manager_role', @level2type=N'COLUMN',@level2name=N'role_type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否系统默认0否1是' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_manager_role', @level2type=N'COLUMN',@level2name=N'is_sys'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'管理角色表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_manager_role'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_manager_role_value', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'角色ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_manager_role_value', @level2type=N'COLUMN',@level2name=N'role_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'导航名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_manager_role_value', @level2type=N'COLUMN',@level2name=N'nav_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'权限类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_manager_role_value', @level2type=N'COLUMN',@level2name=N'action_type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'管理角色权限表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_manager_role_value'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_navigation', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'所属父导航ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_navigation', @level2type=N'COLUMN',@level2name=N'parent_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'所属频道ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_navigation', @level2type=N'COLUMN',@level2name=N'channel_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'导航类别' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_navigation', @level2type=N'COLUMN',@level2name=N'nav_type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'导航ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_navigation', @level2type=N'COLUMN',@level2name=N'name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_navigation', @level2type=N'COLUMN',@level2name=N'title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'副标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_navigation', @level2type=N'COLUMN',@level2name=N'sub_title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'图标地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_navigation', @level2type=N'COLUMN',@level2name=N'icon_url'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'链接地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_navigation', @level2type=N'COLUMN',@level2name=N'link_url'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序数字' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_navigation', @level2type=N'COLUMN',@level2name=N'sort_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否隐藏0显示1隐藏' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_navigation', @level2type=N'COLUMN',@level2name=N'is_lock'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注说明' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_navigation', @level2type=N'COLUMN',@level2name=N'remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'权限资源' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_navigation', @level2type=N'COLUMN',@level2name=N'action_type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'系统默认' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_navigation', @level2type=N'COLUMN',@level2name=N'is_sys'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'系统导航菜单' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_navigation'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_order_goods', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文章ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_order_goods', @level2type=N'COLUMN',@level2name=N'article_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'订单ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_order_goods', @level2type=N'COLUMN',@level2name=N'order_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'商品ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_order_goods', @level2type=N'COLUMN',@level2name=N'goods_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'商品货号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_order_goods', @level2type=N'COLUMN',@level2name=N'goods_no'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'商品标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_order_goods', @level2type=N'COLUMN',@level2name=N'goods_title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'商品图片' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_order_goods', @level2type=N'COLUMN',@level2name=N'img_url'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'规格描述' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_order_goods', @level2type=N'COLUMN',@level2name=N'spec_text'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'商品价格' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_order_goods', @level2type=N'COLUMN',@level2name=N'goods_price'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'实际价格' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_order_goods', @level2type=N'COLUMN',@level2name=N'real_price'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'订购数量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_order_goods', @level2type=N'COLUMN',@level2name=N'quantity'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'积分,正数赠送|负数消费' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_order_goods', @level2type=N'COLUMN',@level2name=N'point'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'订单商品表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_order_goods'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_orders', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'订单号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_orders', @level2type=N'COLUMN',@level2name=N'order_no'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'交易号担保支付用到' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_orders', @level2type=N'COLUMN',@level2name=N'trade_no'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_orders', @level2type=N'COLUMN',@level2name=N'user_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_orders', @level2type=N'COLUMN',@level2name=N'user_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'支付方式' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_orders', @level2type=N'COLUMN',@level2name=N'payment_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'支付手续费' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_orders', @level2type=N'COLUMN',@level2name=N'payment_fee'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'支付状态1未支付2已支付' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_orders', @level2type=N'COLUMN',@level2name=N'payment_status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'支付时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_orders', @level2type=N'COLUMN',@level2name=N'payment_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'快递ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_orders', @level2type=N'COLUMN',@level2name=N'express_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'快递单号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_orders', @level2type=N'COLUMN',@level2name=N'express_no'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'物流费用' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_orders', @level2type=N'COLUMN',@level2name=N'express_fee'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发货状态1未发货2已发货' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_orders', @level2type=N'COLUMN',@level2name=N'express_status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发货时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_orders', @level2type=N'COLUMN',@level2name=N'express_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'收货人姓名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_orders', @level2type=N'COLUMN',@level2name=N'accept_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'邮政编码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_orders', @level2type=N'COLUMN',@level2name=N'post_code'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'联系电话' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_orders', @level2type=N'COLUMN',@level2name=N'telphone'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'手机' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_orders', @level2type=N'COLUMN',@level2name=N'mobile'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'所属省市区' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_orders', @level2type=N'COLUMN',@level2name=N'area'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'收货地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_orders', @level2type=N'COLUMN',@level2name=N'address'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'订单留言' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_orders', @level2type=N'COLUMN',@level2name=N'message'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'订单备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_orders', @level2type=N'COLUMN',@level2name=N'remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否索要发票' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_orders', @level2type=N'COLUMN',@level2name=N'is_invoice'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发票抬头' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_orders', @level2type=N'COLUMN',@level2name=N'invoice_title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'税金' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_orders', @level2type=N'COLUMN',@level2name=N'invoice_taxes'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'应付商品总金额' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_orders', @level2type=N'COLUMN',@level2name=N'payable_amount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'实付商品总金额' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_orders', @level2type=N'COLUMN',@level2name=N'real_amount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'订单总金额' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_orders', @level2type=N'COLUMN',@level2name=N'order_amount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'积分,正数赠送|负数消费' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_orders', @level2type=N'COLUMN',@level2name=N'point'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'订单状态1生成订单,2确认订单,3完成订单,4取消订单,5作废订单' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_orders', @level2type=N'COLUMN',@level2name=N'status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'下单时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_orders', @level2type=N'COLUMN',@level2name=N'add_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'确认时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_orders', @level2type=N'COLUMN',@level2name=N'confirm_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'订单完成时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_orders', @level2type=N'COLUMN',@level2name=N'complete_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'订单表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_orders'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_payment', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'支付名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_payment', @level2type=N'COLUMN',@level2name=N'title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'显示图片' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_payment', @level2type=N'COLUMN',@level2name=N'img_url'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注说明' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_payment', @level2type=N'COLUMN',@level2name=N'remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'支付类型1线上2线下' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_payment', @level2type=N'COLUMN',@level2name=N'type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'手续费类型1百分比2固定金额' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_payment', @level2type=N'COLUMN',@level2name=N'poundage_type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'手续费金额' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_payment', @level2type=N'COLUMN',@level2name=N'poundage_amount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_payment', @level2type=N'COLUMN',@level2name=N'sort_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'支持移动设备0通用1电脑2移动' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_payment', @level2type=N'COLUMN',@level2name=N'is_mobile'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否启用' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_payment', @level2type=N'COLUMN',@level2name=N'is_lock'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'API目录名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_payment', @level2type=N'COLUMN',@level2name=N'api_path'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'支付方式' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_payment'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_sms_template', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_sms_template', @level2type=N'COLUMN',@level2name=N'title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'调用别名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_sms_template', @level2type=N'COLUMN',@level2name=N'call_index'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'短信内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_sms_template', @level2type=N'COLUMN',@level2name=N'content'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'系统默认' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_sms_template', @level2type=N'COLUMN',@level2name=N'is_sys'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'手机短信模板' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_sms_template'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_addr_book', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_addr_book', @level2type=N'COLUMN',@level2name=N'user_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_addr_book', @level2type=N'COLUMN',@level2name=N'user_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'收件人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_addr_book', @level2type=N'COLUMN',@level2name=N'accept_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'省市区逗号分隔' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_addr_book', @level2type=N'COLUMN',@level2name=N'area'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'详细地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_addr_book', @level2type=N'COLUMN',@level2name=N'address'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'手机号码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_addr_book', @level2type=N'COLUMN',@level2name=N'mobile'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'电话号码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_addr_book', @level2type=N'COLUMN',@level2name=N'telphone'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'电子邮箱' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_addr_book', @level2type=N'COLUMN',@level2name=N'email'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'邮政编码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_addr_book', @level2type=N'COLUMN',@level2name=N'post_code'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否默认' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_addr_book', @level2type=N'COLUMN',@level2name=N'is_default'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'添加时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_addr_book', @level2type=N'COLUMN',@level2name=N'add_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'收货地址簿' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_addr_book'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_amount_log', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_amount_log', @level2type=N'COLUMN',@level2name=N'user_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_amount_log', @level2type=N'COLUMN',@level2name=N'user_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'支付方式' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_amount_log', @level2type=N'COLUMN',@level2name=N'payment_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'增减值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_amount_log', @level2type=N'COLUMN',@level2name=N'value'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注说明' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_amount_log', @level2type=N'COLUMN',@level2name=N'remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'生成时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_amount_log', @level2type=N'COLUMN',@level2name=N'add_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'会员金额日志表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_amount_log'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_attach_log', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_attach_log', @level2type=N'COLUMN',@level2name=N'user_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_attach_log', @level2type=N'COLUMN',@level2name=N'user_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'附件ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_attach_log', @level2type=N'COLUMN',@level2name=N'attach_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'附件名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_attach_log', @level2type=N'COLUMN',@level2name=N'file_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'下载时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_attach_log', @level2type=N'COLUMN',@level2name=N'add_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户下载记录' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_attach_log'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_code', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_code', @level2type=N'COLUMN',@level2name=N'user_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_code', @level2type=N'COLUMN',@level2name=N'user_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'生成码类别 password取回密码,register邀请注册' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_code', @level2type=N'COLUMN',@level2name=N'type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'生成的字符串' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_code', @level2type=N'COLUMN',@level2name=N'str_code'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'使用次数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_code', @level2type=N'COLUMN',@level2name=N'count'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态0未使用1已使用' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_code', @level2type=N'COLUMN',@level2name=N'status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户IP' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_code', @level2type=N'COLUMN',@level2name=N'user_ip'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'有效时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_code', @level2type=N'COLUMN',@level2name=N'eff_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'生成时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_code', @level2type=N'COLUMN',@level2name=N'add_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户随机码表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_code'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_group_price', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文章ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_group_price', @level2type=N'COLUMN',@level2name=N'article_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'商品ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_group_price', @level2type=N'COLUMN',@level2name=N'goods_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'会员组ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_group_price', @level2type=N'COLUMN',@level2name=N'group_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'价格' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_group_price', @level2type=N'COLUMN',@level2name=N'price'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'会员组价格' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_group_price'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_groups', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'组别名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_groups', @level2type=N'COLUMN',@level2name=N'title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'会员等级值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_groups', @level2type=N'COLUMN',@level2name=N'grade'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'升级经验值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_groups', @level2type=N'COLUMN',@level2name=N'upgrade_exp'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'默认预存款' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_groups', @level2type=N'COLUMN',@level2name=N'amount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'默认积分' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_groups', @level2type=N'COLUMN',@level2name=N'point'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'购物折扣' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_groups', @level2type=N'COLUMN',@level2name=N'discount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否注册用户组' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_groups', @level2type=N'COLUMN',@level2name=N'is_default'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否自动升级' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_groups', @level2type=N'COLUMN',@level2name=N'is_upgrade'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否禁用' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_groups', @level2type=N'COLUMN',@level2name=N'is_lock'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'会员组别' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_groups'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_login_log', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_login_log', @level2type=N'COLUMN',@level2name=N'user_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_login_log', @level2type=N'COLUMN',@level2name=N'user_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注说明' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_login_log', @level2type=N'COLUMN',@level2name=N'remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'登录时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_login_log', @level2type=N'COLUMN',@level2name=N'login_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'登录IP' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_login_log', @level2type=N'COLUMN',@level2name=N'login_ip'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'会员登录日志表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_login_log'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_message', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'短信息类型0系统消息1收件箱2发件箱' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_message', @level2type=N'COLUMN',@level2name=N'type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发件人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_message', @level2type=N'COLUMN',@level2name=N'post_user_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'收件人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_message', @level2type=N'COLUMN',@level2name=N'accept_user_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否查看0未阅1已阅' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_message', @level2type=N'COLUMN',@level2name=N'is_read'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'短信息标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_message', @level2type=N'COLUMN',@level2name=N'title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'短信息内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_message', @level2type=N'COLUMN',@level2name=N'content'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发送时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_message', @level2type=N'COLUMN',@level2name=N'post_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'阅读时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_message', @level2type=N'COLUMN',@level2name=N'read_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'会员短消息' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_message'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_oauth', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_oauth', @level2type=N'COLUMN',@level2name=N'user_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_oauth', @level2type=N'COLUMN',@level2name=N'user_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'开放平台名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_oauth', @level2type=N'COLUMN',@level2name=N'oauth_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'access_token' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_oauth', @level2type=N'COLUMN',@level2name=N'oauth_access_token'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'授权key' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_oauth', @level2type=N'COLUMN',@level2name=N'oauth_openid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'授权时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_oauth', @level2type=N'COLUMN',@level2name=N'add_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'OAuth授权用户信息' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_oauth'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_oauth_app', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_oauth_app', @level2type=N'COLUMN',@level2name=N'title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'显示图片' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_oauth_app', @level2type=N'COLUMN',@level2name=N'img_url'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'AppId' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_oauth_app', @level2type=N'COLUMN',@level2name=N'app_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'AppKey' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_oauth_app', @level2type=N'COLUMN',@level2name=N'app_key'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'描述' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_oauth_app', @level2type=N'COLUMN',@level2name=N'remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序数字' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_oauth_app', @level2type=N'COLUMN',@level2name=N'sort_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'支持移动设备0通用1电脑2移动' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_oauth_app', @level2type=N'COLUMN',@level2name=N'is_mobile'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否启用' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_oauth_app', @level2type=N'COLUMN',@level2name=N'is_lock'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'接口目录' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_oauth_app', @level2type=N'COLUMN',@level2name=N'api_path'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'OAuth应用' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_oauth_app'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_point_log', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_point_log', @level2type=N'COLUMN',@level2name=N'user_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_point_log', @level2type=N'COLUMN',@level2name=N'user_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'增减积分' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_point_log', @level2type=N'COLUMN',@level2name=N'value'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注说明' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_point_log', @level2type=N'COLUMN',@level2name=N'remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_point_log', @level2type=N'COLUMN',@level2name=N'add_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'会员积分日志表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_point_log'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_recharge', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_recharge', @level2type=N'COLUMN',@level2name=N'user_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_recharge', @level2type=N'COLUMN',@level2name=N'user_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'充值单号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_recharge', @level2type=N'COLUMN',@level2name=N'recharge_no'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'支付方式ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_recharge', @level2type=N'COLUMN',@level2name=N'payment_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'金额' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_recharge', @level2type=N'COLUMN',@level2name=N'amount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态0未完成1已完成' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_recharge', @level2type=N'COLUMN',@level2name=N'status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'生成时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_recharge', @level2type=N'COLUMN',@level2name=N'add_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'完成时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_recharge', @level2type=N'COLUMN',@level2name=N'complete_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户充值表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_recharge'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_users', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户组ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_users', @level2type=N'COLUMN',@level2name=N'group_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_users', @level2type=N'COLUMN',@level2name=N'user_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'6位随机字符串,加密用到' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_users', @level2type=N'COLUMN',@level2name=N'salt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户密码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_users', @level2type=N'COLUMN',@level2name=N'password'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'手机号码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_users', @level2type=N'COLUMN',@level2name=N'mobile'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'电子邮箱' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_users', @level2type=N'COLUMN',@level2name=N'email'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户头像' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_users', @level2type=N'COLUMN',@level2name=N'avatar'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户昵称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_users', @level2type=N'COLUMN',@level2name=N'nick_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'性别' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_users', @level2type=N'COLUMN',@level2name=N'sex'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'生日' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_users', @level2type=N'COLUMN',@level2name=N'birthday'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'电话' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_users', @level2type=N'COLUMN',@level2name=N'telphone'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'所属地区逗号分隔' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_users', @level2type=N'COLUMN',@level2name=N'area'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'详情地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_users', @level2type=N'COLUMN',@level2name=N'address'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'QQ号码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_users', @level2type=N'COLUMN',@level2name=N'qq'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'MSN号码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_users', @level2type=N'COLUMN',@level2name=N'msn'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'账户余额' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_users', @level2type=N'COLUMN',@level2name=N'amount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'账户积分' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_users', @level2type=N'COLUMN',@level2name=N'point'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'升级经验值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_users', @level2type=N'COLUMN',@level2name=N'exp'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'账户状态,0正常,1待验证,2待审核,3锁定' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_users', @level2type=N'COLUMN',@level2name=N'status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'注册时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_users', @level2type=N'COLUMN',@level2name=N'reg_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'注册IP' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_users', @level2type=N'COLUMN',@level2name=N'reg_ip'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'会员主表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_users'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_weixin_access_token', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'公众账户ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_weixin_access_token', @level2type=N'COLUMN',@level2name=N'account_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'access_token值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_weixin_access_token', @level2type=N'COLUMN',@level2name=N'access_token'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'有效期(秒)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_weixin_access_token', @level2type=N'COLUMN',@level2name=N'expires_in'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'总数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_weixin_access_token', @level2type=N'COLUMN',@level2name=N'count'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_weixin_access_token', @level2type=N'COLUMN',@level2name=N'add_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'公众平台access_token存储' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_weixin_access_token'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_weixin_account', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'公众号名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_weixin_account', @level2type=N'COLUMN',@level2name=N'name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'公众号原始ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_weixin_account', @level2type=N'COLUMN',@level2name=N'originalid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'微信号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_weixin_account', @level2type=N'COLUMN',@level2name=N'wxcode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'令牌必须与微信平台对应' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_weixin_account', @level2type=N'COLUMN',@level2name=N'token'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'appid(仅用于高级接口)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_weixin_account', @level2type=N'COLUMN',@level2name=N'appid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'appsecret(仅用于高级接口)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_weixin_account', @level2type=N'COLUMN',@level2name=N'appsecret'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否支持网站内容推送' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_weixin_account', @level2type=N'COLUMN',@level2name=N'is_push'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_weixin_account', @level2type=N'COLUMN',@level2name=N'sort_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'添加时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_weixin_account', @level2type=N'COLUMN',@level2name=N'add_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'微信公众平台账户' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_weixin_account'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_weixin_request_content', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'公众账户ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_weixin_request_content', @level2type=N'COLUMN',@level2name=N'account_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'规则ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_weixin_request_content', @level2type=N'COLUMN',@level2name=N'rule_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'回复标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_weixin_request_content', @level2type=N'COLUMN',@level2name=N'title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'回复内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_weixin_request_content', @level2type=N'COLUMN',@level2name=N'content'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'详情链接地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_weixin_request_content', @level2type=N'COLUMN',@level2name=N'link_url'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'图片地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_weixin_request_content', @level2type=N'COLUMN',@level2name=N'img_url'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'语音或视频地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_weixin_request_content', @level2type=N'COLUMN',@level2name=N'media_url'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'高清语音或者视频地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_weixin_request_content', @level2type=N'COLUMN',@level2name=N'meida_hd_url'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_weixin_request_content', @level2type=N'COLUMN',@level2name=N'sort_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_weixin_request_content', @level2type=N'COLUMN',@level2name=N'add_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'请求回复内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_weixin_request_content'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_weixin_request_rule', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'公众账户ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_weixin_request_rule', @level2type=N'COLUMN',@level2name=N'account_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'规则名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_weixin_request_rule', @level2type=N'COLUMN',@level2name=N'name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'请求关键词,逗号分隔' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_weixin_request_rule', @level2type=N'COLUMN',@level2name=N'keywords'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'请求类型(0默认回复1文字2图片3语音4链接5地理位置6关注7取消关注8扫描带参数二维码事件9上报地理位置事件10自定义菜单事件）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_weixin_request_rule', @level2type=N'COLUMN',@level2name=N'request_type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'回复类型(1文本2图文3语音4视频5第三方接口)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_weixin_request_rule', @level2type=N'COLUMN',@level2name=N'response_type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否模糊查询' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_weixin_request_rule', @level2type=N'COLUMN',@level2name=N'is_like_query'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否默认回复' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_weixin_request_rule', @level2type=N'COLUMN',@level2name=N'is_default'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_weixin_request_rule', @level2type=N'COLUMN',@level2name=N'sort_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_weixin_request_rule', @level2type=N'COLUMN',@level2name=N'add_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'请求回复规格' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_weixin_request_rule'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_weixin_response_content', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'公众账户ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_weixin_response_content', @level2type=N'COLUMN',@level2name=N'account_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户微信ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_weixin_response_content', @level2type=N'COLUMN',@level2name=N'openid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'数据类型 文本消息：text 图片消息:image 地理位置消息:location 链接消息:link 事件:event' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_weixin_response_content', @level2type=N'COLUMN',@level2name=N'request_type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'数据内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_weixin_response_content', @level2type=N'COLUMN',@level2name=N'request_content'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'回复的类型 文本消息：text 图片消息:image 地理位置消息:location 链接消息:link' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_weixin_response_content', @level2type=N'COLUMN',@level2name=N'response_type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'系统回复的内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_weixin_response_content', @level2type=N'COLUMN',@level2name=N'reponse_content'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'消息创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_weixin_response_content', @level2type=N'COLUMN',@level2name=N'create_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'xml原始内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_weixin_response_content', @level2type=N'COLUMN',@level2name=N'xml_content'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'录入系统的时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_weixin_response_content', @level2type=N'COLUMN',@level2name=N'add_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'公众平台回复信息' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_weixin_response_content'
GO
