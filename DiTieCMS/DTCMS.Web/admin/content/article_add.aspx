﻿<%@ Page Language="C#" AutoEventWireup="true" EnableViewState="false" CodeBehind="article_add.aspx.cs" Inherits="DTCMS.Web.admin.News_add" %>
<%@ Register Assembly="FredCK.FCKeditorV2" Namespace="FredCK.FCKeditorV2" TagPrefix="FCKeditorV2" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>添加新闻</title>
    <meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
    <link href="../css/blue_body.css" rel="stylesheet" type="text/css" />
    <link href="../../inc/dialog/dialog.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="../js/jquery.min.js"></script>
    <script type="text/javascript" src="../../inc/dialog/dialog.js"></script>
    <script type="text/javascript" src="../js/public.js"></script>
    <script type="text/javascript" src="../js/common.js"></script>
</head>
<body>
    <form id="form1" runat="server">
    <div id="container">
        <div style="line-height:25px;">当前位置：文章添加</div>
        <div id="tab_menu" class="tabs">
            <ul>
                <li class="tab_on"><a onclick="selectTab('tab1',this)" href="javascript:void(0)">基本内容</a></li>
                <li><a onclick="selectTab('tab2',this)" href="javascript:void(0)">其他信息</a></li>
            </ul>
        </div>
        <div id="content">
            <!--基本-->
            <div id="tab1" class="tab_show">
                <table cellpadding="0" cellspacing="0" class="table_form">
                    <tr>
                        <td class="main_bleft split">文章标题:
                        </td>
                        <td class="main_bright split">
                            <select id="slt_TitleFlag" runat="server"></select>
                            <input type="text" id="txt_Title" class="textbox long" maxlength="100" runat="server" />
                            <input type="hidden" id="hide_TitleStyle" runat="server" /><!--标题样式-->
                        </td>
                    </tr>
                    <tr>
                        <td class="main_bleft split">
                            文章属性:
                        </td>
                        <td class="main_bright split">
                            <input type="checkbox" id="chk_Headline" runat="server" /><label for="chk_Headline">头条</label>
                            <input type="checkbox" id="chk_Recommended" runat="server" /><label for="chk_Recommended">推荐</label>
                            <input type="checkbox" id="chk_LightMagic" runat="server" /><label for="chk_LightMagic">幻灯片</label>
                            <input type="checkbox" id="chk_Scroll" runat="server" /><label for="chk_Scroll">滚动</label>
                            <input type="checkbox" id="chk_JumpUrl" runat="server" onclick="IsRedirect(this)" /><label for="chk_JumpUrl">跳转网址</label>
                            <input type="hidden" id="hide_Attribute" runat="server" />
                        </td>
                    </tr>
                    <tr id="IsRedirect" style="display:none;">
                        <td class="main_bleft split">
                            跳转地址:
                        </td>
                        <td class="main_bright split">
                            <input type="text" id="txt_Redirect" class="textbox long" runat="server" />                        
                        </td>
                    </tr>
                    <tr>
                        <td class="main_bleft split">
                            TAG标签<sup><a id="H0201001" href="javascript:;" onmouseover="javascript:showHelper('#H0201001', '帮助主题', '多个TAG标签用半角逗号隔开',30)" onmouseout="hideHelper()" title="查看帮助">[?]</a></sup>:
                        </td>
                        <td class="main_bright split">
                            <input type="text" id="txt_Tags" class="textbox" runat="server" /><img src="../images/blue/s.gif" class="select" alt="选取" onclick="add_tags();" />
                        </td>
                    </tr>
                    <tr>
                        <td class="main_bleft split">
                            所属栏目:
                        </td>
                        <td class="main_bright split">
                            <select id="slt_ClassName" runat="server" style="width: 180px; background: #F7FAFC; " ></select>
                        </td>
                    </tr>
                    <tr>
                        <td class="main_bleft split">
                            文章来源:
                        </td>
                        <td class="main_bright split">
                            <input type="text" id="txt_Source" class="textbox" style="width:120px;" runat="server" /><img src="../images/blue/s.gif" class="select" alt="选择" onclick="add_source();" />                            
                            <span class="main_bleft">文章作者: </span><input type="text" id="txt_Author" class="textbox" style="width:120px;" runat="server" /><img src="../images/blue/s.gif" class="select" alt="选取" onclick="add_author();" />
                            <span class="main_bleft">责任编辑: </span><input type="text" id="txt_Editor" class="textbox" style="width:120px;" runat="server" />
                        </td>
                    </tr>
                    <tr>
                        <td class="main_bleft split">
                            文章缩略图:
                        </td>
                        <td class="main_bright split">
                            <input type="text" id="txt_ImageUrl" class="textbox" runat="server" /><img src="../images/blue/s.gif" class="select" alt="选取" onclick="add_Image();" />
                            <input type="checkbox" name="chk_IsRemoteUrl" id="chk_IsRemoteUrl" runat="server" /><label for="chk_IsRemoteUrl">远程图片</label>
                        </td>
                    </tr>
                    <tr>
                        <td class="main_bleft split">
                            文章分页:
                        </td>
                        <td class="main_bright split">                            
                            <input type="radio" id="rdo_Autopage" runat="server" value="自动分页" /><label for="rdo_Autopage">自动分页，每页字数:</label><input type="text" id="txt_AutopageNum" value="5000" class="textbox" style="width:60px;" runat="server" />
                            <input type="radio" id="rdo_Manualpage" runat="server" value="手动分页" /><label for="rdo_Manualpage">手动分页</label>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <FCKeditorV2:FCKeditor ID="txt_Content" Height="500px" Width="100%" runat="server"></FCKeditorV2:FCKeditor>
                        </td>
                    </tr>
                </table>
            </div>
            <!--其他信息-->
            <div id="tab2" class="tab_hiden">
                <table cellpadding="0" cellspacing="0" class="table_form">
                    <tr>
                        <td class="main_bleft split">
                            缩略标题:
                        </td>
                        <td class="main_bright split">
                            <input type="text" id="txt_ShortTitle" class="textbox long" runat="server" />
                        </td>
                    </tr>
                    <tr>
                        <td class="main_bleft split">
                            副栏目:
                        </td>
                        <td class="main_bright split">
                            <input type="text" id="txt_ViceClassID" class="textbox short" runat="server" /><img src="../images/blue/s.gif" class="select" alt="选择" />
                            <span class="main_bleft">权重: </span><input type="text" id="txt_OrderID" class="textbox" style="width:120px;" runat="server" /> 权重越大，排序越前
                        </td>
                    </tr>
                    <tr>
                        <td class="main_bleft split">
                            文章模版:
                        </td>
                        <td class="main_bright split">
                            <input type="text" id="txt_Templet" class="textbox" runat="server" /><img src="../images/blue/s.gif" class="select" alt="选择" />留空则按照栏目默认设置
                        </td>
                    </tr>
                    <tr>
                        <td class="main_bleft split">
                            保存路径:
                        </td>
                        <td class="main_bright split">
                            <input type="text" id="txt_FilePath" class="textbox" runat="server" /> 留空则按照栏目默认设置
                        </td>
                    </tr>
                    <tr>
                        <td class="main_bleft split">
                            发布时间:
                        </td>
                        <td class="main_bright split">
                            <input type="text" id="txt_PubDate" class="textbox short" runat="server" />
                        </td>
                    </tr>
                    <tr>
                        <td class="main_bleft split">
                            阅读权限:
                        </td>
                        <td class="main_bright split">
                            <select class="textbox short" id="slt_Readaccess" runat="server"></select>
                            <span class="main_bleft">消费点数: </span><input type="text" id="txt_Money" class="textbox" style="width:120px;" runat="server" /> 不大于1000
                        </td>
                    </tr>
                    <tr>
                        <td class="main_bleft split">
                            相关文章:
                        </td>
                        <td class="main_bright split">
                            <input type="text" id="txt_SimilarArticle" class="textbox long" runat="server" /><img src="../images/blue/s.gif" class="select" alt="选择" /> 多个ID用逗号,隔开
                        </td>
                    </tr>
                    <tr>
                        <td class="main_bleft split">
                            文章关键字:
                        </td>
                        <td class="main_bright split">
                            <input type="text" id="txt_Keywords" class="textbox long" runat="server" /><img src="../images/blue/s.gif" class="select" alt="选择" /> 多个关键字用逗号,隔开
                        </td>
                    </tr>
                    <tr>
                        <td class="main_bleft split">
                            文章摘要:
                        </td>
                        <td class="main_bright split">
                            <textarea cols="50" id="txt_Description" runat="server" rows="5"></textarea> 不大于500个字
                        </td>
                    </tr>
                    <tr>
                        <td class="main_bleft">
                            其他设置:
                        </td>
                        <td class="main_bright">
                            <input type="checkbox" name="chk_IsHtml" id="chk_IsHtml" checked="true" runat="server" /><label for="chk_IsHtml">生成静态页(不选择动态访问)</label>
                            <input type="checkbox" name="chk_IsComment" id="chk_IsComment" checked="true" runat="server" /><label for="chk_IsComment">允许评论</label>
                            <input type="checkbox" name="chk_IsVerify" id="chk_IsVerify" runat="server" /><label for="chk_IsVerify">已审核</label>
                        </td>
                    </tr>
                </table>
            </div>
            <!--操作按钮-->
            <div style="margin:10px;text-align:center;">                
                <button id="btn_Submit" type="button" class="b2" runat="server" onserverclick="Btn_Submit_Click">
                    <img src="../images/ico/i_save.gif" />保存</button>
                <button id="btn_Cancel" type="button" class="b2" runat="server" onclick="history.back(-1);">
                    <img src="../images/ico/i-cancel.gif" />取消</button>
            </div>
        </div>
    </div>
    </form>
    
    <script type="text/javascript">
        function IsRedirect(obj) {  //是否跳转地址
            var redirect = $("#IsRedirect");
            if (obj.checked) {
                redirect.css("display", "block");
            } else {
                redirect.css("display", "none");
            }
        }
        function add_Image() {  //缩略图
            dialogAttachmentUpload('/admin/attachment/attachmentmanage.aspx', attachment_onCancel);
        }
        function attachment_onCancel(returnPath) {
            if (returnPath) {
                $("#txt_ImageUrl").val(returnPath);
            }
        }        
        function add_tags() {
            Dialog.open("关键字", tag_onOk, "/admin/dialog/taglist.aspx");    
        }
        function tag_onOk(win) {
            var tagList = win.getTags();
            $("#txt_Tags").val(tagList);
        }

        function add_source() {
            Dialog.open("文章来源", soutce_onOk, "/admin/dialog/newssourcelist.aspx");
        }
        function soutce_onOk(win) {
            var sourceList = win.getnews();
            $("#txt_Source").val(sourceList);
        }

        function add_author() {
            Dialog.open("作者", author_onOk, "/admin/dialog/authorlist.aspx");
        }
        function author_onOk(win) {
            var authorList = win.getAuthors();
            $("#txt_Author").val(authorList);
        }       
    </script>
</body>
</html>
