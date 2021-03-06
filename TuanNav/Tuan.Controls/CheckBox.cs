﻿//------------------------------------------------------------------------------
// 创建标识: Copyright (C) 2010 91aspx.com 版权所有
// 创建描述: DTCMS V1.0 创建于 2010-03-01 17:47:40
// 功能描述: DataGrid Control
// 修改标识:
// 修改描述: 
//------------------------------------------------------------------------------
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Tuan.Controls
{
    [ToolboxItem(false)]
    [TypeConverter(typeof(ExpandableObjectConverter))]
    public class CheckBox : ItemBase
    {
        private bool _visible;
        private string _width;

        /// <summary>
        /// 是否显示选择框
        /// </summary>
        [NotifyParentProperty(true)]
        [Description("是否显示选择框")]
        public bool Visible
        {
            get { return _visible; }
            set { _visible = value; }
        }

        /// <summary>
        /// 列宽度
        /// </summary>
        [NotifyParentProperty(true)]
        [Description("列宽度")]
        public new string Width
        {
            get { return _width; }
            set { _width = value; }
        }
    }
}
