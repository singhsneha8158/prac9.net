<%@ Page Language="C#" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs"
    Inherits="PlacementDashboard.Default" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Placement Dashboard</title>
</head>
<body>
<form id="form1" runat="server">

    <h1>PLACEMENT DASHBOARD</h1>

    <h2>Placement Summary</h2>

    <table border="1" cellpadding="5">
        <tr>
            <th>Details</th>
            <th>Value</th>
        </tr>
        <tr>
            <td>Total Students</td>
            <td><asp:Label ID="lblTotal" runat="server" /></td>
        </tr>
        <tr>
            <td>Placed Students</td>
            <td><asp:Label ID="lblPlaced" runat="server" /></td>
        </tr>
        <tr>
            <td>Not Placed Students</td>
            <td><asp:Label ID="lblNotPlaced" runat="server" /></td>
        </tr>
        <tr>
            <td>Placement Percentage</td>
            <td><asp:Label ID="lblPercentage" runat="server" /></td>
        </tr>
        <tr>
            <td>Highest Package</td>
            <td><asp:Label ID="lblHighestPackage" runat="server" /></td>
        </tr>
    </table>

    <br />

    <asp:GridView ID="gvPlacements" runat="server"
        AutoGenerateColumns="False"
        BorderWidth="1"
        CellPadding="5"
        GridLines="Both">

        <Columns>
            <asp:BoundField DataField="EnrollmentNo" HeaderText="EnrollmentNo" />
            <asp:BoundField DataField="StudentName" HeaderText="StudentName" />
            <asp:BoundField DataField="Department" HeaderText="Department" />
            <asp:BoundField DataField="CompanyName" HeaderText="CompanyName" />
            <asp:BoundField DataField="PackageLPA" HeaderText="PackageLPA"
                DataFormatString="{0:F2}" />
        </Columns>

    </asp:GridView>

    <br />

    <a href="Companies.aspx">View Companies</a>

</form>
</body>
</html>