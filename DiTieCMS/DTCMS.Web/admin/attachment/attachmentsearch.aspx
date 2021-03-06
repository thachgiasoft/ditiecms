﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="attachmentsearch.aspx.cs"
    Inherits="DTCMS.Web.admin.attachmentsearch" %>

<%@ OutputCache Duration="600" VaryByParam="container" Location="Server" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>图片浏览</title>
    <link href="../css/blue_body.css" rel="stylesheet" type="text/css" />

    <script type="text/javascript" src="../js/jquery.min.js"></script>

    <style type="text/css">
        *
        {
            padding: 0;
            margin: 0;
            font-family: Verdana, Arial, Helvetica, sans-serif;
            font-size: 12px;
        }
        .bg
        {
            background: url(../images/blue/login_input_bg.gif) no-repeat left top #F7FAFC;
        }
        .text
        {
            width: 109px;
        }
        .s_text
        {
            width: 80px;
        }
        #container
        {
            width: 570px;
            margin: 0 auto;
            text-align: center;
        }
        #content ul
        {
            list-style: none outside none;
        }
        #content ul li
        {
            float: left;
            color: #669900;
            border: solid 1px #E3E3E3;
            margin: 3px;
            overflow: hidden;
            width: 105px;
            height: 136px;
        }
        #content li:hover
        {
            background-color: #FFFABF;
        }
        #content ul li dl dt a
        {
            display: table-cell;
            vertical-align: middle;
            text-align: center;
            width: 105px;
            height: 116px;
            line-height: 98px; *display:block;*font-size:75px;color:#F9F9F9;border:0none;background-color:transparent;text-decoration:none;overflow:hidden;}
        #content dl dt a img
        {
            border: 1px solid #FFFFFF;
            margin: 3px;
            width: 96px;
            height: 108px;
            vertical-align: middle;
        }
        
        /*搜索*/
        .search
        {
            float: left;
            padding-top: -3px;
        }
        .s_btn
        {
            background: url(../images/blue/button.jpg) no-repeat left top transparent;
            border: 0px;
            height: 22px;
            line-height: 18px;
            width: 51px;
            margin-left: 10px;
            letter-spacing: 2px;
            color: #555;
            overflow: hidden;
        }
        .s_btn:hover
        {
            cursor: pointer;
            background-position: -99px -88px;
        }
        
        /*图片浏览*/
        #data
        {
            float: left;
            margin-top: 8px;
        }        
    </style>

    <script type="text/javascript">
        $(document).ready(function() {
            LoadData(1);
        });
        function LoadData(page) {
            var type = $("#slt_attachmentType").val();
            var name = $("#txt_attachmentName").val();
            
            $.ajax({
                url: "/admin/ajax/attachment_list.aspx",
                type: "GET",
                data: "action=search&page=" + page + "&type=" + type + "&name=" + escape(name) + "&ran=" + Math.random(),
                success: function(responseText) {
                    $("#data").html(responseText);
                }
            });
        }
    </script>

</head>
<body>
    <form id="form1" runat="server">
    <div id="container">
        <div class="search">
            <table cellpadding="0" cellspacing="0" border="0" width="100%" style="text-align: left;">
                <tbody>
                    <tr>
                        <td style="width: 155px;">
                            附件类型：
                            <select id="slt_attachmentType" class="s_text bg" runat="server">
                            </select>
                        </td>
                        <td style="width: 185px;">
                            附件名称：
                            <input type="text" id="txt_attachmentName" class="text bg" />
                        </td>
                        <td>
                            <input type="button" id="btn_search" class="s_btn" onclick="LoadData(1);" value="搜索" />
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div id="data">
        </div>
    </div>
    <input type="hidden" id="returnVal" value="" />
    </form>

    <script type="text/javascript">
        function selectImage(chk_id) {
            var chk = $("#"+chk_id);
            if (chk) {
                chk.attr("checked",!chk.attr("checked"));
            }
        }
        function upload() {
            var chks = $("input[name='items']");
            var hid = $("#returnVal");
            $.each(chks, function(i, n) {
                if (n.checked) {
                    hid.val(n.value);                    
                }
            });
            window.parent.parent.Dialog.close();        
        }
        function resultPath() {
            var hid = $("#returnVal");
            return hid.val();
        }        
    </script>

</body>
</html>
