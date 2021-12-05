<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Student.aspx.cs" Inherits="_32023960_Project.Student" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="height: 398px">
    <form id="form1" runat="server">
        <div style="height: 382px">
            <asp:Label ID="Label2" runat="server" style="z-index: 1; left: 28px; top: 50px; position: absolute" Text="Username:"></asp:Label>
            <asp:Label ID="Label3" runat="server" style="z-index: 1; left: 33px; top: 91px; position: absolute" Text="Password:"></asp:Label>
            <asp:TextBox ID="txtStudentUser" runat="server" style="z-index: 1; left: 104px; position: absolute; top: 47px"></asp:TextBox>
            <asp:TextBox ID="txtStudentPassword" runat="server" style="z-index: 1; left: 104px; top: 89px; position: absolute" TextMode="Password"></asp:TextBox>
            <asp:Button ID="btnStudentEnter" runat="server" OnClick="btnStudentEnter_Click" style="z-index: 1; left: 35px; top: 132px; position: absolute" Text="Enter" />
            <asp:Label ID="Label4" runat="server" style="z-index: 1; left: 34px; top: 4px; position: absolute; font-size: xx-large; width: 301px; font-weight: 700; font-style: italic; text-align: center" Text="Student Login"></asp:Label>
            <asp:GridView ID="GridViewStudent" runat="server" style="z-index: 1; left: 33px; top: 180px; position: absolute; height: 133px; width: 187px">
            </asp:GridView>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" style="z-index: 1; left: 97px; top: 131px; position: absolute" Text="Back" />
        </div>
    </form>
</body>
</html>
