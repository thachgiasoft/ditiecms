﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="DTCMS.Web._Default" %>
<%@ Register Namespace="DTCMS.Controls" TagPrefix="DT" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Button" />
       <DT:DTTextBox ID="dtTxtValidate" runat="server"></DT:DTTextBox>
    </div>
    </form>
</body>
</html>
