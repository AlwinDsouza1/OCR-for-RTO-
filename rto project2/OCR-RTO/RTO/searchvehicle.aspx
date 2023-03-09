<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage4.master" AutoEventWireup="true" CodeFile="searchvehicle.aspx.cs" Inherits="searchvehicle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style1
    {
        height: 18px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%;">
    <tr>
        <td class="style1">
        </td>
        <td class="style1">
            <h2>Search
        </td>
        <td class="style1">
        </td>
    </tr>
    <tr>
        <td class="style1">
            <h2>Enter the Vehicle no
        </td>
        <td class="style1">
            <asp:TextBox ID="TextBox1" runat="server" Height="24px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Search" 
                Height="42px" Width="83px" />
        </td>
        <td class="style1">
        </td>
    </tr>
    <tr>
        <td colspan="3">
            <asp:GridView ID="GridView1" runat="server" Width="100%">
            </asp:GridView>
        </td>
    </tr>
</table>
</asp:Content>

