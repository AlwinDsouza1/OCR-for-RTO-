<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage4.master" AutoEventWireup="true" CodeFile="application.aspx.cs" Inherits="application" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style1
    {
        width: 365px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%;">
    <tr>
        <td class="style1">
            <h2>Status of&nbsp; All the License</h2></td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style1">
            <h2>&nbsp;<asp:Label ID="Label2" runat="server" Text="Status of Learner license"></asp:Label>
        </td>
        <td>
            <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                Text="View Status" Height="37px" Width="114px" />
        </td>
        <td>
            <asp:Button ID="Button4" runat="server" onclick="Button4_Click" Text="Back" 
                Height="38px" Width="54px" />
            <br />
        </td>
    </tr>
    <tr>
        <td class="style1">
            <h2><asp:Label ID="Label3" runat="server" Text="Status Of  Date of Driving Test"></asp:Label>
        &nbsp;</td>
        <td>
            <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
                Text="View Status" Height="33px" Width="115px" />
        </td>
        <td>
            <br />
            <br />
        </td>
    </tr>
    <tr>
        <td class="style1">
            <h2>Status Of Driving Test (Passed or Fail)</td>
        <td>
            <asp:Button ID="Button3" runat="server" onclick="Button3_Click" 
                Text="View Result" Height="39px" Width="116px" />
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style1">
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style1">
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
</table>
</asp:Content>

