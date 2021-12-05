<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Marks.aspx.cs" Inherits="_32023960_Project.Marks" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="height: 417px">
            <asp:GridView ID="GridViewStaff" runat="server" AllowSorting="True" BorderColor="Black" BorderStyle="Double" Font-Bold="True" Font-Italic="True" Font-Overline="False" ForeColor="Black" GridLines="Horizontal" OnSelectedIndexChanged="GridViewStaff_SelectedIndexChanged" style="z-index: 1; left: 37px; top: 34px; position: absolute; height: 214px; width: 632px; margin-right: 3px">
                <HeaderStyle BackColor="#66CCFF" HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:GridView>
            <asp:Button ID="btnNewStudent" runat="server" OnClick="btnNewStudent_Click" style="z-index: 1; left: 691px; top: 150px; position: absolute" Text="Enter new Student" />
        </div>
    </form>
</body>
</html>
