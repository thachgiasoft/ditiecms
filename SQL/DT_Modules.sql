SET IDENTITY_INSERT DT_Modules ON
INSERT DT_Modules(ModuleID,ParentID,Name,EName,ModuleDepth,ModuleURL,Target,Description,CreateTime,IsQuickMenu,IsSystem,IsEnable,OrderID) VALUES('M01'	,	'M0'	,	N'控制面板'	,	'ControlPanel'	,	1	,	'controlpanel.aspx'	,	'main_body'	,	N'附件管理'	,	'2010-01-17 17:07:08.700'	,	1	,	1	,	1	,	1	)
INSERT DT_Modules(ModuleID,ParentID,Name,EName,ModuleDepth,ModuleURL,Target,Description,CreateTime,IsQuickMenu,IsSystem,IsEnable,OrderID) VALUES( 'M0101'	,	'M01'	,	N'快捷导航'	,	'QuickMenu'	,	2	,	NULL	,	'main_body'	,	N'快捷导航'	,	'2010-01-17 17:19:35.967'	,	0	,	1	,	1	,	1	)
INSERT DT_Modules(ModuleID,ParentID,Name,EName,ModuleDepth,ModuleURL,Target,Description,CreateTime,IsQuickMenu,IsSystem,IsEnable,OrderID) VALUES( 'M0102'	,	'M01'	,	N'个人信息'	,	'PersonalInfo'	,	2	,	'user/'	,	'main_body'	,	N'个人信息'	,	'2010-01-17 17:20:33.233'	,	0	,	1	,	1	,	1	)
INSERT DT_Modules(ModuleID,ParentID,Name,EName,ModuleDepth,ModuleURL,Target,Description,CreateTime,IsQuickMenu,IsSystem,IsEnable,OrderID) VALUES(  'M0102001'	,	'M0102'	,	N'我的资料'	,	'MyInfo'	,	3	,	'user/myinfo.aspx'	,	'main_body'	,	N'我的资料'	,	'2010-01-17 17:21:07.060'	,	0	,	1	,	1	,	1	)
INSERT DT_Modules(ModuleID,ParentID,Name,EName,ModuleDepth,ModuleURL,Target,Description,CreateTime,IsQuickMenu,IsSystem,IsEnable,OrderID) VALUES(  'M0102002'	,	'M0102'	,	N'短消息'	,	'MyPM'	,	3	,	'user/pm_list.aspx'	,	'main_body'	,	N'短消息'	,	'2010-01-29 15:47:25.967'	,	0	,	1	,	1	,	2	)
INSERT DT_Modules(ModuleID,ParentID,Name,EName,ModuleDepth,ModuleURL,Target,Description,CreateTime,IsQuickMenu,IsSystem,IsEnable,OrderID) VALUES(  'M0102003'	,	'M0102'	,	N'我的权限'	,	'MyPermission'	,	3	,	'user/mypermission.aspx'	,	'main_body'	,	N'我的权限'	,	'2010-01-29 15:48:00.327'	,	0	,	1	,	1	,	3	)
INSERT DT_Modules(ModuleID,ParentID,Name,EName,ModuleDepth,ModuleURL,Target,Description,CreateTime,IsQuickMenu,IsSystem,IsEnable,OrderID) VALUES(	'M0103'	,	'M01'	,	N'系统帮助'	,	'SystemHelp'	,	2	,	'help/'	,	'main_body'	,	N'系统帮助'	,	'2010-02-01 14:57:22.417'	,	0	,	1	,	1	,	3	)
INSERT DT_Modules(ModuleID,ParentID,Name,EName,ModuleDepth,ModuleURL,Target,Description,CreateTime,IsQuickMenu,IsSystem,IsEnable,OrderID) VALUES(	 'M0103001'	,	'M0103'	,	N'系统使用帮助'	,	'SystemHelp'	,	3	,	'http://www.91aspx.com/help/'	,	'_blank'	,	N'系统使用帮助'	,	'2010-02-01 14:58:56.130'	,	0	,	1	,	1	,	1	)
INSERT DT_Modules(ModuleID,ParentID,Name,EName,ModuleDepth,ModuleURL,Target,Description,CreateTime,IsQuickMenu,IsSystem,IsEnable,OrderID) VALUES(	 'M0103002'	,	'M0103'	,	N'模版标签帮助'	,	'TemplateHelp'	,	3	,	'http://www.91aspx.com/help/'	,	'_blank'	,	N'模版标签帮助'	,	'2010-02-01 15:00:17.613'	,	0	,	0	,	1	,	2	)
INSERT DT_Modules(ModuleID,ParentID,Name,EName,ModuleDepth,ModuleURL,Target,Description,CreateTime,IsQuickMenu,IsSystem,IsEnable,OrderID) VALUES(	 'M0103003'	,	'M0103'	,	N'官方网站'	,	'OfficialSite'	,	3	,	'http://www.91aspx.com/'	,	'_blank'	,	N'官方网站'	,	'2010-02-01 15:04:00.327'	,	0	,	1	,	1	,	3	)

INSERT DT_Modules(ModuleID,ParentID,Name,EName,ModuleDepth,ModuleURL,Target,Description,CreateTime,IsQuickMenu,IsSystem,IsEnable,OrderID) VALUES('M02'	,	'M0'	,	N'站点管理'	,	'SiteManage'	,	1	,	'site/class_list.aspx'	,	'main_body'	,	N'频道管理'	,	'2010-01-17 17:01:21.640'	,	0	,	1	,	1	,	2	)
INSERT DT_Modules(ModuleID,ParentID,Name,EName,ModuleDepth,ModuleURL,Target,Description,CreateTime,IsQuickMenu,IsSystem,IsEnable,OrderID) VALUES(	'M0201'	,	'M02'	,	N'频道管理'	,	'ChannelManage'	,	2	,	'site/'	,	'main_body'	,	N'频道管理'	,	'2010-01-29 16:01:56.403'	,	0	,	1	,	1	,	1	)
INSERT DT_Modules(ModuleID,ParentID,Name,EName,ModuleDepth,ModuleURL,Target,Description,CreateTime,IsQuickMenu,IsSystem,IsEnable,OrderID) VALUES(	 'M0201001'	,	'M0201'	,	N'内容模型管理'	,	'ModelList'	,	3	,	'site/model_list.aspx'	,	'main_body'	,	N'内容模型管理'	,	'2010-01-29 16:07:39.047'	,	0	,	1	,	1	,	1	)
INSERT DT_Modules(ModuleID,ParentID,Name,EName,ModuleDepth,ModuleURL,Target,Description,CreateTime,IsQuickMenu,IsSystem,IsEnable,OrderID) VALUES(	 'M0201003'	,	'M0201'	,	N'单页文档管理'	,	'SimpleArchiveList'	,	3	,	'site/simplearchive_list.aspx'	,	'main_body'	,	N'单页文档管理'	,	'2010-01-29 16:08:36.200'	,	0	,	1	,	1	,	3	)
INSERT DT_Modules(ModuleID,ParentID,Name,EName,ModuleDepth,ModuleURL,Target,Description,CreateTime,IsQuickMenu,IsSystem,IsEnable,OrderID) VALUES(	 'M0201002'	,	'M0201'	,	N'网站栏目管理'	,	'ClassList'	,	3	,	'site/class_list.aspx'	,	'main_body'	,	N'网站栏目管理'	,	'2010-01-29 16:12:44.153'	,	1	,	1	,	1	,	3	)
INSERT DT_Modules(ModuleID,ParentID,Name,EName,ModuleDepth,ModuleURL,Target,Description,CreateTime,IsQuickMenu,IsSystem,IsEnable,OrderID) VALUES(	'M0202'	,	'M02'	,	N'频道设置'	,	'ChannelSetting'	,	2	,	'site/'	,	'main_body'	,	N'频道设置'	,	'2010-01-29 16:02:39.513'	,	0	,	1	,	1	,	2	)
INSERT DT_Modules(ModuleID,ParentID,Name,EName,ModuleDepth,ModuleURL,Target,Description,CreateTime,IsQuickMenu,IsSystem,IsEnable,OrderID) VALUES(	 'M0202001'	,	'M0202'	,	N'栏目默认字段'	,	'ClassAdd'	,	3	,	'site/class_add.aspx'	,	'main_body'	,	N'栏目默认字段'	,	'2010-01-29 16:12:23.560'	,	0	,	1	,	1	,	1	)
INSERT DT_Modules(ModuleID,ParentID,Name,EName,ModuleDepth,ModuleURL,Target,Description,CreateTime,IsQuickMenu,IsSystem,IsEnable,OrderID) VALUES(	 'M0202002'	,	'M0202'	,	N'栏目防采集设置'	,	'ClassImport'	,	3	,	'site/class_import.aspx'	,	'main_body'	,	N'栏目防采集设置'	,	'2010-01-29 16:14:24.750'	,	0	,	1	,	1	,	3	)
INSERT DT_Modules(ModuleID,ParentID,Name,EName,ModuleDepth,ModuleURL,Target,Description,CreateTime,IsQuickMenu,IsSystem,IsEnable,OrderID) VALUES(	 'M0202003'	,	'M0202'	,	N'文档默认字段'	,	'ArchivesDefault'	,	3	,	'site/archivesdefault_setting.aspx'	,	'main_body'	,	N'文档默认字段'	,	'2010-02-02 14:32:58.997'	,	0	,	1	,	1	,	2	)
INSERT DT_Modules(ModuleID,ParentID,Name,EName,ModuleDepth,ModuleURL,Target,Description,CreateTime,IsQuickMenu,IsSystem,IsEnable,OrderID) VALUES(	 'M0202004'	,	'M0202'	,	N'软件下载设置'	,	'SoftDownload'	,	3	,	'site/softdownload_setting.aspx'	,	'main_body'	,	N'软件下载设置'	,	'2010-02-02 14:34:39.077'	,	0	,	1	,	1	,	4	)
INSERT DT_Modules(ModuleID,ParentID,Name,EName,ModuleDepth,ModuleURL,Target,Description,CreateTime,IsQuickMenu,IsSystem,IsEnable,OrderID) VALUES(	'M0203'	,	'M02'	,	N'文件管理'	,	'FileManage'	,	2	,	'site/'	,	'main_body'	,	N'文件管理'	,	'2010-01-29 16:03:24.340'	,	0	,	1	,	1	,	6	)
INSERT DT_Modules(ModuleID,ParentID,Name,EName,ModuleDepth,ModuleURL,Target,Description,CreateTime,IsQuickMenu,IsSystem,IsEnable,OrderID) VALUES(	 'M0203001'	,	'M0203'	,	N'文件管理器'	,	'FileList'	,	3	,	'site/file_list.aspx'	,	'main_body'	,	N'文件管理器'	,	'2010-01-29 16:16:30.640'	,	0	,	1	,	1	,	1	)
INSERT DT_Modules(ModuleID,ParentID,Name,EName,ModuleDepth,ModuleURL,Target,Description,CreateTime,IsQuickMenu,IsSystem,IsEnable,OrderID) VALUES(	 'M0203002'	,	'M0203'	,	N'木马检测'	,	'FileTrojanDetect'	,	3	,	'site/file_detect.aspx'	,	'main_body'	,	N'文件木马检测'	,	'2010-01-29 16:18:47.763'	,	0	,	1	,	1	,	2	)
INSERT DT_Modules(ModuleID,ParentID,Name,EName,ModuleDepth,ModuleURL,Target,Description,CreateTime,IsQuickMenu,IsSystem,IsEnable,OrderID) VALUES(	'M0204'	,	'M02'	,	N'模版管理'	,	'TemplateManage'	,	2	,	'site/'	,	'main_body'	,	N'模版管理'	,	'2010-01-29 16:04:36.140'	,	0	,	1	,	1	,	7	)
INSERT DT_Modules(ModuleID,ParentID,Name,EName,ModuleDepth,ModuleURL,Target,Description,CreateTime,IsQuickMenu,IsSystem,IsEnable,OrderID) VALUES(	 'M0204001'	,	'M0204'	,	N'模版管理'	,	'TemplateList'	,	3	,	'site/template_list.aspx'	,	'main_body'	,	N'模版管理'	,	'2010-01-29 16:20:36.233'	,	0	,	1	,	1	,	2	)
INSERT DT_Modules(ModuleID,ParentID,Name,EName,ModuleDepth,ModuleURL,Target,Description,CreateTime,IsQuickMenu,IsSystem,IsEnable,OrderID) VALUES(	 'M0204002'	,	'M0204'	,	N'添加模版'	,	'TemplateAdd'	,	3	,	'site/template_add.aspx'	,	'main_body'	,	N'添加模版'	,	'2010-01-29 16:21:33.750'	,	0	,	1	,	1	,	1	)

INSERT DT_Modules(ModuleID,ParentID,Name,EName,ModuleDepth,ModuleURL,Target,Description,CreateTime,IsQuickMenu,IsSystem,IsEnable,OrderID) VALUES('M03'	,	'M0'	,	N'内容管理'	,	'ContentManage'	,	1	,	'content/news_list.aspx'	,	'main_body'	,	N'内容管理'	,	'2010-01-17 17:03:23.967'	,	0	,	1	,	1	,	3	)
INSERT DT_Modules(ModuleID,ParentID,Name,EName,ModuleDepth,ModuleURL,Target,Description,CreateTime,IsQuickMenu,IsSystem,IsEnable,OrderID) VALUES(	'M0301'	,	'M03'	,	N'信息管理'	,	'NewsManage'	,	2	,	'content/news/'	,	'main_body'	,	N'信息管理'	,	'2010-01-29 16:26:35.047'	,	0	,	1	,	1	,	2	)
INSERT DT_Modules(ModuleID,ParentID,Name,EName,ModuleDepth,ModuleURL,Target,Description,CreateTime,IsQuickMenu,IsSystem,IsEnable,OrderID) VALUES(	 'M0301002'	,	'M0301'	,	N'文档发布'	,	'ArchivsAdd'	,	3	,	'content/news/news_addoredit.aspx?postflag=add&classid=&newsid='	,	'main_body'	,	N'文档发布'	,	'2010-01-29 16:57:18.827'	,	0	,	1	,	1	,	2	)
INSERT DT_Modules(ModuleID,ParentID,Name,EName,ModuleDepth,ModuleURL,Target,Description,CreateTime,IsQuickMenu,IsSystem,IsEnable,OrderID) VALUES(	 'M0301008'	,	'M0301'	,	N'内容审核'	,	'NewsVerify'	,	3	,	'content/news/new_sverify.aspx'	,	'main_body'	,	N'内容审核'	,	'2010-01-29 17:19:14.437'	,	0	,	1	,	1	,	8	)
INSERT DT_Modules(ModuleID,ParentID,Name,EName,ModuleDepth,ModuleURL,Target,Description,CreateTime,IsQuickMenu,IsSystem,IsEnable,OrderID) VALUES(	 'M0301009'	,	'M0301'	,	N'重复标题检测'	,	'NewsTitleDetect'	,	3	,	'content/news/news_detect.aspx'	,	'main_body'	,	N'重复标题检测'	,	'2010-01-29 17:22:52.153'	,	0	,	1	,	1	,	9	)
INSERT DT_Modules(ModuleID,ParentID,Name,EName,ModuleDepth,ModuleURL,Target,Description,CreateTime,IsQuickMenu,IsSystem,IsEnable,OrderID) VALUES(	 'M0301010'	,	'M0301'	,	N'内容回收站'	,	'NewsRecycle'	,	3	,	'content/news/newsrecycle.aspx'	,	'main_body'	,	N'内容回收站'	,	'2010-01-29 17:24:17.000'	,	0	,	1	,	1	,	10	)

INSERT DT_Modules(ModuleID,ParentID,Name,EName,ModuleDepth,ModuleURL,Target,Description,CreateTime,IsQuickMenu,IsSystem,IsEnable,OrderID) VALUES(	'M0302'	,	'M03'	,	N'专题管理'	,	'SpecialManage'	,	2	,	'content/news/'	,	'main_body'	,	N'专题管理'	,	'2010-01-29 16:28:30.607'	,	0	,	1	,	1	,	3	)
INSERT DT_Modules(ModuleID,ParentID,Name,EName,ModuleDepth,ModuleURL,Target,Description,CreateTime,IsQuickMenu,IsSystem,IsEnable,OrderID) VALUES(	 'M0302001'	,	'M0302'	,	N'添加专题'	,	'SpecialAdd'	,	3	,	'content/special_add.aspx'	,	'main_body'	,	N'添加专题'	,	'2010-01-29 17:26:57.123'	,	0	,	1	,	1	,	1	)
INSERT DT_Modules(ModuleID,ParentID,Name,EName,ModuleDepth,ModuleURL,Target,Description,CreateTime,IsQuickMenu,IsSystem,IsEnable,OrderID) VALUES(	 'M0302002'	,	'M0302'	,	N'专题列表'	,	'SpecialList'	,	3	,	'content/special_list.aspx'	,	'main_body'	,	N'专题列表'	,	'2010-01-29 17:27:36.840'	,	0	,	1	,	1	,	2	)

INSERT DT_Modules(ModuleID,ParentID,Name,EName,ModuleDepth,ModuleURL,Target,Description,CreateTime,IsQuickMenu,IsSystem,IsEnable,OrderID) VALUES(	'M0303'	,	'M03'	,	N'文档管理'	,	'ContentPublish'	,	2	,	'content/'	,	'main_body'	,	N'文档管理'	,	'2010-02-02 13:57:08.700'	,	0	,	1	,	1	,	2	)
INSERT DT_Modules(ModuleID,ParentID,Name,EName,ModuleDepth,ModuleURL,Target,Description,CreateTime,IsQuickMenu,IsSystem,IsEnable,OrderID) VALUES(	 'M0303003'	,	'M0303'	,	N'文章管理'	,	'ArticleList'	,	3	,	'content/news/article_list.aspx'	,	'main_body'	,	N'文章管理'	,	'2010-01-29 17:12:19.763'	,	0	,	1	,	1	,	3	)
INSERT DT_Modules(ModuleID,ParentID,Name,EName,ModuleDepth,ModuleURL,Target,Description,CreateTime,IsQuickMenu,IsSystem,IsEnable,OrderID) VALUES(	 'M0303004'	,	'M0303'	,	N'软件管理'	,	'SoftList'	,	3	,	'content/news/soft_list.aspx'	,	'main_body'	,	N'软件管理'	,	'2010-01-29 17:12:52.467'	,	0	,	1	,	1	,	4	)
INSERT DT_Modules(ModuleID,ParentID,Name,EName,ModuleDepth,ModuleURL,Target,Description,CreateTime,IsQuickMenu,IsSystem,IsEnable,OrderID) VALUES(	 'M0303005'	,	'M0303'	,	N'图片管理'	,	'PictureList'	,	3	,	'content/news/picture_list.aspx'	,	'main_body'	,	N'图片文档管理'	,	'2010-01-29 17:15:03.683'	,	0	,	1	,	1	,	5	)
INSERT DT_Modules(ModuleID,ParentID,Name,EName,ModuleDepth,ModuleURL,Target,Description,CreateTime,IsQuickMenu,IsSystem,IsEnable,OrderID) VALUES(	 'M0303006'	,	'M0303'	,	N'视频管理'	,	'VedioList'	,	3	,	'content/news/vedio_list.aspx'	,	'main_body'	,	N'视频文档管理'	,	'2010-01-29 17:16:20.560'	,	0	,	1	,	1	,	6	)
INSERT DT_Modules(ModuleID,ParentID,Name,EName,ModuleDepth,ModuleURL,Target,Description,CreateTime,IsQuickMenu,IsSystem,IsEnable,OrderID) VALUES(	 'M0303007'	,	'M0303'	,	N'产品管理'	,	'ProductList'	,	3	,	'content/news/product_list.aspx'	,	'main_body'	,	N'产品管理'	,	'2010-01-29 17:17:16.153'	,	0	,	1	,	1	,	7	)

INSERT DT_Modules(ModuleID,ParentID,Name,EName,ModuleDepth,ModuleURL,Target,Description,CreateTime,IsQuickMenu,IsSystem,IsEnable,OrderID) VALUES('M04'	,	'M0'	,	N'生成管理'	,	'CreatStatic'	,	1	,	'createstatic/createhtml.aspx'	,	'main_body'	,	N'生成管理'	,	'2010-01-17 17:04:08.937'	,	0	,	1	,	1	,	5	)
INSERT DT_Modules(ModuleID,ParentID,Name,EName,ModuleDepth,ModuleURL,Target,Description,CreateTime,IsQuickMenu,IsSystem,IsEnable,OrderID) VALUES(	'M0401'	,	'M04'	,	N'网站生成'	,	'CreateWeb'	,	2	,	'createstatic/'	,	'main_body'	,	N'生成管理'	,	'2009-12-30 21:52:47.217'	,	0	,	1	,	1	,	1	)
INSERT DT_Modules(ModuleID,ParentID,Name,EName,ModuleDepth,ModuleURL,Target,Description,CreateTime,IsQuickMenu,IsSystem,IsEnable,OrderID) VALUES(	 'M0401001'	,	'M0401'	,	N'一键更新'	,	'CreateAll'	,	3	,	'createstatic/createall.aspx'	,	'main_body'	,	N'一键更新'	,	'2009-12-30 21:54:47.653'	,	0	,	1	,	1	,	1	)
INSERT DT_Modules(ModuleID,ParentID,Name,EName,ModuleDepth,ModuleURL,Target,Description,CreateTime,IsQuickMenu,IsSystem,IsEnable,OrderID) VALUES(	 'M0401002'	,	'M0401'	,	N'生成首页'	,	'CreateHomePage'	,	3	,	'createstatic/createhome.aspx'	,	'main_body'	,	N'生成首页'	,	'2009-12-30 21:55:09.717'	,	0	,	1	,	1	,	2	)
INSERT DT_Modules(ModuleID,ParentID,Name,EName,ModuleDepth,ModuleURL,Target,Description,CreateTime,IsQuickMenu,IsSystem,IsEnable,OrderID) VALUES(	 'M0401003'	,	'M0401'	,	N'生成列表页'	,	'CreateList'	,	3	,	'createstatic/createlist.aspx'	,	'main_body'	,	N'生成列表页'	,	'2009-12-30 21:56:44.950'	,	0	,	1	,	1	,	3	)
INSERT DT_Modules(ModuleID,ParentID,Name,EName,ModuleDepth,ModuleURL,Target,Description,CreateTime,IsQuickMenu,IsSystem,IsEnable,OrderID) VALUES(	 'M0401004'	,	'M0401'	,	N'生成内容页'	,	'CreateContent'	,	3	,	'createstatic/createcontent.aspx'	,	'main_body'	,	N'生成内容页'	,	'2009-12-30 21:57:22.107'	,	0	,	1	,	1	,	4	)
INSERT DT_Modules(ModuleID,ParentID,Name,EName,ModuleDepth,ModuleURL,Target,Description,CreateTime,IsQuickMenu,IsSystem,IsEnable,OrderID) VALUES(	 'M0401005'	,	'M0401'	,	N'生成专题页'	,	'CreateSpecial'	,	3	,	'createstatic/createspecial.aspx'	,	'main_body'	,	N'生成专题页'	,	'2009-12-30 21:58:24.653'	,	0	,	1	,	1	,	5	)
INSERT DT_Modules(ModuleID,ParentID,Name,EName,ModuleDepth,ModuleURL,Target,Description,CreateTime,IsQuickMenu,IsSystem,IsEnable,OrderID) VALUES(	'M0402'	,	'M04'	,	N'其他生成'	,	'CreateOther'	,	2	,	'createstatic/'	,	'main_body'	,	N'其他生成'	,	'2009-12-30 21:53:55.403'	,	0	,	1	,	1	,	2	)
INSERT DT_Modules(ModuleID,ParentID,Name,EName,ModuleDepth,ModuleURL,Target,Description,CreateTime,IsQuickMenu,IsSystem,IsEnable,OrderID) VALUES(	 'M0402001'	,	'M0402'	,	N'生成广告JS'	,	'CreateADJS'	,	3	,	'createstatic/createadjs.aspx'	,	'main_body'	,	N'生成广告JS'	,	'2009-12-30 21:59:16.340'	,	0	,	1	,	1	,	1	)
INSERT DT_Modules(ModuleID,ParentID,Name,EName,ModuleDepth,ModuleURL,Target,Description,CreateTime,IsQuickMenu,IsSystem,IsEnable,OrderID) VALUES(	 'M0402002'	,	'M0402'	,	N'生成调用JS'	,	'CreateInvokeJS'	,	3	,	'createstatic/createinvokejs.aspx'	,	'main_body'	,	N'生成调用JS'	,	'2009-12-30 21:59:37.967'	,	0	,	1	,	1	,	2	)
INSERT DT_Modules(ModuleID,ParentID,Name,EName,ModuleDepth,ModuleURL,Target,Description,CreateTime,IsQuickMenu,IsSystem,IsEnable,OrderID) VALUES(	 'M0402003'	,	'M0402'	,	N'生成站点地图'	,	'CreateSitemap'	,	3	,	'createstatic/createsitemap.aspx'	,	'main_body'	,	N'生成站点地图'	,	'2009-12-30 22:01:51.340'	,	0	,	1	,	1	,	3	)
INSERT DT_Modules(ModuleID,ParentID,Name,EName,ModuleDepth,ModuleURL,Target,Description,CreateTime,IsQuickMenu,IsSystem,IsEnable,OrderID) VALUES(	 'M0402004'	,	'M0402'	,	N'生成RSS'	,	'CreateRSS'	,	3	,	'createstatic/createrss.aspx'	,	'main_body'	,	N'生成RSS'	,	'2009-12-30 22:02:36.013'	,	0	,	1	,	1	,	4	)

INSERT DT_Modules(ModuleID,ParentID,Name,EName,ModuleDepth,ModuleURL,Target,Description,CreateTime,IsQuickMenu,IsSystem,IsEnable,OrderID) VALUES('M05'	,	'M0'	,	N'用户管理'	,	'UserManage'	,	1	,	'user/user_list.aspx'	,	'main_body'	,	N'用户管理'	,	'2010-01-17 17:06:44.593'	,	0	,	1	,	1	,	6	)
INSERT DT_Modules(ModuleID,ParentID,Name,EName,ModuleDepth,ModuleURL,Target,Description,CreateTime,IsQuickMenu,IsSystem,IsEnable,OrderID) VALUES(	'M0501'	,	'M05'	,	N'用户管理'	,	'UserManage'	,	2	,	'user/'	,	'main_body'	,	N'用户管理'	,	'2009-12-30 22:04:39.577'	,	0	,	1	,	1	,	1	)
INSERT DT_Modules(ModuleID,ParentID,Name,EName,ModuleDepth,ModuleURL,Target,Description,CreateTime,IsQuickMenu,IsSystem,IsEnable,OrderID) VALUES(	 'M0501001'	,	'M0501'	,	N'添加用户'	,	'UserAdd'	,	3	,	'user/user_add.aspx'	,	'main_body'	,	N'添加用户'	,	'2009-12-30 22:07:57.653'	,	0	,	1	,	1	,	2	)
INSERT DT_Modules(ModuleID,ParentID,Name,EName,ModuleDepth,ModuleURL,Target,Description,CreateTime,IsQuickMenu,IsSystem,IsEnable,OrderID) VALUES(	 'M0501002'	,	'M0501'	,	N'审核用户'	,	'UserVerify'	,	3	,	'user/user_verify.aspx'	,	'main_body'	,	N'审核用户'	,	'2009-12-30 22:08:38.530'	,	0	,	1	,	1	,	3	)
INSERT DT_Modules(ModuleID,ParentID,Name,EName,ModuleDepth,ModuleURL,Target,Description,CreateTime,IsQuickMenu,IsSystem,IsEnable,OrderID) VALUES(	 'M0501003'	,	'M0501'	,	N'管理用户'	,	'UserList'	,	3	,	'user/user_list.aspx'	,	'main_body'	,	N'管理用户'	,	'2009-12-30 22:09:51.780'	,	1	,	1	,	1	,	4	)
INSERT DT_Modules(ModuleID,ParentID,Name,EName,ModuleDepth,ModuleURL,Target,Description,CreateTime,IsQuickMenu,IsSystem,IsEnable,OrderID) VALUES(	 'M0501004'	,	'M0501'	,	N'注册管理'	,	'UserSetting'	,	3	,	'user/user_setting.aspx'	,	'main_body'	,	N'用户注册管理'	,	'2009-12-30 23:15:54.187'	,	0	,	1	,	1	,	4	)
INSERT DT_Modules(ModuleID,ParentID,Name,EName,ModuleDepth,ModuleURL,Target,Description,CreateTime,IsQuickMenu,IsSystem,IsEnable,OrderID) VALUES(	'M0502'	,	'M05'	,	N'用户空间管理'	,	'SpaceManage'	,	2	,	'user/'	,	'main_body'	,	N'用户空间管理'	,	'2009-12-30 22:05:31.780'	,	0	,	1	,	1	,	2	)
INSERT DT_Modules(ModuleID,ParentID,Name,EName,ModuleDepth,ModuleURL,Target,Description,CreateTime,IsQuickMenu,IsSystem,IsEnable,OrderID) VALUES(	 'M0502001'	,	'M0502'	,	N'空间配置'	,	'SpaceSetting'	,	3	,	'user/space_setting.aspx'	,	'main_body'	,	N'空间配置'	,	'2009-12-30 22:12:02.170'	,	0	,	1	,	1	,	1	)
INSERT DT_Modules(ModuleID,ParentID,Name,EName,ModuleDepth,ModuleURL,Target,Description,CreateTime,IsQuickMenu,IsSystem,IsEnable,OrderID) VALUES(	 'M0502002'	,	'M0502'	,	N'管理空间'	,	'SpaceList'	,	3	,	'user/sapce_list.aspx'	,	'main_body'	,	N'管理空间'	,	'2009-12-30 22:12:31.687'	,	0	,	1	,	1	,	2	)
INSERT DT_Modules(ModuleID,ParentID,Name,EName,ModuleDepth,ModuleURL,Target,Description,CreateTime,IsQuickMenu,IsSystem,IsEnable,OrderID) VALUES(	'M0503'	,	'M05'	,	N'权限管理'	,	'PermissionManage'	,	2	,	'user/'	,	'main_body'	,	N'权限管理'	,	'2009-12-30 22:06:41.670'	,	0	,	1	,	1	,	3	)
INSERT DT_Modules(ModuleID,ParentID,Name,EName,ModuleDepth,ModuleURL,Target,Description,CreateTime,IsQuickMenu,IsSystem,IsEnable,OrderID) VALUES(	 'M0503001'	,	'M0503'	,	N'添加权限'	,	'PermissionAdd'	,	3	,	'user/permission_add.aspx'	,	'main_body'	,	N'添加权限'	,	'2009-12-30 22:14:06.420'	,	0	,	1	,	1	,	1	)
INSERT DT_Modules(ModuleID,ParentID,Name,EName,ModuleDepth,ModuleURL,Target,Description,CreateTime,IsQuickMenu,IsSystem,IsEnable,OrderID) VALUES(	 'M0503002'	,	'M0503'	,	N'权限配置'	,	'PermissionList'	,	3	,	'user/permission_list.aspx'	,	'main_body'	,	N'权限配置'	,	'2009-12-30 22:14:57.607'	,	0	,	1	,	1	,	2	)
INSERT DT_Modules(ModuleID,ParentID,Name,EName,ModuleDepth,ModuleURL,Target,Description,CreateTime,IsQuickMenu,IsSystem,IsEnable,OrderID) VALUES(	'M0504'	,	'M05'	,	N'用户组管理'	,	'GroupManage'	,	2	,	'user/'	,	'main_body'	,	N'用户组管理'	,	'2009-12-30 22:07:08.980'	,	0	,	1	,	1	,	4	)
INSERT DT_Modules(ModuleID,ParentID,Name,EName,ModuleDepth,ModuleURL,Target,Description,CreateTime,IsQuickMenu,IsSystem,IsEnable,OrderID) VALUES(	 'M0504001'	,	'M0504'	,	N'添加用户组'	,	'GroupAdd'	,	3	,	'user/group_add.aspx'	,	'main_body'	,	N'添加用户组'	,	'2009-12-30 22:15:33.747'	,	0	,	1	,	1	,	1	)
INSERT DT_Modules(ModuleID,ParentID,Name,EName,ModuleDepth,ModuleURL,Target,Description,CreateTime,IsQuickMenu,IsSystem,IsEnable,OrderID) VALUES(	 'M0504002'	,	'M0504'	,	N'管理用户组'	,	'GroupList'	,	3	,	'user/group_list.aspx'	,	'main_body'	,	N'管理用户组'	,	'2009-12-30 22:17:24.357'	,	0	,	1	,	1	,	2	)

INSERT DT_Modules(ModuleID,ParentID,Name,EName,ModuleDepth,ModuleURL,Target,Description,CreateTime,IsQuickMenu,IsSystem,IsEnable,OrderID) VALUES('M06'	,	'M0'	,	N'模块管理'	,	'ModuleManage'	,	1	,	'module/module_list.aspx'	,	'main_body'	,	N'插件管理'	,	'2010-01-17 17:08:30.857'	,	0	,	1	,	1	,	7	)
INSERT DT_Modules(ModuleID,ParentID,Name,EName,ModuleDepth,ModuleURL,Target,Description,CreateTime,IsQuickMenu,IsSystem,IsEnable,OrderID) VALUES(	'M0601'	,	'M06'	,	N'网站投票'	,	'VoteManage'	,	2	,	'modules/vote/'	,	'main_body'	,	N'网站投票'	,	'2009-12-30 22:19:52.327'	,	0	,	1	,	1	,	1	)
INSERT DT_Modules(ModuleID,ParentID,Name,EName,ModuleDepth,ModuleURL,Target,Description,CreateTime,IsQuickMenu,IsSystem,IsEnable,OrderID) VALUES(	 'M0601001'	,	'M0601'	,	N'添加投票'	,	'VoteAdd'	,	3	,	'modules/vote/vote_add.aspx'	,	'main_body'	,	N'添加投票'	,	'2009-12-30 22:31:21.310'	,	0	,	1	,	1	,	1	)
INSERT DT_Modules(ModuleID,ParentID,Name,EName,ModuleDepth,ModuleURL,Target,Description,CreateTime,IsQuickMenu,IsSystem,IsEnable,OrderID) VALUES(	 'M0601002'	,	'M0601'	,	N'管理投票'	,	'VoteList'	,	3	,	'modules/vote/vote_list.aspx'	,	'main_body'	,	N'管理投票'	,	'2009-12-30 22:32:47.140'	,	0	,	1	,	1	,	2	)
INSERT DT_Modules(ModuleID,ParentID,Name,EName,ModuleDepth,ModuleURL,Target,Description,CreateTime,IsQuickMenu,IsSystem,IsEnable,OrderID) VALUES(	 'M0602001'	,	'M0602'	,	N'添加问卷'	,	'QuestionnaireAdd'	,	3	,	'modules/questionnaire/questionnaire_add.aspx'	,	'main_body'	,	N'添加问卷'	,	'2009-12-30 22:33:21.983'	,	0	,	1	,	1	,	1	)
INSERT DT_Modules(ModuleID,ParentID,Name,EName,ModuleDepth,ModuleURL,Target,Description,CreateTime,IsQuickMenu,IsSystem,IsEnable,OrderID) VALUES(	'M0602'	,	'M06'	,	N'问卷调查'	,	'QuestionnaireManage'	,	2	,	'modules/questionnaire/'	,	'main_body'	,	N'问卷调查'	,	'2009-12-30 22:22:00.937'	,	0	,	1	,	1	,	2	)
INSERT DT_Modules(ModuleID,ParentID,Name,EName,ModuleDepth,ModuleURL,Target,Description,CreateTime,IsQuickMenu,IsSystem,IsEnable,OrderID) VALUES(	 'M0602002'	,	'M0602'	,	N'管理问卷'	,	'QuestionnaireList'	,	3	,	'modules/questionnaire/questionnaire_list_aspx'	,	'main_body'	,	N'管理问卷'	,	'2009-12-30 22:34:08.717'	,	0	,	1	,	1	,	2	)
INSERT DT_Modules(ModuleID,ParentID,Name,EName,ModuleDepth,ModuleURL,Target,Description,CreateTime,IsQuickMenu,IsSystem,IsEnable,OrderID) VALUES(	 'M0602003'	,	'M0602'	,	N'问卷报表'	,	'QuestionnaireResult'	,	3	,	'modules/questionnaire/questionnaire_result.aspx'	,	'main_body'	,	N'问卷报表'	,	'2009-12-30 22:34:43.340'	,	0	,	1	,	1	,	3	)
INSERT DT_Modules(ModuleID,ParentID,Name,EName,ModuleDepth,ModuleURL,Target,Description,CreateTime,IsQuickMenu,IsSystem,IsEnable,OrderID) VALUES(	'M0603'	,	'M06'	,	N'广告管理'	,	'ADManage'	,	2	,	'modules/ad/'	,	'main_body'	,	N'广告管理'	,	'2009-12-30 22:27:11.750'	,	0	,	1	,	1	,	3	)
INSERT DT_Modules(ModuleID,ParentID,Name,EName,ModuleDepth,ModuleURL,Target,Description,CreateTime,IsQuickMenu,IsSystem,IsEnable,OrderID) VALUES(	 'M0603001'	,	'M0603'	,	N'添加广告'	,	'ADAdd'	,	3	,	'modules/ad/ad_add.aspx'	,	'main_body'	,	N'添加广告'	,	'2009-12-30 22:38:00.153'	,	0	,	1	,	1	,	1	)
INSERT DT_Modules(ModuleID,ParentID,Name,EName,ModuleDepth,ModuleURL,Target,Description,CreateTime,IsQuickMenu,IsSystem,IsEnable,OrderID) VALUES(	 'M0603002'	,	'M0603'	,	N'管理广告'	,	'ADList'	,	3	,	'modules/ad/ad_list.aspx'	,	'main_body'	,	N'管理广告'	,	'2009-12-30 22:42:08.873'	,	0	,	1	,	1	,	2	)
INSERT DT_Modules(ModuleID,ParentID,Name,EName,ModuleDepth,ModuleURL,Target,Description,CreateTime,IsQuickMenu,IsSystem,IsEnable,OrderID) VALUES(	'M0604'	,	'M06'	,	N'友情连接'	,	'FlinkManage'	,	2	,	'modules/flink/'	,	'main_body'	,	N'友情连接'	,	'2009-12-30 22:27:56.357'	,	1	,	1	,	1	,	4	)
INSERT DT_Modules(ModuleID,ParentID,Name,EName,ModuleDepth,ModuleURL,Target,Description,CreateTime,IsQuickMenu,IsSystem,IsEnable,OrderID) VALUES(	 'M0604001'	,	'M0604'	,	N'添加链接'	,	'FlinkAdd'	,	3	,	'modules/flink/flink_add.aspx'	,	'main_body'	,	N'添加链接'	,	'2009-12-30 22:43:25.717'	,	0	,	1	,	1	,	1	)
INSERT DT_Modules(ModuleID,ParentID,Name,EName,ModuleDepth,ModuleURL,Target,Description,CreateTime,IsQuickMenu,IsSystem,IsEnable,OrderID) VALUES(	 'M0604002'	,	'M0604'	,	N'管理链接'	,	'FlinkList'	,	3	,	'modules/flink/flink_list.aspx'	,	'main_body'	,	N'管理链接'	,	'2009-12-30 22:44:04.967'	,	0	,	1	,	1	,	2	)
INSERT DT_Modules(ModuleID,ParentID,Name,EName,ModuleDepth,ModuleURL,Target,Description,CreateTime,IsQuickMenu,IsSystem,IsEnable,OrderID) VALUES(	 'M0604003'	,	'M0604'	,	N'链接检测'	,	'FlinkVerify'	,	3	,	'modules/flink/flink_verify.aspx'	,	'main_body'	,	N'链接检测'	,	'2009-12-30 22:45:14.250'	,	0	,	1	,	1	,	3	)
INSERT DT_Modules(ModuleID,ParentID,Name,EName,ModuleDepth,ModuleURL,Target,Description,CreateTime,IsQuickMenu,IsSystem,IsEnable,OrderID) VALUES(	'M0605'	,	'M06'	,	N'问答模块'	,	'AskManage'	,	2	,	'modules/ask/'	,	'main_body'	,	N'问答模块'	,	'2009-12-30 22:29:50.543'	,	0	,	1	,	1	,	5	)
INSERT DT_Modules(ModuleID,ParentID,Name,EName,ModuleDepth,ModuleURL,Target,Description,CreateTime,IsQuickMenu,IsSystem,IsEnable,OrderID) VALUES(	 'M0605001'	,	'M0605'	,	N'新建问答'	,	'AskAdd'	,	3	,	'modules/ask/ask_add.aspx'	,	'main_body'	,	N'新建问答'	,	'2009-12-30 22:45:56.467'	,	0	,	1	,	1	,	1	)
INSERT DT_Modules(ModuleID,ParentID,Name,EName,ModuleDepth,ModuleURL,Target,Description,CreateTime,IsQuickMenu,IsSystem,IsEnable,OrderID) VALUES(	 'M0605002'	,	'M0605'	,	N'管理问答'	,	'AskList'	,	3	,	'modules/ask/ask_list.aspx'	,	'main_body'	,	N'管理问答'	,	'2009-12-30 22:47:20.687'	,	0	,	1	,	1	,	2	)
INSERT DT_Modules(ModuleID,ParentID,Name,EName,ModuleDepth,ModuleURL,Target,Description,CreateTime,IsQuickMenu,IsSystem,IsEnable,OrderID) VALUES(	'M0606'	,	'M06'	,	N'访客留言'	,	'LeavewordManage'	,	2	,	'modules/leaveword/'	,	'main_body'	,	N'访客留言'	,	'2009-12-30 22:49:17.263'	,	0	,	1	,	1	,	1	)
INSERT DT_Modules(ModuleID,ParentID,Name,EName,ModuleDepth,ModuleURL,Target,Description,CreateTime,IsQuickMenu,IsSystem,IsEnable,OrderID) VALUES(	 'M0606001'	,	'M0606'	,	N'管理留言'	,	'LeavewordList'	,	3	,	'modules/leaveword/leaveword_list.aspx'	,	'main_body'	,	N'添加留言'	,	'2009-12-30 22:58:12.403'	,	1	,	1	,	1	,	1	)

INSERT DT_Modules(ModuleID,ParentID,Name,EName,ModuleDepth,ModuleURL,Target,Description,CreateTime,IsQuickMenu,IsSystem,IsEnable,OrderID) VALUES('M07'	,	'M0'	,	N'系统管理'	,	'SystemManage'	,	1	,	'admin/system/baseconfig.aspx'	,	'main_body'	,	N'系统管理'	,	'2010-01-29 13:37:23.280'	,	0	,	1	,	1	,	8	)
INSERT DT_Modules(ModuleID,ParentID,Name,EName,ModuleDepth,ModuleURL,Target,Description,CreateTime,IsQuickMenu,IsSystem,IsEnable,OrderID) VALUES(	'M0701'	,	'M07'	,	N'系统设置'	,	'SystemSetting'	,	2	,	'system/'	,	'main_body'	,	N'系统设置'	,	'2009-12-30 23:00:51.437'	,	0	,	1	,	1	,	1	)
INSERT DT_Modules(ModuleID,ParentID,Name,EName,ModuleDepth,ModuleURL,Target,Description,CreateTime,IsQuickMenu,IsSystem,IsEnable,OrderID) VALUES(	 'M0701001'	,	'M0701'	,	N'基本设置'	,	'BaseSetting'	,	3	,	'system/base_setting.aspx'	,	'main_body'	,	N'基本信息设置'	,	'2009-12-30 23:06:43.420'	,	1	,	1	,	1	,	1	)
INSERT DT_Modules(ModuleID,ParentID,Name,EName,ModuleDepth,ModuleURL,Target,Description,CreateTime,IsQuickMenu,IsSystem,IsEnable,OrderID) VALUES(	 'M0701002'	,	'M0701'	,	N'访问控制'	,	'VisitSetting'	,	3	,	'system/visit_setting.aspx'	,	'main_body'	,	N'访问设置'	,	'2009-12-30 23:14:33.840'	,	0	,	1	,	1	,	3	)
INSERT DT_Modules(ModuleID,ParentID,Name,EName,ModuleDepth,ModuleURL,Target,Description,CreateTime,IsQuickMenu,IsSystem,IsEnable,OrderID) VALUES(	 'M0701003'	,	'M0701'	,	N'安全控制'	,	'SafeSetting'	,	3	,	'system/safe_setting.aspx'	,	'main_body'	,	N'安全控制'	,	'2009-12-30 23:20:35.983'	,	0	,	1	,	1	,	5	)
INSERT DT_Modules(ModuleID,ParentID,Name,EName,ModuleDepth,ModuleURL,Target,Description,CreateTime,IsQuickMenu,IsSystem,IsEnable,OrderID) VALUES(	 'M0701004'	,	'M0701'	,	N'附件设置'	,	'AttchmentSetting'	,	3	,	'system/attchment_setting.aspx'	,	'main_body'	,	N'附件设置'	,	'2009-12-30 23:22:20.827'	,	0	,	1	,	1	,	6	)
INSERT DT_Modules(ModuleID,ParentID,Name,EName,ModuleDepth,ModuleURL,Target,Description,CreateTime,IsQuickMenu,IsSystem,IsEnable,OrderID) VALUES(	 'M0701005'	,	'M0701'	,	N'邮件设置'	,	'SMTPSetting'	,	3	,	'system/smtp_setting.aspx'	,	'main_body'	,	N'邮件设置'	,	'2009-12-30 23:24:57.983'	,	0	,	1	,	1	,	7	)
INSERT DT_Modules(ModuleID,ParentID,Name,EName,ModuleDepth,ModuleURL,Target,Description,CreateTime,IsQuickMenu,IsSystem,IsEnable,OrderID) VALUES(	 'M0701006'	,	'M0701'	,	N'高级设置'	,	'AdvancedSetting'	,	3	,	'system/advanced_setting.aspx'	,	'main_body'	,	N'高级设置'	,	'2009-12-30 23:26:02.357'	,	0	,	1	,	1	,	2	)
INSERT DT_Modules(ModuleID,ParentID,Name,EName,ModuleDepth,ModuleURL,Target,Description,CreateTime,IsQuickMenu,IsSystem,IsEnable,OrderID) VALUES(	'M0703'	,	'M07'	,	N'数据库管理'	,	'DatabaseManage'	,	2	,	'system/'	,	'main_body'	,	N'数据库管理'	,	'2009-12-30 23:04:10.153'	,	0	,	1	,	1	,	3	)
INSERT DT_Modules(ModuleID,ParentID,Name,EName,ModuleDepth,ModuleURL,Target,Description,CreateTime,IsQuickMenu,IsSystem,IsEnable,OrderID) VALUES(	 'M0703001'	,	'M0703'	,	N'运行SQL语句'	,	'RunSQL'	,	3	,	'system/database_runsql.aspx'	,	'main_body'	,	N'运行指定SQL语句'	,	'2009-12-30 23:29:35.843'	,	0	,	1	,	1	,	1	)
INSERT DT_Modules(ModuleID,ParentID,Name,EName,ModuleDepth,ModuleURL,Target,Description,CreateTime,IsQuickMenu,IsSystem,IsEnable,OrderID) VALUES(	 'M0703002'	,	'M0703'	,	N'数据库备份'	,	'DatabaseBackup'	,	3	,	'system/database_backup.aspx'	,	'main_body'	,	N'数据库备份'	,	'2009-12-30 23:30:18.263'	,	0	,	1	,	1	,	2	)
INSERT DT_Modules(ModuleID,ParentID,Name,EName,ModuleDepth,ModuleURL,Target,Description,CreateTime,IsQuickMenu,IsSystem,IsEnable,OrderID) VALUES(	 'M0703003'	,	'M0703'	,	N'数据库恢复'	,	'DatabaseRevert'	,	3	,	'system/database_revert.aspx'	,	'main_body'	,	N'数据库恢复'	,	'2009-12-30 23:31:49.340'	,	0	,	1	,	1	,	3	)
INSERT DT_Modules(ModuleID,ParentID,Name,EName,ModuleDepth,ModuleURL,Target,Description,CreateTime,IsQuickMenu,IsSystem,IsEnable,OrderID) VALUES(	 'M0703004'	,	'M0703'	,	N'收缩数据库'	,	'DatabaseCompress'	,	3	,	'system/database_compress.aspx'	,	'main_body'	,	N'数据库收缩'	,	'2009-12-30 23:33:37.187'	,	0	,	1	,	1	,	4	)
INSERT DT_Modules(ModuleID,ParentID,Name,EName,ModuleDepth,ModuleURL,Target,Description,CreateTime,IsQuickMenu,IsSystem,IsEnable,OrderID) VALUES(	'M0704'	,	'M07'	,	N'日志管理'	,	'LogManage'	,	2	,	'system/'	,	'main_body'	,	N'日志管理'	,	'2009-12-30 23:05:21.593'	,	0	,	1	,	1	,	4	)
INSERT DT_Modules(ModuleID,ParentID,Name,EName,ModuleDepth,ModuleURL,Target,Description,CreateTime,IsQuickMenu,IsSystem,IsEnable,OrderID) VALUES(	 'M0704001'	,	'M0704'	,	N'后台操作日志'	,	'OperateLog'	,	3	,	'system/log_operate.aspx'	,	'main_body'	,	N'后台操作日志'	,	'2009-12-30 23:36:04.590'	,	0	,	1	,	1	,	1	)
INSERT DT_Modules(ModuleID,ParentID,Name,EName,ModuleDepth,ModuleURL,Target,Description,CreateTime,IsQuickMenu,IsSystem,IsEnable,OrderID) VALUES(	 'M0704002'	,	'M0704'	,	N'错误日志'	,	'ErrorLog'	,	3	,	'system/log_error.aspx'	,	'main_body'	,	N'错误日志'	,	'2009-12-30 23:36:39.153'	,	0	,	1	,	1	,	2	)

INSERT DT_Modules(ModuleID,ParentID,Name,EName,ModuleDepth,ModuleURL,Target,Description,CreateTime,IsQuickMenu,IsSystem,IsEnable,OrderID) VALUES(	'M08'	,	'M0'	,	N'数据维护'	,	'DataManage'	,	1	,	'data/tag_list.aspx'	,	'main_body'	,	N'数据维护'	,	'2008-01-02 22:27:48.763'	,	0	,	1	,	1	,	4	)
INSERT DT_Modules(ModuleID,ParentID,Name,EName,ModuleDepth,ModuleURL,Target,Description,CreateTime,IsQuickMenu,IsSystem,IsEnable,OrderID) VALUES(	'M0801'	,	'M08'	,	N'信息维护'	,	'DataInfo'	,	2	,	'data/'	,	'main_body'	,	N'信息维护'	,	'2008-01-02 22:30:50.357'	,	0	,	1	,	1	,	1	)
INSERT DT_Modules(ModuleID,ParentID,Name,EName,ModuleDepth,ModuleURL,Target,Description,CreateTime,IsQuickMenu,IsSystem,IsEnable,OrderID) VALUES(	 'M0801001'	,	'M0801'	,	N'文档评论管理'	,	'CommentList'	,	3	,	'data/commen_list.aspx'	,	'main_body'	,	N'文档评论管理'	,	'2010-01-29 16:29:41.340'	,	0	,	1	,	1	,	1	)
INSERT DT_Modules(ModuleID,ParentID,Name,EName,ModuleDepth,ModuleURL,Target,Description,CreateTime,IsQuickMenu,IsSystem,IsEnable,OrderID) VALUES(	 'M0801002'	,	'M0801'	,	N'搜索关键字管理'	,	'SearchwordtList'	,	3	,	'data/searchword_list.aspx'	,	'main_body'	,	N'搜索关键字管理'	,	'2010-02-01 14:26:15.517'	,	0	,	1	,	1	,	2	)
INSERT DT_Modules(ModuleID,ParentID,Name,EName,ModuleDepth,ModuleURL,Target,Description,CreateTime,IsQuickMenu,IsSystem,IsEnable,OrderID) VALUES(	 'M0801003'	,	'M0801'	,	N'文档信息统计'	,	'ArchivesInfo'	,	3	,	'data/archives_info.aspx'	,	'main_body'	,	N'评论管理'	,	'2010-02-01 14:27:49.973'	,	0	,	1	,	1	,	3	)
INSERT DT_Modules(ModuleID,ParentID,Name,EName,ModuleDepth,ModuleURL,Target,Description,CreateTime,IsQuickMenu,IsSystem,IsEnable,OrderID) VALUES(	 'M0801004'	,	'M0801'	,	N'附件数据管理'	,	'AttachmentList'	,	3	,	'content/attachment/attachment_list.aspx'	,	'main_body'	,	N'附件数据管理'	,	'2010-01-29 17:31:52.750'	,	0	,	1	,	1	,	4	)
INSERT DT_Modules(ModuleID,ParentID,Name,EName,ModuleDepth,ModuleURL,Target,Description,CreateTime,IsQuickMenu,IsSystem,IsEnable,OrderID) VALUES(	'M0802'	,	'M08'	,	N'基础数据维护'	,	'DataBasic'	,	2	,	'data/'	,	'main_body'	,	N'基础数据维护'	,	'2008-01-02 22:35:55.840'	,	0	,	1	,	1	,	2	)
INSERT DT_Modules(ModuleID,ParentID,Name,EName,ModuleDepth,ModuleURL,Target,Description,CreateTime,IsQuickMenu,IsSystem,IsEnable,OrderID) VALUES(	 'M0802001'	,	'M0802'	,	N'TAG关键字维护'	,	'TAGManage'	,	3	,	'data/tag_list.aspx'	,	'main_body'	,	N'TAG关键字维护'	,	'2010-01-29 16:30:49.000'	,	0	,	1	,	1	,	4	)
INSERT DT_Modules(ModuleID,ParentID,Name,EName,ModuleDepth,ModuleURL,Target,Description,CreateTime,IsQuickMenu,IsSystem,IsEnable,OrderID) VALUES(	 'M0802002'	,	'M0802'	,	N'文档关键字维护'	,	'KeywordManage'	,	3	,	'data/keyword_list.aspx'	,	'main_body'	,	N'文档关键字维护'	,	'2010-01-29 16:34:35.670'	,	0	,	1	,	1	,	5	)
INSERT DT_Modules(ModuleID,ParentID,Name,EName,ModuleDepth,ModuleURL,Target,Description,CreateTime,IsQuickMenu,IsSystem,IsEnable,OrderID) VALUES(	 'M0802003'	,	'M0802'	,	N'来源管理'	,	'SourceList'	,	3	,	'data/source_list.aspx'	,	'main_body'	,	N'来源管理'	,	'2008-01-02 22:44:28.263'	,	0	,	1	,	1	,	1	)
INSERT DT_Modules(ModuleID,ParentID,Name,EName,ModuleDepth,ModuleURL,Target,Description,CreateTime,IsQuickMenu,IsSystem,IsEnable,OrderID) VALUES(	 'M0802004'	,	'M0802'	,	N'作者管理'	,	'AuthorList'	,	3	,	'data/author_list.aspx'	,	'main_body'	,	N'作者管理'	,	'2008-01-02 22:45:24.967'	,	0	,	1	,	1	,	2	)
INSERT DT_Modules(ModuleID,ParentID,Name,EName,ModuleDepth,ModuleURL,Target,Description,CreateTime,IsQuickMenu,IsSystem,IsEnable,OrderID) VALUES(	 'M0802005'	,	'M0802'	,	N'自定义文档属性'	,	'CustomAttr'	,	3	,	'data/customattr.aspx'	,	'main_body'	,	N'自定义文档属性'	,	'2008-01-02 22:50:13.200'	,	0	,	1	,	1	,	3	)
INSERT DT_Modules(ModuleID,ParentID,Name,EName,ModuleDepth,ModuleURL,Target,Description,CreateTime,IsQuickMenu,IsSystem,IsEnable,OrderID) VALUES(	'M0803'	,	'M08'	,	N'数据字典维护'	,	'DataDicManage'	,	2	,	'data/'	,	'main_body'	,	N'基础数据'	,	'2009-12-30 23:02:24.793'	,	0	,	1	,	1	,	3	)
INSERT DT_Modules(ModuleID,ParentID,Name,EName,ModuleDepth,ModuleURL,Target,Description,CreateTime,IsQuickMenu,IsSystem,IsEnable,OrderID) VALUES(	 'M0803'	,	'M0803'	,	N'数据字典维护'	,	'DataBatch'	,	3	,	'data/'	,	'main_body'	,	N'批量数据维护'	,	'2008-01-02 23:24:30.653'	,	0	,	1	,	1	,	3	)
SET IDENTITY_INSERT DT_Modules OFF