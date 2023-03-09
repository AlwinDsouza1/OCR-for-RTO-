<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true" CodeFile="machinelearning.aspx.cs" Inherits="machinelearning" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            height: 18px;
        }
        .style2
        {
            font-size: large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
        <br />
        <br />
        <table style="width:100%;">
            <tr>
                <td class="style2">
                    Browse Image</td>
                <td>
                    <asp:FileUpload ID="FileUpload2" runat="server" Height="23px" />
                    </td>
            </tr>
            <tr>
                <td class="style1">
                </td>
                <td class="style1">
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
        <asp:Button ID="Button1" runat="server" Font-Size="Large" 
            Text="Submit" onclick="Button1_Click" Width="130px" />
                </td>
            </tr>
        </table>
        <br />
        </asp:Content>

