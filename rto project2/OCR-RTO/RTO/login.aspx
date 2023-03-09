<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            height: 34px;
        }
        .style2
        {
            width: 16px;
        }
        .style3
        {
            height: 34px;
            width: 16px;
        }
        .style4
        {
            width: 165px;
        }
        .style5
        {
            height: 34px;
            width: 165px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%;">
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
            <td>
               <h2> &nbsp;LOGIN</h2></td>
        </tr>
        <tr>
            <td class="style2" rowspan="2">
                <asp:Image ID="Image1" runat="server" Height="120px" 
                    ImageUrl="~/images/images (1).jpg" Width="172px" />
            </td>
            <td class="style4">
                &nbsp;&nbsp; <h2>User name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </h2></td>
            <td>
                <asp:TextBox ID="txtname" runat="server" Height="28px"></asp:TextBox>
                &nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ErrorMessage="Enter your name" ControlToValidate="txtname" 
                    ForeColor="#FF3300"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style4">
               &nbsp;&nbsp;&nbsp; <h2> Password</h2></td>
            <td>
                <asp:TextBox ID="txtpassword" runat="server" TextMode="Password" Height="30px"></asp:TextBox>
                &nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ErrorMessage="Enter your Password" ControlToValidate="txtpassword" 
                    ForeColor="#FF3300"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style5">
                </td>
            <td class="style1">
                <asp:Button ID="bsave" runat="server" Text="LOGIN" onclick="bsave_Click" 
                    Height="40px" Width="76px" Font-Size="Large" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="bclear" runat="server" Text="CLEAR" onclick="bclear_Click" 
                    Height="40px" Width="76px" Font-Size="Large"  />
                &nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                <br />
                &nbsp;
                &nbsp;<br />
                <asp:LinkButton ID="LinkButton3" runat="server" ForeColor="#FF3300" 
                    onclick="LinkButton3_Click" CausesValidation="False">CHANGE PASSWORD</asp:LinkButton>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:LinkButton ID="LinkButton2" runat="server" ForeColor="Red" 
                    CausesValidation="False" onclick="LinkButton2_Click">REGISTER NOW</asp:LinkButton>
            </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style4">
                <br />
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

