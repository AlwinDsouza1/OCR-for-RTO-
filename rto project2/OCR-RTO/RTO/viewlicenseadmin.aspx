<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true" CodeFile="viewlicenseadmin.aspx.cs" Inherits="viewlicenseadmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%;">
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <h2>View Learner License&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btapproval" runat="server" Text="Approve" 
                    onclick="Button1_Click" Height="40px" Width="77px" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" Text="Reject" 
                    onclick="Button2_Click" Height="37px" Width="86px" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button3" runat="server" Height="35px" onclick="Button3_Click" 
                    Text="Delete" Width="72px" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" 
        onrowcommand="GridView1_RowCommand" AutoGenerateColumns="False" 
        BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" 
        CellPadding="3" GridLines="Vertical" style="margin-left: 52px" Width="499px" 
            onselectedindexchanged="GridView1_SelectedIndexChanged1">
        <AlternatingRowStyle BackColor="#DCDCDC" />
     <Columns>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:CheckBox ID="chkmail" runat="server" 
                               
                                CommandArgument='<%# Eval("[learnerlicenseid]") %>'/>
                        </ItemTemplate>
                    </asp:TemplateField >

                   <asp:TemplateField Visible="False">
                     <ItemTemplate>
                            <asp:Label ID="lblId" runat="server" Text='<%#Eval("[learnerlicenseid]") %>' ></asp:Label>
                    </ItemTemplate>
                    </asp:TemplateField>
                    <%--<asp:TemplateField>
                    
                    <ItemTemplate>

                            <asp:Label ID="lblfrmid" runat="server" Text='<%#Eval("[From_id]") %>' Visible="True"></asp:Label>
                    </ItemTemplate>
                    </asp:TemplateField>--%>
                    <asp:BoundField DataField="learnerlicenseid" HeaderText="LearnerLicenseId" />
                     <asp:BoundField DataField="user_name" HeaderText="Name" />
                     <asp:BoundField DataField="gender" HeaderText="gender" />
                     <asp:BoundField DataField="dob" HeaderText="Date Of Birth" />
                     <asp:BoundField DataField="paddress" HeaderText="Permanent Address" />
                     <asp:BoundField DataField="license" HeaderText="License" />
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
    </asp:GridView>

            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

