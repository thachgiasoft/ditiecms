/****** 对象:  Table [dbo].[DT_RolesInModules]    脚本日期: 02/20/2010 14:49:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DT_RolesInModules]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DT_RolesInModules](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[RoleID] [int] NOT NULL,
	[ModuleID] [char](8) NOT NULL,
	[ControlValue] [int] NOT NULL,
 CONSTRAINT [PK_DT_RolesInModules] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'角色ID' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'DT_RolesInModules', @level2type=N'COLUMN', @level2name=N'RoleID'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'模块ID' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'DT_RolesInModules', @level2type=N'COLUMN', @level2name=N'ModuleID'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'操作值' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'DT_RolesInModules', @level2type=N'COLUMN', @level2name=N'ControlValue'

GO
/****** 对象:  Table [dbo].[DT_Roles]    脚本日期: 02/20/2010 14:49:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DT_Roles]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DT_Roles](
	[ID] [int] NOT NULL,
	[RoleName] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](200) NULL,
	[AddDate] [datetime] NULL,
	[OrderID] [int] NULL CONSTRAINT [DF_DT_Roles_OrderID]  DEFAULT ((0)),
 CONSTRAINT [PK_DT_Roles] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'角色ID' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'DT_Roles', @level2type=N'COLUMN', @level2name=N'ID'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'角色名称' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'DT_Roles', @level2type=N'COLUMN', @level2name=N'RoleName'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'角色描述' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'DT_Roles', @level2type=N'COLUMN', @level2name=N'Description'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'DT_Roles', @level2type=N'COLUMN', @level2name=N'OrderID'

GO
/****** 对象:  Table [dbo].[DT_Arc_Article]    脚本日期: 02/20/2010 14:49:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DT_Arc_Article]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DT_Arc_Article](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ClassID] [int] NOT NULL,
	[ViceClassID] [int] NULL CONSTRAINT [DF_DT_Arc_Article_ViceClassID]  DEFAULT ((-1)),
	[Title] [nvarchar](100) NOT NULL,
	[ShortTitle] [nvarchar](100) NULL,
	[TitleStyle] [varchar](100) NULL,
	[TitleFlag] [tinyint] NULL,
	[Tags] [nvarchar](100) NULL,
	[ImgUrl] [varchar](255) NULL,
	[Author] [nvarchar](50) NULL,
	[Editor] [nvarchar](50) NULL,
	[PubLisher] [nvarchar](50) NULL,
	[Source] [nvarchar](100) NULL,
	[Templet] [varchar](255) NULL,
	[Keywords] [nvarchar](200) NULL,
	[Description] [nvarchar](500) NULL,
	[AContent] [ntext] NULL,
	[Click] [int] NULL CONSTRAINT [DF_DT_Arc_Article_Click]  DEFAULT ((0)),
	[Good] [int] NULL CONSTRAINT [DF_DT_Arc_Article_Good]  DEFAULT ((0)),
	[Bad] [int] NULL CONSTRAINT [DF_DT_Arc_Article_Bad]  DEFAULT ((0)),
	[Readaccess] [smallint] NULL CONSTRAINT [DF_DT_Arc_Article_Readaccess]  DEFAULT ((0)),
	[Money] [smallint] NULL CONSTRAINT [DF_DT_Arc_Article_Money]  DEFAULT ((0)),
	[Attribute] [smallint] NULL CONSTRAINT [DF_DT_Arc_Article_Status]  DEFAULT ((0)),
	[IsComment] [tinyint] NULL,
	[IsVerify] [tinyint] NULL CONSTRAINT [DF_DT_Arc_Article_IsChecked]  DEFAULT ((1)),
	[IsRecycle] [tinyint] NULL CONSTRAINT [DF_DT_Arc_Article_IsRecycle]  DEFAULT ((0)),
	[IsRedirect] [tinyint] NULL CONSTRAINT [DF_DT_Arc_Article_IsRedirect]  DEFAULT ((0)),
	[IsHtml] [tinyint] NULL CONSTRAINT [DF_DT_Arc_Article_IsHtml]  DEFAULT ((0)),
	[IsPaging] [tinyint] NULL CONSTRAINT [DF_DT_Arc_Article_IsPaging]  DEFAULT ((0)),
	[FilePath] [varchar](255) NULL,
	[SimilarArticle] [varchar](200) NULL,
	[AddDate] [datetime] NOT NULL,
	[PubDate] [datetime] NOT NULL,
	[OrderID] [int] NULL CONSTRAINT [DF_DT_Arc_Article_Sort]  DEFAULT ((0)),
 CONSTRAINT [PK_DT_Arc_Article] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文章ID' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'DT_Arc_Article', @level2type=N'COLUMN', @level2name=N'ID'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'栏目ID' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'DT_Arc_Article', @level2type=N'COLUMN', @level2name=N'ClassID'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'副栏目ID,-1没有副栏目' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'DT_Arc_Article', @level2type=N'COLUMN', @level2name=N'ViceClassID'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文章标题' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'DT_Arc_Article', @level2type=N'COLUMN', @level2name=N'Title'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文章缩略标题' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'DT_Arc_Article', @level2type=N'COLUMN', @level2name=N'ShortTitle'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'标题样式' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'DT_Arc_Article', @level2type=N'COLUMN', @level2name=N'TitleStyle'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'标题标签，如原创、转载' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'DT_Arc_Article', @level2type=N'COLUMN', @level2name=N'TitleFlag'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文章TAG' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'DT_Arc_Article', @level2type=N'COLUMN', @level2name=N'Tags'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文章缩略图' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'DT_Arc_Article', @level2type=N'COLUMN', @level2name=N'ImgUrl'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文章作者' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'DT_Arc_Article', @level2type=N'COLUMN', @level2name=N'Author'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'责任编辑' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'DT_Arc_Article', @level2type=N'COLUMN', @level2name=N'Editor'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发布者' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'DT_Arc_Article', @level2type=N'COLUMN', @level2name=N'PubLisher'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文章来源' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'DT_Arc_Article', @level2type=N'COLUMN', @level2name=N'Source'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文章模版' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'DT_Arc_Article', @level2type=N'COLUMN', @level2name=N'Templet'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'关键字' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'DT_Arc_Article', @level2type=N'COLUMN', @level2name=N'Keywords'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文章描述' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'DT_Arc_Article', @level2type=N'COLUMN', @level2name=N'Description'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文章正文' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'DT_Arc_Article', @level2type=N'COLUMN', @level2name=N'AContent'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文章点击' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'DT_Arc_Article', @level2type=N'COLUMN', @level2name=N'Click'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'顶' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'DT_Arc_Article', @level2type=N'COLUMN', @level2name=N'Good'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'踩' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'DT_Arc_Article', @level2type=N'COLUMN', @level2name=N'Bad'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'阅读权限，会员组' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'DT_Arc_Article', @level2type=N'COLUMN', @level2name=N'Readaccess'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'消费点数' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'DT_Arc_Article', @level2type=N'COLUMN', @level2name=N'Money'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文章属性，1头条，2推荐，4图片，8灯幻，16滚动' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'DT_Arc_Article', @level2type=N'COLUMN', @level2name=N'Attribute'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否允许评论，1允许，0不允许' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'DT_Arc_Article', @level2type=N'COLUMN', @level2name=N'IsComment'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否审核，0未审核，1审核' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'DT_Arc_Article', @level2type=N'COLUMN', @level2name=N'IsVerify'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否放入回收站，0正常，1回收站' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'DT_Arc_Article', @level2type=N'COLUMN', @level2name=N'IsRecycle'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否跳转地址，1是，0否' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'DT_Arc_Article', @level2type=N'COLUMN', @level2name=N'IsRedirect'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否生成静态页，1生成静态，0动态访问' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'DT_Arc_Article', @level2type=N'COLUMN', @level2name=N'IsHtml'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否分页，1分页，0不分页' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'DT_Arc_Article', @level2type=N'COLUMN', @level2name=N'IsPaging'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'存储路径' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'DT_Arc_Article', @level2type=N'COLUMN', @level2name=N'FilePath'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'相关文章' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'DT_Arc_Article', @level2type=N'COLUMN', @level2name=N'SimilarArticle'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'添加时间' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'DT_Arc_Article', @level2type=N'COLUMN', @level2name=N'AddDate'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发布时间' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'DT_Arc_Article', @level2type=N'COLUMN', @level2name=N'PubDate'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文章排序' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'DT_Arc_Article', @level2type=N'COLUMN', @level2name=N'OrderID'

GO
/****** 对象:  Table [dbo].[DT_ModuleControl]    脚本日期: 02/20/2010 14:49:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DT_ModuleControl]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DT_ModuleControl](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ControlName] [nvarchar](20) NOT NULL,
	[ModuleID] [varchar](8) NOT NULL,
	[ControlValue] [int] NOT NULL,
	[OrderID] [int] NULL CONSTRAINT [DF_DT_Pre_ModuleControl_OrderID]  DEFAULT ((0)),
 CONSTRAINT [PK_DT_Pre_ModuleControl] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'操作名字' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'DT_ModuleControl', @level2type=N'COLUMN', @level2name=N'ControlName'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'模块ID' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'DT_ModuleControl', @level2type=N'COLUMN', @level2name=N'ModuleID'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'操作值' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'DT_ModuleControl', @level2type=N'COLUMN', @level2name=N'ControlValue'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'DT_ModuleControl', @level2type=N'COLUMN', @level2name=N'OrderID'

GO
/****** 对象:  Table [dbo].[DT_Arc_Class]    脚本日期: 02/20/2010 14:49:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DT_Arc_Class]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DT_Arc_Class](
	[CID] [int] IDENTITY(1,1) NOT NULL,
	[ParentID] [int] NOT NULL CONSTRAINT [DF_DT_Arc_Class_ParentID]  DEFAULT ((0)),
	[Attribute] [tinyint] NOT NULL,
	[ClassName] [nvarchar](100) NOT NULL,
	[ClassEName] [varchar](50) NULL,
	[ClassType] [tinyint] NOT NULL,
	[ClassDomain] [varchar](255) NULL,
	[ClassPath] [varchar](255) NULL,
	[IndexTemplet] [varchar](255) NULL,
	[ListTemplet] [varchar](255) NULL,
	[ArchiveTemplet] [varchar](255) NULL,
	[IndexRule] [varchar](255) NULL,
	[ListRule] [varchar](255) NULL,
	[ArchiveRule] [varchar](255) NULL,
	[ClassPage] [tinyint] NULL,
	[Description] [nvarchar](500) NULL,
	[IsHidden] [tinyint] NOT NULL,
	[IsHtml] [tinyint] NOT NULL,
	[CheckLevel] [tinyint] NOT NULL,
	[IsContribute] [tinyint] NOT NULL,
	[IsComment] [tinyint] NOT NULL,
	[Readaccess] [smallint] NULL,
	[SiteID] [tinyint] NULL,
	[AddDate] [datetime] NOT NULL,
	[Relation] [varchar](100) NULL,
	[OrderID] [smallint] NOT NULL,
	[ImgUrl] [varchar](255) NULL,
	[Keywords] [nvarchar](200) NULL,
	[CrossID] [varchar](200) NULL,
	[ClassContent] [ntext] NULL,
 CONSTRAINT [PK_DT_Arc_Class] PRIMARY KEY CLUSTERED 
(
	[CID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'栏目ID' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'DT_Arc_Class', @level2type=N'COLUMN', @level2name=N'CID'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'栏目父ID，默认0为顶级栏目' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'DT_Arc_Class', @level2type=N'COLUMN', @level2name=N'ParentID'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'栏目属性，1封面，2列表，3单页面，4链接地址' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'DT_Arc_Class', @level2type=N'COLUMN', @level2name=N'Attribute'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'栏目名称' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'DT_Arc_Class', @level2type=N'COLUMN', @level2name=N'ClassName'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'栏目英文名称' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'DT_Arc_Class', @level2type=N'COLUMN', @level2name=N'ClassEName'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'栏目类型' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'DT_Arc_Class', @level2type=N'COLUMN', @level2name=N'ClassType'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'栏目二级域名' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'DT_Arc_Class', @level2type=N'COLUMN', @level2name=N'ClassDomain'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'栏目目录，{#CmsPath}/Archive/' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'DT_Arc_Class', @level2type=N'COLUMN', @level2name=N'ClassPath'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'封面模版' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'DT_Arc_Class', @level2type=N'COLUMN', @level2name=N'IndexTemplet'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'列表模版' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'DT_Arc_Class', @level2type=N'COLUMN', @level2name=N'ListTemplet'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文档模版' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'DT_Arc_Class', @level2type=N'COLUMN', @level2name=N'ArchiveTemplet'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'封面页规则' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'DT_Arc_Class', @level2type=N'COLUMN', @level2name=N'IndexRule'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'列表页规则，访问路径' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'DT_Arc_Class', @level2type=N'COLUMN', @level2name=N'ListRule'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文档页规则，访问路径' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'DT_Arc_Class', @level2type=N'COLUMN', @level2name=N'ArchiveRule'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'栏目分页大小,列表条数' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'DT_Arc_Class', @level2type=N'COLUMN', @level2name=N'ClassPage'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'栏目描述' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'DT_Arc_Class', @level2type=N'COLUMN', @level2name=N'Description'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否隐藏，1启用，0隐藏' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'DT_Arc_Class', @level2type=N'COLUMN', @level2name=N'IsHidden'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否允许生成静态页，1生成静态，0动态访问' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'DT_Arc_Class', @level2type=N'COLUMN', @level2name=N'IsHtml'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审核机制' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'DT_Arc_Class', @level2type=N'COLUMN', @level2name=N'CheckLevel'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否允许投稿，1允许，0不允许' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'DT_Arc_Class', @level2type=N'COLUMN', @level2name=N'IsContribute'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'本栏目文章是否允许评论，1允许，0不允许' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'DT_Arc_Class', @level2type=N'COLUMN', @level2name=N'IsComment'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'阅读权限' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'DT_Arc_Class', @level2type=N'COLUMN', @level2name=N'Readaccess'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'站点ID' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'DT_Arc_Class', @level2type=N'COLUMN', @level2name=N'SiteID'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'添加时间' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'DT_Arc_Class', @level2type=N'COLUMN', @level2name=N'AddDate'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'栏目关系' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'DT_Arc_Class', @level2type=N'COLUMN', @level2name=N'Relation'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'栏目排序，升序排列' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'DT_Arc_Class', @level2type=N'COLUMN', @level2name=N'OrderID'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'栏目图片地址' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'DT_Arc_Class', @level2type=N'COLUMN', @level2name=N'ImgUrl'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'栏目关键字' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'DT_Arc_Class', @level2type=N'COLUMN', @level2name=N'Keywords'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'交叉栏目，多个栏目用,号隔开' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'DT_Arc_Class', @level2type=N'COLUMN', @level2name=N'CrossID'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'栏目内容' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'DT_Arc_Class', @level2type=N'COLUMN', @level2name=N'ClassContent'

GO
/****** 对象:  Table [dbo].[DT_AttachMent]    脚本日期: 02/20/2010 14:49:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DT_AttachMent]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DT_AttachMent](
	[AID] [int] IDENTITY(1,1) NOT NULL,
	[Attribute] [tinyint] NOT NULL,
	[DisplayName] [nvarchar](50) NULL,
	[AttachMentPath] [varchar](255) NULL,
	[AttachMentSize] [int] NULL,
	[AbbrPhotoPath] [varchar](255) NULL,
	[PubLisher] [nvarchar](50) NULL,
	[AddDate] [datetime] NULL,
	[PhotoDescription] [nvarchar](100) NULL,
 CONSTRAINT [PK_DT_Atr_AttachMent_Phone] PRIMARY KEY CLUSTERED 
(
	[AID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'附件ID' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'DT_AttachMent', @level2type=N'COLUMN', @level2name=N'AID'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'附件类型属性，1图片、2视频、3音频、4flash、5附件、6其它' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'DT_AttachMent', @level2type=N'COLUMN', @level2name=N'Attribute'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'附件显示名称，上传文件名称' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'DT_AttachMent', @level2type=N'COLUMN', @level2name=N'DisplayName'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'附件地址' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'DT_AttachMent', @level2type=N'COLUMN', @level2name=N'AttachMentPath'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'附件大小' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'DT_AttachMent', @level2type=N'COLUMN', @level2name=N'AttachMentSize'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'缩略图地址' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'DT_AttachMent', @level2type=N'COLUMN', @level2name=N'AbbrPhotoPath'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发布者' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'DT_AttachMent', @level2type=N'COLUMN', @level2name=N'PubLisher'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发布时间' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'DT_AttachMent', @level2type=N'COLUMN', @level2name=N'AddDate'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'附件描述' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'DT_AttachMent', @level2type=N'COLUMN', @level2name=N'PhotoDescription'

GO
/****** 对象:  StoredProcedure [dbo].[pagehelper]    脚本日期: 02/20/2010 14:49:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pagehelper]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'



-- 字符串缓存实现的通用分页存储过程(转自邹建)  
CREATE PROC [dbo].[pagehelper]  
@tbname     nvarchar(1000)='''',               --要分页显示的表名，可以使用表联合  
@FieldKey   nvarchar(1000)='''',               --用于定位记录的主键(惟一键)字段,只能是单个字段  
@PageCurrent int=1,                 --要显示的页码  
@PageSize   int=10,                --每页的大小(记录数)  
@FieldShow  nvarchar(1000)='''',      --以逗号分隔的要显示的字段列表,如果不指定,则显示所有字段  
@FieldOrder  nvarchar(1000)='''',     --以逗号分隔的排序字段列表,可以指定在字段后面指定DESC/ASC  
                                    -- 用于指定排序顺序  
@Where     nvarchar(1000)='''',      --查询条件  
@PageCount  int OUTPUT            --总页数  
AS  
DECLARE @sql nvarchar(4000)  
SET NOCOUNT ON  

--分页字段检查  
IF ISNULL(@FieldKey,N'''')=''''  
BEGIN  
    RAISERROR(N''分页处理需要主键（或者惟一键）'',1,16)  
    RETURN  
END  
--其他参数检查及规范  
IF ISNULL(@PageCurrent,0)<1 SET @PageCurrent=1  
IF ISNULL(@PageSize,0)<1 SET @PageSize=10  
IF ISNULL(@FieldShow,N'''')=N'''' SET @FieldShow=N''*''  
IF ISNULL(@FieldOrder,N'''')=N''''  
    SET @FieldOrder=N''''  
ELSE  IF CHARINDEX(''ORDER BY'',@FieldOrder)!=0
	SET @FieldOrder=LTRIM(@FieldOrder)
ELSE
    SET @FieldOrder=N''ORDER BY ''+LTRIM(@FieldOrder)  
IF ISNULL(@Where,N'''')=N''''  
    SET @Where=N''''  
ELSE  
    SET @Where=N''WHERE (''+@Where+N'')''  
--如果@PageCount为NULL值,则计算总页数(这样设计可以只在第一次计算总页数,以后调用时,把总页数传回给存储过程,避免再次计算总页数,对于不想计算总页数的处理而言,可以给@PageCount赋值)  
IF @PageCount IS NULL  
BEGIN  
    SET @sql=N''SELECT @PageCount=COUNT(*)''  
        +N'' FROM ''+@tbname  
        +N'' ''+@Where  
    EXEC sp_executesql @sql,N''@PageCount int OUTPUT'',@PageCount OUTPUT  
    --SET @PageCount=(@PageCount+@PageSize-1)/@PageSize  
END  

--@PageCount总记录数为0退出
IF @PageCount = 0
BEGIN
return 
END

--计算分页显示的TOPN值  
DECLARE @TopN varchar(20),@TopN1 varchar(20)  
SELECT @TopN=@PageSize,  
    @TopN1=@PageCurrent*@PageSize      
--第一页直接显示  
IF @PageCurrent=1  
    EXEC(N''SELECT TOP ''+@TopN  
        +N'' ''+@FieldShow  
        +N'' FROM ''+@tbname  
        +N'' ''+@Where  
        +N'' ''+@FieldOrder)  
ELSE  
BEGIN  
    SELECT @PageCurrent=@TopN1,  
        @sql=N''SELECT @n=@n-1,@s=CASE WHEN @n<''+@TopN  
            +N'' THEN @s+N'''',''''+QUOTENAME(RTRIM(CAST(''+@FieldKey  
            +N'' as varchar(8000))),N'''''''''''''''') ELSE N'''''''' END FROM ''+@tbname  
            +N'' ''+@Where  
            +N'' ''+@FieldOrder  

    SET ROWCOUNT @PageCurrent  
    EXEC sp_executesql @sql,  
        N''@n int,@s nvarchar(4000) OUTPUT'',  
        @PageCurrent,@sql OUTPUT  
    SET ROWCOUNT 0  
    IF @sql=N''''  
        EXEC(N''SELECT TOP 0''  
            +N'' ''+@FieldShow  
            +N'' FROM ''+@tbname)  
    ELSE  
    BEGIN  
        SET @sql=STUFF(@sql,1,1,N'''')          
        --执行查询   EXEC
        EXEC (N''SELECT TOP ''+@TopN  
            +N'' ''+@FieldShow  
            +N'' FROM ''+@tbname  
            +N'' ''+@Where + '' and '' + @FieldKey  
            +N'' IN(''+@sql  
            +N'') ''+@FieldOrder ) 
	END
END




' 
END
GO
/****** 对象:  Table [dbo].[DT_Sys_Dict]    脚本日期: 02/20/2010 14:49:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DT_Sys_Dict]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DT_Sys_Dict](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Type] [varchar](50) NULL,
	[Title] [nvarchar](50) NULL,
	[Url] [varchar](255) NULL,
	[Email] [varchar](50) NULL,
	[Click] [int] NULL CONSTRAINT [DF_DT_SYS_Dict_Hits]  DEFAULT ((0)),
 CONSTRAINT [PK_DT_SYS_Dict] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类型' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'DT_Sys_Dict', @level2type=N'COLUMN', @level2name=N'Type'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'标题' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'DT_Sys_Dict', @level2type=N'COLUMN', @level2name=N'Title'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'点击数' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'DT_Sys_Dict', @level2type=N'COLUMN', @level2name=N'Click'

GO
/****** 对象:  Table [dbo].[DT_Sys_Template]    脚本日期: 02/20/2010 14:49:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DT_Sys_Template]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DT_Sys_Template](
	[TemplateID] [int] IDENTITY(1,1) NOT NULL,
	[TemplateName] [nvarchar](50) NOT NULL,
	[TemplateDirectory] [varchar](255) NOT NULL,
	[IsEnable] [tinyint] NOT NULL,
	[CreateDateTime] [datetime] NULL,
	[TemplateImg] [varchar](255) NULL,
	[Author] [nvarchar](50) NULL,
 CONSTRAINT [PK_DT_SYS_Template] PRIMARY KEY CLUSTERED 
(
	[TemplateID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'模板主键' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'DT_Sys_Template', @level2type=N'COLUMN', @level2name=N'TemplateID'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'模板名称' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'DT_Sys_Template', @level2type=N'COLUMN', @level2name=N'TemplateName'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'模板目录' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'DT_Sys_Template', @level2type=N'COLUMN', @level2name=N'TemplateDirectory'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否启用' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'DT_Sys_Template', @level2type=N'COLUMN', @level2name=N'IsEnable'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'DT_Sys_Template', @level2type=N'COLUMN', @level2name=N'CreateDateTime'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'模板缩略图' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'DT_Sys_Template', @level2type=N'COLUMN', @level2name=N'TemplateImg'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'作者' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'DT_Sys_Template', @level2type=N'COLUMN', @level2name=N'Author'

GO
/****** 对象:  Table [dbo].[DT_Userfields]    脚本日期: 02/20/2010 14:49:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DT_Userfields]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DT_Userfields](
	[UID] [int] NOT NULL,
	[Realname] [nvarchar](50) NULL,
	[QQ] [varchar](50) NULL,
	[MSN] [varchar](50) NULL,
	[Skype] [varchar](50) NULL,
	[Phone] [char](16) NULL,
	[Mobilephone] [char](11) NULL,
	[Location] [nvarchar](50) NULL,
	[Adress] [nvarchar](200) NULL,
	[IDcard] [varchar](18) NULL,
	[Signature] [nvarchar](200) NULL,
	[Introduce] [nvarchar](500) NULL,
	[Website] [varchar](200) NULL,
 CONSTRAINT [PK_DT_Userfields] PRIMARY KEY CLUSTERED 
(
	[UID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户ID，user表外键' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'DT_Userfields', @level2type=N'COLUMN', @level2name=N'UID'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'真实姓名' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'DT_Userfields', @level2type=N'COLUMN', @level2name=N'Realname'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'QQ号码，支持Email帐号' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'DT_Userfields', @level2type=N'COLUMN', @level2name=N'QQ'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'MSN帐号' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'DT_Userfields', @level2type=N'COLUMN', @level2name=N'MSN'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Skype帐号' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'DT_Userfields', @level2type=N'COLUMN', @level2name=N'Skype'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'固定电话' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'DT_Userfields', @level2type=N'COLUMN', @level2name=N'Phone'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'地址' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'DT_Userfields', @level2type=N'COLUMN', @level2name=N'Adress'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'身份证' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'DT_Userfields', @level2type=N'COLUMN', @level2name=N'IDcard'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'个性签名' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'DT_Userfields', @level2type=N'COLUMN', @level2name=N'Signature'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'个人简介' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'DT_Userfields', @level2type=N'COLUMN', @level2name=N'Introduce'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'个人网站' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'DT_Userfields', @level2type=N'COLUMN', @level2name=N'Website'

GO
/****** 对象:  Table [dbo].[DT_Arc_Soft]    脚本日期: 02/20/2010 14:49:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DT_Arc_Soft]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DT_Arc_Soft](
	[AID] [int] NOT NULL
) ON [PRIMARY]
END
GO
/****** 对象:  Table [dbo].[DT_Usergroup]    脚本日期: 02/20/2010 14:49:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DT_Usergroup]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DT_Usergroup](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Type] [tinyint] NOT NULL CONSTRAINT [DF_DT_Pre_Usergroup_GroupType]  DEFAULT ((0)),
	[IsSystem] [tinyint] NULL CONSTRAINT [DF_DT_Pre_Usergroup_IsSystem]  DEFAULT ((0)),
	[GroupName] [nvarchar](50) NULL,
	[Description] [nvarchar](255) NULL,
	[CreditBegin] [int] NULL CONSTRAINT [DF_DT_Pre_Usergroup_CreditBegin]  DEFAULT ((0)),
	[CreditEnd] [int] NULL CONSTRAINT [DF_DT_Pre_Usergroup_CreditEnd]  DEFAULT ((0)),
	[stars] [tinyint] NULL CONSTRAINT [DF_DT_Pre_Usergroup_stars]  DEFAULT ((0)),
	[GroupAvatar] [varchar](255) NULL,
	[Readaccess] [int] NULL CONSTRAINT [DF_DT_Pre_Usergroup_Readaccess]  DEFAULT ((0)),
	[AllowPost] [tinyint] NULL CONSTRAINT [DF_DT_Pre_Usergroup_AllowPost]  DEFAULT ((0)),
	[AllowComment] [tinyint] NULL CONSTRAINT [DF_DT_Pre_Usergroup_AllowComment]  DEFAULT ((0)),
	[AllowDownload] [tinyint] NULL CONSTRAINT [DF_DT_Pre_Usergroup_AllowDownload]  DEFAULT ((0)),
	[AllowAvatar] [tinyint] NULL CONSTRAINT [DF_DT_Pre_Usergroup_AllowAvatar]  DEFAULT ((0)),
	[AllowSpace] [tinyint] NULL CONSTRAINT [DF_DT_Pre_Usergroup_AllowSpace]  DEFAULT ((0)),
	[AllowTransfer] [tinyint] NULL CONSTRAINT [DF_DT_Pre_Usergroup_AllowTransfer]  DEFAULT ((0)),
	[AllowViewInfo] [tinyint] NULL CONSTRAINT [DF_DT_Pre_Usergroup_AllowViewInfo]  DEFAULT ((0)),
	[AllowNickname] [tinyint] NULL CONSTRAINT [DF_DT_Pre_Usergroup_AllowNickname]  DEFAULT ((0)),
	[MaxPMNum] [smallint] NULL,
	[MaxSignSize] [smallint] NULL,
	[MaxAttachSize] [int] NULL,
	[MaxAttachTotalSize] [int] NULL,
	[AttachExtension] [varchar](255) NULL,
	[OrderID] [int] NULL,
 CONSTRAINT [PK_DT_Pre_Usergroup] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户组ID' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'DT_Usergroup', @level2type=N'COLUMN', @level2name=N'ID'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户组类型，0系统组，1管理组，2用户组' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'DT_Usergroup', @level2type=N'COLUMN', @level2name=N'Type'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否系统内置组，系统内置组不能被删除' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'DT_Usergroup', @level2type=N'COLUMN', @level2name=N'IsSystem'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户组名' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'DT_Usergroup', @level2type=N'COLUMN', @level2name=N'GroupName'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户组描述' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'DT_Usergroup', @level2type=N'COLUMN', @level2name=N'Description'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'开始积分' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'DT_Usergroup', @level2type=N'COLUMN', @level2name=N'CreditBegin'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'结束积分' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'DT_Usergroup', @level2type=N'COLUMN', @level2name=N'CreditEnd'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'星星等级' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'DT_Usergroup', @level2type=N'COLUMN', @level2name=N'stars'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户组头像' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'DT_Usergroup', @level2type=N'COLUMN', @level2name=N'GroupAvatar'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'阅读权限' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'DT_Usergroup', @level2type=N'COLUMN', @level2name=N'Readaccess'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'允许发布文章，1允许，0不允许' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'DT_Usergroup', @level2type=N'COLUMN', @level2name=N'AllowPost'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'允许评论' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'DT_Usergroup', @level2type=N'COLUMN', @level2name=N'AllowComment'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'允许下载附件' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'DT_Usergroup', @level2type=N'COLUMN', @level2name=N'AllowDownload'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'允许使用头像，0不允许，1允许使用系统自带头像，2允许使用URL地址头像，3允许使用上传头像' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'DT_Usergroup', @level2type=N'COLUMN', @level2name=N'AllowAvatar'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'允许开通个人空间' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'DT_Usergroup', @level2type=N'COLUMN', @level2name=N'AllowSpace'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'允许积分转账' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'DT_Usergroup', @level2type=N'COLUMN', @level2name=N'AllowTransfer'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'允许查看其他用户资料' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'DT_Usergroup', @level2type=N'COLUMN', @level2name=N'AllowViewInfo'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'允许使用昵称' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'DT_Usergroup', @level2type=N'COLUMN', @level2name=N'AllowNickname'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'短消息最大条数' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'DT_Usergroup', @level2type=N'COLUMN', @level2name=N'MaxPMNum'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'签名最大字节数' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'DT_Usergroup', @level2type=N'COLUMN', @level2name=N'MaxSignSize'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'附件最大尺寸' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'DT_Usergroup', @level2type=N'COLUMN', @level2name=N'MaxAttachSize'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'附件最大总尺寸' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'DT_Usergroup', @level2type=N'COLUMN', @level2name=N'MaxAttachTotalSize'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'允许上传附件类型，例：.txt,.rar,.jpg' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'DT_Usergroup', @level2type=N'COLUMN', @level2name=N'AttachExtension'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户组排序' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'DT_Usergroup', @level2type=N'COLUMN', @level2name=N'OrderID'

GO
/****** 对象:  StoredProcedure [dbo].[OutputData]    脚本日期: 02/20/2010 14:49:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OutputData]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE   [dbo].[OutputData]     
  @tablename   sysname      
  AS      
  declare   @column   varchar(1000)     
  declare   @columndata   varchar(1000)     
  declare   @sql   varchar(4000)     
  declare   @xtype   tinyint      
  declare   @name   sysname      
  declare   @objectId   int      
  declare   @objectname   sysname      
  declare   @ident   int      

  set   nocount   on      
  set   @objectId=object_id(@tablename)     
  if  @objectId   is   null   --   判断对象是否存在     
     begin      
      print  @tablename +  ''对象不存在''     
      return      
    end     

  set @objectname=rtrim(object_name(@objectId))     
  if @objectname is null or charindex(@objectname,@tablename)=0
    begin      
      print  @tablename +  ''对象不在当前数据库中''      
      return      
    end         

  if  OBJECTPROPERTY(@objectId,''IsTable'')   <   >   1   --   判断对象是否是表     
    begin      
      print  @tablename +  ''对象不是表''     
      return      
    end         

  select   @ident=status&0x80   from   syscolumns   where   id=@objectid   and   status&0x80=0x80          

  if @ident is   not   null      
    print   ''SET   IDENTITY_INSERT   ''+ @TableName + ''   ON''     


  --定义游标，循环取数据并生成Insert语句
  declare  syscolumns_cursor  cursor for   
    select   c.name,c.xtype   from   syscolumns   c     
      where   c.id=@objectid     
      order   by   c.colid     

  --打开游标
  open   syscolumns_cursor     
  set  @column=''''     
  set  @columndata=''''     
  fetch   next   from   syscolumns_cursor   into   @name,@xtype     
  while   @@fetch_status   <> -1     
    begin      
    if   @@fetch_status   <> -2     
      begin      
      if   @xtype   not   in(189,34,35,99,98)   --timestamp不需处理，image,text,ntext,sql_variant 暂时不处理     
        begin      
        set   @column=@column + 
          case   when   len(@column)=0   then ''''  
                 else   '',''
                 end + @name     
        set   @columndata = @columndata + 
          case   when   len(@columndata)=0   then   ''''   
                 else   '','''','''',''
                 end  + 
          case   when  @xtype   in(167,175)  then   ''''''''''''''''''+''+@name+''+''''''''''''''''''                --varchar,char     
                 when   @xtype   in(231,239)   then   ''''''N''''''''''''+''+@name+''+''''''''''''''''''             --nvarchar,nchar     
                 when   @xtype=61   then   ''''''''''''''''''+convert(char(23),''+@name+'',121)+''''''''''''''''''   --datetime     
                 when   @xtype=58   then   ''''''''''''''''''+convert(char(16),''+@name+'',120)+''''''''''''''''''   --smalldatetime     
                  when   @xtype=36   then   ''''''''''''''''''+convert(char(36),''+@name+'')+''''''''''''''''''       --uniqueidentifier     
                 else   @name   
                 end      
        end      
      end      
    fetch   next   from   syscolumns_cursor   into   @name,@xtype     
    end      
  close   syscolumns_cursor     
  deallocate   syscolumns_cursor          

  set  @sql=''set   nocount   on   select   ''''insert   ''+@tablename+''(''+@column+'')   values(''''as   ''''--'''',''+@columndata+'','''')''''   from   ''+@tablename         

  print   ''--''+@sql     
  exec(@sql)          

  if   @ident   is   not   null      
  print  ''SET   IDENTITY_INSERT   ''+@TableName+''   OFF''     
' 
END
GO
/****** 对象:  Table [dbo].[DT_Modules]    脚本日期: 02/20/2010 14:49:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DT_Modules]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DT_Modules](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ModuleID] [varchar](8) NOT NULL,
	[ParentID] [varchar](8) NOT NULL,
	[ModuleName] [nvarchar](50) NOT NULL,
	[EName] [varchar](50) NULL,
	[ModuleDepth] [tinyint] NULL,
	[ModuleURL] [varchar](255) NULL,
	[Target] [varchar](20) NULL,
	[Description] [nvarchar](200) NULL,
	[CreateTime] [datetime] NULL CONSTRAINT [DF_DT_SYS_Navigate_CreateTime]  DEFAULT (getdate()),
	[IsQuickMenu] [tinyint] NULL CONSTRAINT [DF_DT_SYS_Modules_IsQuickMenu]  DEFAULT ((0)),
	[IsSystem] [tinyint] NULL CONSTRAINT [DF_DT_SYS_Navigate_ISSys]  DEFAULT ((0)),
	[IsEnable] [tinyint] NULL CONSTRAINT [DF_DT_SYS_Navigate_ISEnable]  DEFAULT ((1)),
	[OrderID] [int] NULL CONSTRAINT [DF_Sys_Navigate_OrderID]  DEFAULT ((0)),
 CONSTRAINT [PK_Sys_Navigate] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'模块ID' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'DT_Modules', @level2type=N'COLUMN', @level2name=N'ModuleID'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'模块父ID' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'DT_Modules', @level2type=N'COLUMN', @level2name=N'ParentID'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'模块名称' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'DT_Modules', @level2type=N'COLUMN', @level2name=N'ModuleName'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'模块英文名' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'DT_Modules', @level2type=N'COLUMN', @level2name=N'EName'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'模块深度，1为顶级模块分类' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'DT_Modules', @level2type=N'COLUMN', @level2name=N'ModuleDepth'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'模块URL地址' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'DT_Modules', @level2type=N'COLUMN', @level2name=N'ModuleURL'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'页面打开方式' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'DT_Modules', @level2type=N'COLUMN', @level2name=N'Target'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'模块说明' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'DT_Modules', @level2type=N'COLUMN', @level2name=N'Description'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'DT_Modules', @level2type=N'COLUMN', @level2name=N'CreateTime'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否添加到快捷菜单' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'DT_Modules', @level2type=N'COLUMN', @level2name=N'IsQuickMenu'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否系统导航' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'DT_Modules', @level2type=N'COLUMN', @level2name=N'IsSystem'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否应用' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'DT_Modules', @level2type=N'COLUMN', @level2name=N'IsEnable'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'DT_Modules', @level2type=N'COLUMN', @level2name=N'OrderID'

GO
/****** 对象:  Table [dbo].[DT_Users]    脚本日期: 02/20/2010 14:49:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DT_Users]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DT_Users](
	[UID] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](50) NOT NULL,
	[NickName] [nvarchar](50) NULL,
	[Password] [varchar](64) NOT NULL,
	[SecureQuestion] [nvarchar](50) NULL,
	[SecureAnswer] [nvarchar](50) NULL,
	[Sex] [tinyint] NULL CONSTRAINT [DF_DT_Users_Sex]  DEFAULT ((1)),
	[Email] [varchar](50) NULL,
	[RoleID] [int] NULL CONSTRAINT [DF_DT_Users_RoleID]  DEFAULT ((0)),
	[UsergroupID] [int] NULL CONSTRAINT [DF_DT_Users_UsergroupID]  DEFAULT ((0)),
	[RegisterIP] [char](15) NULL,
	[RegisterTime] [datetime] NULL CONSTRAINT [DF_DT_Users_RegisterDate]  DEFAULT (getdate()),
	[LastloginIP] [char](15) NULL,
	[LastloginTime] [datetime] NULL CONSTRAINT [DF_DT_Users_LastloginTime]  DEFAULT (getdate()),
	[LoginCount] [int] NULL CONSTRAINT [DF_DT_Users_LoginCount]  DEFAULT ((0)),
	[PostCount] [int] NULL CONSTRAINT [DF_DT_Users_PostCount]  DEFAULT ((0)),
	[OnlineTime] [int] NULL CONSTRAINT [DF_DT_Users_OnlineTime]  DEFAULT ((0)),
	[Credits] [int] NULL CONSTRAINT [DF_DT_Users_Credits]  DEFAULT ((0)),
	[ExtCredits1] [decimal](18, 0) NULL CONSTRAINT [DF_DT_Users_ExtCredits1]  DEFAULT ((0)),
	[ExtCredits2] [decimal](18, 0) NULL CONSTRAINT [DF_DT_Users_ExtCredits2]  DEFAULT ((0)),
	[ExtCredits3] [decimal](18, 0) NULL CONSTRAINT [DF_DT_Users_ExtCredits3]  DEFAULT ((0)),
	[ExtCredits4] [decimal](18, 0) NULL,
	[ExtCredits5] [decimal](18, 0) NULL,
	[Avatar] [varchar](200) NULL,
	[Birthday] [smalldatetime] NULL,
	[PMCount] [int] NULL CONSTRAINT [DF_DT_Users_PmCount]  DEFAULT ((0)),
	[IsVerify] [tinyint] NULL CONSTRAINT [DF_DT_Users_IsVerify]  DEFAULT ((0)),
	[IsLock] [tinyint] NULL CONSTRAINT [DF_DT_Users_IsForbidden]  DEFAULT ((0)),
 CONSTRAINT [PK_DT_Users] PRIMARY KEY CLUSTERED 
(
	[UID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户UID编号' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'DT_Users', @level2type=N'COLUMN', @level2name=N'UID'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户名' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'DT_Users', @level2type=N'COLUMN', @level2name=N'UserName'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户昵称' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'DT_Users', @level2type=N'COLUMN', @level2name=N'NickName'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'安全提示问题' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'DT_Users', @level2type=N'COLUMN', @level2name=N'SecureQuestion'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'安全提示答案' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'DT_Users', @level2type=N'COLUMN', @level2name=N'SecureAnswer'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'性别' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'DT_Users', @level2type=N'COLUMN', @level2name=N'Sex'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Email地址' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'DT_Users', @level2type=N'COLUMN', @level2name=N'Email'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户权限ID' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'DT_Users', @level2type=N'COLUMN', @level2name=N'RoleID'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户组ID' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'DT_Users', @level2type=N'COLUMN', @level2name=N'UsergroupID'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'注册IP' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'DT_Users', @level2type=N'COLUMN', @level2name=N'RegisterIP'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'注册时间' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'DT_Users', @level2type=N'COLUMN', @level2name=N'RegisterTime'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'上次登陆IP' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'DT_Users', @level2type=N'COLUMN', @level2name=N'LastloginIP'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'上次登陆时间' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'DT_Users', @level2type=N'COLUMN', @level2name=N'LastloginTime'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'登陆次数' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'DT_Users', @level2type=N'COLUMN', @level2name=N'LoginCount'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发布文章数' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'DT_Users', @level2type=N'COLUMN', @level2name=N'PostCount'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'在线时间（单位：分钟）' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'DT_Users', @level2type=N'COLUMN', @level2name=N'OnlineTime'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户积分' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'DT_Users', @level2type=N'COLUMN', @level2name=N'Credits'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'扩展积分' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'DT_Users', @level2type=N'COLUMN', @level2name=N'ExtCredits1'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'扩展积分2' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'DT_Users', @level2type=N'COLUMN', @level2name=N'ExtCredits2'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'扩展积分3' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'DT_Users', @level2type=N'COLUMN', @level2name=N'ExtCredits3'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'扩展积分4' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'DT_Users', @level2type=N'COLUMN', @level2name=N'ExtCredits4'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'扩展积分' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'DT_Users', @level2type=N'COLUMN', @level2name=N'ExtCredits5'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户头像' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'DT_Users', @level2type=N'COLUMN', @level2name=N'Avatar'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'生日' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'DT_Users', @level2type=N'COLUMN', @level2name=N'Birthday'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'新短消息数' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'DT_Users', @level2type=N'COLUMN', @level2name=N'PMCount'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否审核' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'DT_Users', @level2type=N'COLUMN', @level2name=N'IsVerify'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否锁定' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'DT_Users', @level2type=N'COLUMN', @level2name=N'IsLock'

GO
/****** 对象:  Table [dbo].[DT_Help]    脚本日期: 02/20/2010 14:49:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DT_Help]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DT_Help](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[HelpID] [char](8) NOT NULL,
	[PID] [char](8) NOT NULL,
	[Title] [nvarchar](100) NULL,
	[Message] [nvarchar](1000) NULL,
	[OrderID] [int] NULL CONSTRAINT [DF_DT_SYS_Help_OrderID]  DEFAULT ((0)),
 CONSTRAINT [PK_DT_SYS_Help] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ID，自增列' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'DT_Help', @level2type=N'COLUMN', @level2name=N'ID'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'帮助ID，例：H0201001' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'DT_Help', @level2type=N'COLUMN', @level2name=N'HelpID'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'帮助父ID' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'DT_Help', @level2type=N'COLUMN', @level2name=N'PID'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'帮助主题' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'DT_Help', @level2type=N'COLUMN', @level2name=N'Title'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'帮助信息' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'DT_Help', @level2type=N'COLUMN', @level2name=N'Message'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'帮助排序' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'DT_Help', @level2type=N'COLUMN', @level2name=N'OrderID'

