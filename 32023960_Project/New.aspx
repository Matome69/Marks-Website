<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="New.aspx.cs" Inherits="_32023960_Project.New" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 165px;
            height: 125px;
            z-index: 1;
            left: 330px;
            top: 19px;
            position: absolute;
            text-align: center;
            float: left;
        }
        </style>
</head>
<body style="height: 488px">
    <form id="form1" runat="server">
        <div style="height: 473px">
            <img alt="" class="auto-style1" src="Image/logo.jpg" /><asp:Label ID="Label1" runat="server" style="z-index: 1; left: 262px; top: 163px; position: absolute; height: 17px" Text="Enter Student Number"></asp:Label>
            <asp:Label ID="Label2" runat="server" style="z-index: 1; left: 262px; top: 267px; position: absolute; height: 17px" Text="Enter Module"></asp:Label>
            <asp:Label ID="Label3" runat="server" style="z-index: 1; left: 262px; top: 338px; position: absolute; height: 17px" Text="Enter Exam Mark"></asp:Label>
            <asp:Label ID="Label4" runat="server" style="z-index: 1; left: 263px; top: 301px; position: absolute; height: 17px" Text="Enter Part Mark"></asp:Label>
            <asp:Label ID="Label5" runat="server" style="z-index: 1; left: 263px; top: 377px; position: absolute; height: 17px" Text="Module Mark"></asp:Label>
            <asp:Label ID="Label6" runat="server" style="z-index: 1; left: 262px; top: 200px; position: absolute; height: 17px; bottom: 308px" Text="Enter Surname"></asp:Label>
            <asp:Label ID="Label7" runat="server" style="z-index: 1; left: 263px; top: 233px; position: absolute; height: 17px; right: 579px" Text="Enter Name"></asp:Label>
            <asp:TextBox ID="txtNewStudentSurname" runat="server" style="z-index: 1; left: 410px; top: 196px; position: absolute; bottom: 307px"></asp:TextBox>
            <asp:TextBox ID="txtNewStudentName" runat="server" style="z-index: 1; left: 410px; position: absolute; top: 230px; margin-top: 0px"></asp:TextBox>
            <asp:TextBox ID="txtNewStudentModule" runat="server" style="z-index: 1; left: 410px; top: 269px; position: absolute; right: 393px"></asp:TextBox>
            <asp:TextBox ID="txtNewStudentNo" runat="server" style="z-index: 1; left: 410px; top: 165px; position: absolute"></asp:TextBox>
            <asp:TextBox ID="txtNewStudentExam" runat="server" style="z-index: 1; left: 409px; top: 337px; position: absolute; right: 394px; bottom: 166px"></asp:TextBox>
            <asp:TextBox ID="txtNewStudentPart" runat="server" style="z-index: 1; left: 410px; top: 302px; position: absolute; right: 393px; bottom: 201px"></asp:TextBox>
            <asp:Label ID="lblModuleMark" runat="server" BorderStyle="Ridge" style="z-index: 1; left: 411px; top: 371px; position: absolute"></asp:Label>
            <asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" style="z-index: 1; left: 375px; top: 418px; position: absolute" Text="Enter Student" />
            <asp:Label ID="lblDisplay" runat="server" style="z-index: 1; top: 452px; position: absolute; height: 17px; left: 386px"></asp:Label>
            <asp:Button ID="btnBack" runat="server" OnClick="btnBack_Click" style="z-index: 1; left: 385px; top: 483px; position: absolute" Text="Back" />
        </div>
    </form>
</body>
</html>
