﻿using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using DTCMS.BLL;
using DTCMS.Entity;
using DTCMS.Common;
using DTCMS.Controls.DropDownTree;

namespace DTCMS.Web.admin
{
    public partial class News_add : AdminPage
    {
        private Arc_ArticleBLL articleBll = new Arc_ArticleBLL();
        private Arc_ClassBLL bllClass = new Arc_ClassBLL();
        SectionConfigBLL bllSelectionConfig = new SectionConfigBLL();

        private int NewID = -1;  //文章ID

        protected void Page_Load(object sender, EventArgs e)
        {
            NewID = Common.Utils.GetQueryInt("Id");

            if (!IsPostBack)
            {
                InitPage();

                if (NewID > 0)
                {
                    SetPageData();  //更新数据赋值
                }
            }
        }

        /// <summary>
        /// 初始化页面
        /// </summary>
        private void InitPage()
        {
            InitClass();
            InitReadaccess();
            InitTitleFlag();
        }

        protected void Btn_Submit_Click(object sender, EventArgs e)
        {
            int updateStart = 0;  //更新是否成功
            Arc_Article modelArticle = GetArticleModel();

            #region 数据验证

            if (modelArticle.ClassID <= 0 ||  !bllClass.Exists(modelArticle.ClassID, "", ""))
            {//栏目不存在
                Message.Dialog("操作失败！文章所选栏目不存在。", "-1", MessageIcon.Error, 0);
                return;
            }
            if (modelArticle.Title.Trim() == "")
            {//文章标题为空
                Message.Dialog("操作失败！文章标题不能为空。", "-1", MessageIcon.Error, 0);
                return;
            }

            if (articleBll.ExistsArticleName(NewID, modelArticle.Title))
            {//文章已经存在
                Message.Dialog("操作失败！该文章已经存在。", "-1", MessageIcon.Error, 0);
                return;
            }
            #endregion 数据验证

            if (NewID > 0)
            {               

                try
                {
                    updateStart = articleBll.Update(modelArticle);
                }
                catch
                {
                    Message.Dialog("更新文章失败！更新文章出现未知错误。", "-1", MessageIcon.Success, 0);
                    return;
                }

                if (updateStart > 0)
                {
                    Message.Dialog("更新文章成功！", "News_list.aspx", MessageIcon.Success, 0);
                    return;
                }
                else
                {
                    Message.Dialog("更新文章失败！请检查数据是否完整。", "-1", MessageIcon.Success, 0);
                    return;
                }

            }
            else
            {
                if (modelArticle.IsRedirect == 1)
                {
                    //是否是跳转地址
                    if (txt_Redirect.Value.Trim().Length == 0)
                    {
                        Message.Dialog("操作失败！跳转地址不能为空。", "-1", MessageIcon.Error, 0);
                        return;
                    }

                    modelArticle.FilePath = txt_Redirect.Value.Trim();
                    modelArticle.AContent = "";
                }

                try
                {
                    updateStart = articleBll.Add(modelArticle);
                }
                catch
                {
                    Message.Dialog("添加文章失败！添加文章出现未知错误。", "-1", MessageIcon.Success, 0);
                    return;
                }

                if (updateStart > 0)
                {
                    Message.Dialog("添加文章成功！", "News_list.aspx", MessageIcon.Success, 0);
                    return;
                }
                else
                {
                    Message.Dialog("添加文章失败！请检查数据是否完整。", "-1", MessageIcon.Success, 0);
                    return;
                }
            }
        }

        /// <summary>
        ///  更新，初始化页面数据
        /// </summary>
        /// <param name="NewID">文章ID</param>
        private void SetPageData()
        {
            if (NewID <= 0)
            {
                return;
            }

            Arc_Article model = articleBll.GetModel(NewID);

            if (model != null)
            {
                slt_TitleFlag.Value = model.TitleFlag.ToString();
                txt_Title.Value = model.Title;
                hide_Attribute.Value = model.Attribute.ToString();
                hide_TitleStyle.Value = model.TitleStyle;
                txt_Tags.Value = model.Tags;
                slt_ClassName.SelectedIndex = slt_ClassName.Items.IndexOf(slt_ClassName.Items.FindByValue(model.ClassID.ToString()));
                txt_Source.Value = model.Source;
                txt_Author.Value = model.Author;
                txt_Editor.Value = model.Editor;
                txt_ImageUrl.Value = model.ImgUrl;
                txt_Content.Value = model.AContent;
                txt_ShortTitle.Value = model.ShortTitle.Trim();
                txt_ViceClassID.Value = model.ViceClassID.ToString();
                txt_OrderID.Value = model.OrderID.ToString();
                txt_Templet.Value = model.Templet;
                txt_FilePath.Value = model.FilePath;
                txt_PubDate.Value = model.PubDate.ToString();
                slt_Readaccess.Value = model.Readaccess.ToString();
                txt_Money.Value = model.Money.ToString();
                txt_SimilarArticle.Value = model.SimilarArticle;
                txt_Keywords.Value = model.Keywords.Trim();
                txt_Description.Value = model.Description;
                //是否生成静态页
                chk_IsHtml.Checked = (model.IsHtml == 1);
                //是否允许评论
                chk_IsComment.Checked = (model.IsComment == 1);
                chk_IsVerify.Checked = (model.IsVerify == 1); //是否审核             
            }
        }

        /// <summary>
        /// 获取文章实体，添加，修改
        /// </summary>
        /// <returns>文章实体</returns>
        private Arc_Article GetArticleModel()
        {
            Arc_Article model = new Arc_Article();

            model.ID = NewID;
            model.ClassID = TypeConvert.ToInt32(slt_ClassName.Value.Trim());
            model.ViceClassID = TypeConvert.ToInt32(txt_ViceClassID.Value.Trim(), -1);
            model.Title = txt_Title.Value.Trim();
            model.ShortTitle = txt_ShortTitle.Value.Trim();
            model.TitleStyle = hide_TitleStyle.Value.Trim();
            model.TitleFlag = TypeConvert.ToByte(slt_TitleFlag.Value);
            model.Tags = txt_Tags.Value.Trim();
            model.ImgUrl = txt_ImageUrl.Value.Trim();
            model.Author = txt_Author.Value.Trim();
            model.Editor = txt_Editor.Value.Trim();
            model.PubLisher = "";   //当前用户
            model.Source = txt_Source.Value.Trim();
            model.Templet = txt_Templet.Value.Trim();
            model.Keywords = txt_Keywords.Value.Trim();
            model.Description = txt_Description.Value.Trim();
            model.AContent = txt_Content.Value.Trim();
            model.Click = 0;
            model.Good = 0;
            model.Bad = 0;
            model.Readaccess = TypeConvert.ToInt16(slt_Readaccess.Value.Trim());
            model.Money = TypeConvert.ToInt16(txt_Money.Value.Trim());
            model.Attribute = TypeConvert.ToInt16(hide_Attribute.Value.Trim());  //文章属性
            model.IsComment = (byte)(chk_IsComment.Checked ? 1 : 0);
            model.IsVerify = (byte)(chk_IsVerify.Checked ? 1 : 0);
            model.IsRecycle = (byte)0;
            model.IsRedirect = (byte)(chk_JumpUrl.Checked ? 1 : 0);
            model.IsHtml = (byte)(chk_IsHtml.Checked ? 1 : 0);
            model.IsPaging = (byte)(rdo_Autopage.Checked ? 1 : 0);
            model.FilePath = txt_FilePath.Value.Trim();
            model.SimilarArticle = txt_SimilarArticle.Value.Trim();
            model.AddDate = Convert.ToDateTime(DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss"));
            model.PubDate = Convert.ToDateTime(txt_PubDate.Value.Trim() == "" ? DateTime.Now.ToString("yyyy-MM-dd HH:ss:mm") : txt_PubDate.Value.Trim());
            model.OrderID = int.Parse(txt_OrderID.Value.Trim() == "" ? "0" : txt_OrderID.Value.Trim());

            return model;
        }

         #region 初始化页面数据
        /// <summary>
        /// 初始化栏目
        /// </summary>
        private void InitClass()
        {
            slt_ClassName.Items.Add(new ListItem("站点顶级栏目", "0"));
            DataTable dtClass = bllClass.GetDropList("");
            DropDownTree.BindToDropDownList(slt_ClassName, dtClass, "0");
        }

        /// <summary>
        /// 初始化阅读权限
        /// </summary>
        private void InitReadaccess()
        {
            DataTable dtReadaccess = bllSelectionConfig.GetSectionListReadaccess();
            if (dtReadaccess != null && dtReadaccess.Rows.Count > 0)
            {
                slt_Readaccess.DataSource = dtReadaccess;
                slt_Readaccess.DataTextField = "value";
                slt_Readaccess.DataValueField = "key";
                slt_Readaccess.DataBind();
            }
        }
        /// <summary>
        /// 文章类型
        /// </summary>
        private void InitTitleFlag()
        {
            DataTable dtTitleFlag =bllSelectionConfig.GetSectionListTitleFlag();
            if (dtTitleFlag != null && dtTitleFlag.Rows.Count > 0)
            {
                slt_TitleFlag.DataSource = dtTitleFlag;
                slt_TitleFlag.DataTextField = "value";
                slt_TitleFlag.DataValueField = "key";
                slt_TitleFlag.DataBind();
            }
            
        }

         #endregion 初始化页面数据
    }
}
