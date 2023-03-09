<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true" CodeFile="Emission.aspx.cs" Inherits="Emission" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 383px;
        }
        .style2
        {
            width: 203px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:94%;">
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style1">
                <h2>Emission Test</td>
            <td rowspan="8">
                <asp:GridView ID="GridView1" runat="server" Height="114px" Width="138px" 
                    BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" 
                    CellPadding="4" Caption="Emission Test is due">
                    <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                    <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                    <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                    <RowStyle BackColor="White" ForeColor="#003399" />
                    <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                    <SortedAscendingCellStyle BackColor="#EDF6F6" />
                    <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
                    <SortedDescendingCellStyle BackColor="#D6DFDF" />
                    <SortedDescendingHeaderStyle BackColor="#002876" />
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style1">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                <h3>Register&nbsp;&nbsp;&nbsp; Emission Test&nbsp; </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style1">
                <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
                </asp:ToolkitScriptManager>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Register No</td>
            <td class="style1">
                <asp:TextBox ID="txtregister" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Validity from</td>
            <td class="style1">
                <asp:TextBox ID="txtfrom" runat="server"></asp:TextBox>
                <asp:CalendarExtender ID="txtfrom_CalendarExtender" runat="server" 
                    Enabled="True" TargetControlID="txtfrom" Format="yyyy-MM-dd">
                </asp:CalendarExtender>
&nbsp;
            </td>
        </tr>
        <tr>
            <td class="style2">
                Validity to</td>
            <td class="style1">
                <asp:TextBox ID="txtto" runat="server"></asp:TextBox>
                <asp:CalendarExtender ID="txtto_CalendarExtender" runat="server" Enabled="True" 
                    TargetControlID="txtto" Format="yyyy-MM-dd">
                </asp:CalendarExtender>
            </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style1">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style1">
                <asp:Button ID="bsave" runat="server" onclick="b1_Click" Text="save" 
                    Height="39px" Width="56px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                <asp:Button ID="bclear" runat="server" Text="Clear" onclick="bclear_Click" 
                    Height="35px" Width="55px" />
&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </td>
        </tr>
    </table>
</asp:Content>

