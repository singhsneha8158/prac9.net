<%@ Page Language="C#" AutoEventWireup="true"
    CodeBehind="Companies.aspx.cs"
    Inherits="PlacementDashboard.Companies" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Companies</title>
</head>
<body>
<form id="form1" runat="server">

    <h2>COMPANY PLACEMENT DETAILS</h2>

    <asp:GridView ID="gvCompanies" runat="server"
        AutoGenerateColumns="True"
        BorderWidth="1"
        CellPadding="5"
        GridLines="Both">
    </asp:GridView>

    <br />

    <a href="Default.aspx">Back to Dashboard</a>

</form>
</body>
</html>