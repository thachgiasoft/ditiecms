﻿//------------------------------------------------------------------------------
// 创建标识: Copyright (C) 2010 91aspx.com 版权所有
// 创建描述: DTCMS V1.0 创建于 2010-01-10 23:46:26
// 功能描述: 
// 修改标识:
// 修改描述: 
//------------------------------------------------------------------------------
using System;
using System.Collections.Generic;
using System.Text;
using System.Data;

namespace DTCMS.IDAL
{
    public interface IDAL_Base
    {
        /// <summary>
        /// 字符串缓存实现的通用分页存储过程  
        /// </summary>
        /// <param name="tbname">要分页显示的表名，可以使用表联合  </param>
        /// <param name="FieldKey">用于定位记录的主键(惟一键)字段,只能是单个字段  </param>
        /// <param name="PageCurrent">要显示的页码  </param>
        /// <param name="PageSize">每页的大小(记录数)  </param>
        /// <param name="FieldShow">以逗号分隔的要显示的字段列表,如果不指定,则显示所有字段  </param>
        /// <param name="FieldOrder">用于指定排序顺序  </param>
        /// <param name="Where">查询条件  </param>
        /// <param name="PageCount">总页数  </param>
        /// <returns></returns>
        DataTable GetPageList(string tbname, string fieldKey, int pageCurrent, int pageSize, string fieldShow, string fieldOrder, string where, out int pageCount);
    }
}
