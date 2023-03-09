<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage4.master" AutoEventWireup="true" CodeFile="testslot.aspx.cs" Inherits="testslot" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 453px;
        }
        .style2
        {
            width: 263px;
        }
        .style3
        {
            width: 541px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%;">
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                <h2>Test slot Booking</td>
            <td class="style1">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td class="style1">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                Learner License No</td>
            <td class="style3">
                <asp:TextBox ID="txtllno" runat="server" AutoPostBack="True" 
                    ontextchanged="txtllno_TextChanged"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
            <td class="style1" rowspan="7">
                <asp:Image ID="Image1" runat="server" Height="100px" Width="127px" />
            </td>
        </tr>
        <tr>
            <td class="style2">
                Name</td>
            <td class="style3">
                <asp:TextBox ID="txtname" runat="server" ReadOnly="True"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtname" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="txtname" ErrorMessage="Enter Character" ForeColor="Red" 
                    ValidationExpression="[a-z A-Z]*"></asp:RegularExpressionValidator>
            &nbsp;&nbsp;&nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td class="style2">
                Phone No</td>
            <td class="style3">
                <asp:TextBox ID="txtphone" runat="server" ReadOnly="True"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
                License Test</td>
            <td class="style3">
                <asp:RadioButtonList ID="r1test" runat="server" RepeatDirection="Horizontal">
                    <asp:ListItem>Written Test</asp:ListItem>
                    <asp:ListItem>Oral Test</asp:ListItem>
                </asp:RadioButtonList>
&nbsp;
            </td>
        </tr>
        <tr>
            <td class="style2">
                Location selection</td>
            <td class="style3">
                <asp:DropDownList ID="dlocation" runat="server">
                    <asp:ListItem>Vamanjuro</asp:ListItem>
                    <asp:ListItem>BC road</asp:ListItem>
                </asp:DropDownList>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="dlocation" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Date</td>
            <td class="style3">
                <asp:Label ID="lbl" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                <asp:Button ID="bsave" runat="server" onclick="bsave_Click" Text="Save" 
                    Height="30px" Width="63px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="bclear" runat="server" Text="Clear" onclick="bclear_Click" 
                    Width="56px" />
            </td>
            <td class="style1">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

