<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage4.master" AutoEventWireup="true" CodeFile="license.aspx.cs" Inherits="license" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style1
    {
        height: 36px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%;">
        <tr>
            <td colspan="2" align="center">
                <h2>Apply For License</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;
                <h2>&nbsp; Apply for Learner license</td>
            <td>
                <asp:Button ID="Button5" runat="server" Height="43px" onclick="Button5_Click" 
                    Text="Apply" Width="65px" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                <h2>&nbsp;Book date for Driving LIcense</td>
            <td class="style1">
                <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Apply" 
                    Height="39px" Width="63px" />
                <br />
            </td>
            <td class="style1">
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

