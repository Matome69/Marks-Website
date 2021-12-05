<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Staff.aspx.cs" Inherits="_32023960_Project.Staff" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="height: 407px; z-index: 1; left: 10px; top: 15px; position: absolute; width: 911px">
            <asp:Label ID="Label1" runat="server" style="z-index: 1; left: 38px; top: 44px; position: absolute; width: 85px; right: 788px" Text="Username:"></asp:Label>
            <asp:Label ID="Label2" runat="server" style="z-index: 1; left: 39px; top: 83px; position: absolute; width: 85px" Text="Password:"></asp:Label>
            <asp:TextBox ID="txtStaffPass" runat="server" style="z-index: 1; left: 110px; top: 83px; position: absolute" TextMode="Password"></asp:TextBox>
            <asp:TextBox ID="txtStaffName" runat="server" style="z-index: 1; left: 110px; top: 43px; position: absolute"></asp:TextBox>
            <asp:Button ID="btnEnter" runat="server" OnClick="btnEnter_Click" style="z-index: 1; left: 69px; top: 126px; position: absolute; right: 795px; height: 26px;" Text="Enter" />
            <asp:Label ID="Label3" runat="server" style="z-index: 1; left: 44px; top: -15px; position: absolute; width: 354px; font-size: xx-large; font-weight: 700; font-style: italic; text-align: center" Text="Staff Login"></asp:Label>
        </div>
    </form>
</body>
</html>
