<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserVerification.aspx.cs" Inherits="matrimonial_project.View.UserVerification" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h3>Verify Code</h3>
    <input runat="server" id="TokenCode" placeholder="Enter Code Here" />
    <asp:Button runat="server" ID="btn_Verify" OnClick="btn_Verify_Click" Text="Verify"/>
    </div>
    </form>
</body>
</html>
