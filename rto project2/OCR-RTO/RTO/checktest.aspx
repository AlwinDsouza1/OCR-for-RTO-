<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true" CodeFile="checktest.aspx.cs" Inherits="checktest" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 360px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%;">
        <tr>
            <td class="style1">
                &nbsp;&nbsp;<h2> Test Slot Booking&nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                <asp:Button ID="Button1" runat="server" Text="Booked" onclick="Button1_Click" 
                    Height="42px" Width="66px" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
                    Text="Pending" Height="39px" Width="82px" />
            &nbsp;<asp:Button ID="Button4" runat="server" Height="41px" onclick="Button4_Click" 
                    Text="Delete" Width="74px" />
&nbsp;<asp:Button ID="Button3" runat="server" onclick="Button3_Click" 
                    Text="Update Date" Height="37px" Width="116px" />
            </td>
        </tr>
        <tr>
            <td class="style1">
                <asp:GridView ID="GridView1" runat="server" 
        onrowcommand="GridView1_RowCommand" AutoGenerateColumns="False" 
        BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" 
        CellPadding="3" GridLines="Vertical" style="margin-left: 52px" Width="503px" 
            onselectedindexchanged="GridView1_SelectedIndexChanged1">
        <AlternatingRowStyle BackColor="#DCDCDC" />
     <Columns>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:CheckBox ID="chkmail" runat="server" 
                               
                                CommandArgument='<%# Eval("[testslotid]") %>'/>
                        </ItemTemplate>
                    </asp:TemplateField >

                   <asp:TemplateField Visible="False">
                     <ItemTemplate>
                            <asp:Label ID="lblId" runat="server" Text='<%#Eval("[testslotid]") %>' ></asp:Label>
                    </ItemTemplate>
                    </asp:TemplateField>
                    <%--<asp:TemplateField>
                    
                    <ItemTemplate>

                            <asp:Label ID="lblfrmid" runat="server" Text='<%#Eval("[From_id]") %>' Visible="True"></asp:Label>
                    </ItemTemplate>
                    </asp:TemplateField>--%>
                    <asp:BoundField DataField="llicense_no" HeaderText="LLearner NO" />
                     <asp:BoundField DataField="user_name" HeaderText="Name" />
                     <asp:BoundField DataField="phone_no" HeaderText="Phone_No" />
                     <asp:BoundField DataField="location_selection" HeaderText="Location" />
                     <asp:BoundField DataField="date" HeaderText="Date" />
                     <asp:BoundField DataField="Status" HeaderText="Status" />
                     
                     </Columns>
        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
        <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
        <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#0000A9" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#000065" />
    </asp:GridView>&nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                <h2>Book &nbsp;&nbsp;&nbsp;the&nbsp; Date&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                <asp:CalendarExtender ID="TextBox2_CalendarExtender" runat="server" 
                    Enabled="True" TargetControlID="TextBox2">
                </asp:CalendarExtender>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
                </asp:ToolkitScriptManager>
            &nbsp;</td>
        </tr>
    </table>
</asp:Content>

