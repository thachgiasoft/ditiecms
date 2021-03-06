﻿//------------------------------------------------------------------------------
// 创建标识: Copyright (C) 2010 91aspx.com 版权所有
// 创建描述: DTCMS V1.0 创建于 2010-04-16 20:55:41
// 功能描述: 
// 修改标识:
// 修改描述: LinPanxing 修改于 2010-05-13 22:10:43
//------------------------------------------------------------------------------
using System;
using System.Data;
using System.Collections;
using System.Collections.Generic;
using DTCMS.Entity.TemplateEngine;

namespace DTCMS.IDAL.TemplateEngine
{
    /// <summary>
    /// 接口层 IDAL_ArcList
    /// </summary>
    public interface IDAL_ArcList : IDAL_Base
    {
        /// <summary>
        /// 获取文章列表
        /// </summary>
        List<Archive_List> GetArcList(int firstRecort, int lastRecort, string channelType, string strWhere, string strOrder);

        /// <summary>
        /// 获取栏目列表
        /// </summary>
        List<Channel> GetChannelList(int row, string strWhere);

        /// <summary>
        /// 获取分页列表
        /// </summary>
        List<Archive> GetPageList(int channelID, string channelType, int pageSize, int pageIndex);

        /// <summary>
        /// 获取指定ID文章实体
        /// </summary>
        List<Archive> GetArticleInfo(int ID);

        ///<summary>
        /// 获取指定栏目下的文档总数（不包含未审核和回收站中的文档）
        /// </summary>
        int GetArcCount(int channelID, string channelType);

        /// <summary>
        /// 获取指定栏目的类型
        /// </summary>
        int GetChannelType(int channelID);
    }
}