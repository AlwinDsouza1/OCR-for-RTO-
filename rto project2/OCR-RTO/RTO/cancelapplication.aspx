<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage4.master" AutoEventWireup="true" CodeFile="cancelapplication.aspx.cs" Inherits="cancelapplication" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%;">
        <tr>
            <td>
                &nbsp;</td>
            <td>
                Cancel Application</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;
                <h2>Learner License No or Name</td>
            <td>
                <asp:TextBox ID="txtname" runat="server" MaxLength="45" ontextchanged="txtname_TextChanged" 
                    ></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtname" ErrorMessage="*" ForeColor="#FF3300"></asp:RequiredFieldValidator>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                    Text="View License Details" Height="40px" Width="142px" />
                </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:GridView ID="GridView1" runat="server" 
                    CellPadding="4" AutoGenerateColumns="False" BackColor="White" 
                    BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" Height="100px" 
                    Width="604px">
                    <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                    <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                    <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                    <RowStyle BackColor="White" ForeColor="#003399" />
                    <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                    <SortedAscendingCellStyle BackColor="#EDF6F6" />
                    <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
                    <SortedDescendingCellStyle BackColor="#D6DFDF" />
                    <SortedDescendingHeaderStyle BackColor="#002876" />
                    <Columns>
                    <asp:BoundField DataField="learnerlicenseid" HeaderText="License No" />
                        <asp:BoundField DataField="user_name" HeaderText="Name" />
                        <asp:BoundField DataField="dob" HeaderText="DOB" />
                        <asp:BoundField DataField="license" HeaderText="License" />
                        <asp:BoundField DataField="date" HeaderText="Date" />
                        <asp:BoundField DataField="Status" HeaderText="Status" />
                        </Columns>
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <h2>cancel reason</td>
            <td>
                <asp:TextBox ID="txtreason" runat="server" TextMode="MultiLine" Width="195px"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;
                </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Button ID="b1save" runat="server" onclick="b1_Click" 
                    Text="Cancel Application" Height="37px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="bclear" runat="server" Text="clear" onclick="bclear_Click" 
                    Height="32px" Width="46px" />
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

