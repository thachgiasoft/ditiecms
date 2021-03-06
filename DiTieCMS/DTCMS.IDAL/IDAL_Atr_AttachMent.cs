﻿using System;
using System.Collections.Generic;
using System.Text;
using System.Data;
using DTCMS.Entity;

namespace DTCMS.IDAL
{
    public interface IDAL_Atr_AttachMent
    {
         /// <summary>
        /// 增加一条数据
        /// </summary>
        int Add(Atr_AttachMent model);

         /// <summary>
        /// 更新附件数据
        /// </summary>
        int Update(Atr_AttachMent model);

        /// <summary>
        /// 删除附件数据
        /// </summary>
        int Delete(string AttachMentID);

         /// <summary>
        /// 获取一个附件
        /// </summary>
        /// <param name="AttachMentID">附件ID</param>
        Atr_AttachMent GetModel(int AttachMentID);

        #region 基方法
        /// <summary>
        /// -- 字符串缓存实现的通用分页存储过程(转自邹建)  
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
        DataTable GetDataTable(string tbname, string FieldKey, int PageCurrent, int PageSize
            , string FieldShow, string FieldOrder, string Where, out int PageCount);
        #endregion
    }
}
