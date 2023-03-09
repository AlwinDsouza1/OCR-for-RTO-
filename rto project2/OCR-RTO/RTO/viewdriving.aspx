<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true" CodeFile="viewdriving.aspx.cs" Inherits="viewdriving" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%;">
        <tr>
            <td>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<h2> View Driving License</td>
        </tr>
        <tr>
            <td>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" Text="Issued" 
                    onclick="Button1_Click" Height="36px" Width="72px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" Text="Not Issued" 
                    onclick="Button2_Click" Height="36px" Width="109px" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button3" runat="server" Height="36px" onclick="Button3_Click" 
                    Text="Delete" Width="74px" />
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;<asp:GridView ID="GridView1" runat="server" 
        onrowcommand="GridView1_RowCommand" AutoGenerateColumns="False" 
        BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" 
        CellPadding="3" GridLines="Vertical" style="margin-left: 52px" Width="546px" 
            onselectedindexchanged="GridView1_SelectedIndexChanged1">
        <AlternatingRowStyle BackColor="#DCDCDC" />
     <Columns>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:CheckBox ID="chkmail" runat="server" 
                               
                                CommandArgument='<%# Eval("[drivinglicenseid]") %>'/>
                        </ItemTemplate>
                    </asp:TemplateField >

                   <asp:TemplateField Visible="False">
                     <ItemTemplate>
                            <asp:Label ID="lblId" runat="server" Text='<%#Eval("[drivinglicenseid]") %>' ></asp:Label>
                    </ItemTemplate>
                    </asp:TemplateField>
                    <%--<asp:TemplateField>
                    
                    <ItemTemplate>

                            <asp:Label ID="lblfrmid" runat="server" Text='<%#Eval("[From_id]") %>' Visible="True"></asp:Label>
                    </ItemTemplate>
                    </asp:TemplateField>--%>
                    <asp:BoundField DataField="drivinglicenseid" HeaderText="DrivingLicense No" />
                     <asp:BoundField DataField="user_name" HeaderText="Name" />
                     
                     <asp:BoundField DataField="dob" HeaderText="Date Of Birth" />
                     <asp:BoundField DataField="paddress" HeaderText="Permanent Address" />
                     <asp:BoundField DataField="valid_from" HeaderText="Valid From" />
                     <asp:BoundField DataField="valid_to" HeaderText="Valid To" />
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
    </table>
</asp:Content>

