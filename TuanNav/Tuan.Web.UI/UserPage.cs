﻿using System;
using System.Collections.Generic;
using System.Web;
using Tuan.Common;

namespace Tuan.Web.UI
{
    public class UserPage : BasePage
    {
        protected override void OnInit(EventArgs e)
        {
            base.OnInit(e);

            //检查是否登录
            ValidateUser();
        }

        #region 用户后台登陆验证
        /// <summary>
        /// 用户登陆验证
        /// </summary>
        public void ValidateUser()
        {
            if (Utils.GetQueryString("op") != "")  //Ajax请求
            {
                Ajax.Message(-1000, "您未登录或登录超时,请重新登录后再执行此操作！");
            }
            else
            {
                Response.Write("<html><head><script src=\"/js/dialog.js\" type=\"text/javascript\"></script><script type=\"text/javascript\">$topWindow().location='/error.aspx?url=" +
                    Utils.UrlEncode(Request.Url.PathAndQuery) + "&error=-1000';</script></head><bory></body>");
                Response.End();
            }
        }
        #endregion
    }
}