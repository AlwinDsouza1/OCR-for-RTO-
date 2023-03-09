<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage4.master" AutoEventWireup="true" CodeFile="issuelicense.aspx.cs" Inherits="issuelicense" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%;">
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <h2>Issuing Of Licenses</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <h2>&nbsp; Driving License</td>
            <td>
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="View" 
                    Height="38px" Width="54px" />
                <br />
            </td>
            <td>
                <br />
            </td>
        </tr>
        </table>
</asp:Content>

