<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="locationmanager.aspx.cs" Inherits="locationmanager" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%;">
        <tr>
            <td>
                &nbsp;</td>
            <td>
                 <h2>Location Manager</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <h2>Location</td>
            <td>
                <asp:TextBox ID="txtlocation" runat="server"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtlocation" ErrorMessage="*" ForeColor="#FF3300"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Button ID="bsave" runat="server" onclick="b1_Click" Text="Save" 
                    Height="39px" Width="64px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="bclear" runat="server" Text="Clear" onclick="bclear_Click" 
                    Height="32px" Width="53px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                  <asp:GridView ID="GridView1" runat="server" 
                    
                    onrowcancelingedit="GridView1_RowCancelingEdit" 
                    onrowdeleting="GridView1_RowDeleting" 
                   
                    AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" 
                    BorderStyle="None" BorderWidth="1px" CellPadding="4" 
                    Width="385px" onpageindexchanging="GridView1_PageIndexChanging" 
            onrowediting="GridView1_RowEditing" onrowupdating="GridView1_RowUpdating" 
            onselectedindexchanging="GridView1_SelectedIndexChanging">
                    <Columns>
                       
                        <asp:BoundField DataField="location" HeaderText="Location Name" />
                        
                        <asp:CommandField ShowEditButton="True" CausesValidation="False" />
                        <asp:CommandField ShowDeleteButton="True" />
                         <asp:TemplateField Visible="false">
                        <ItemTemplate>
                            <asp:Label ID="lbl" runat="server" 
                            Text='<%# DataBinder.Eval(Container, "DataItem.locationid") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    </Columns>
                    <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                    <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                    <PagerStyle ForeColor="#003399" HorizontalAlign="Left" BackColor="#99CCCC" />
                    <RowStyle BackColor="White" ForeColor="#003399" />
                    <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                    <SortedAscendingCellStyle BackColor="#EDF6F6" />
                    <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
                    <SortedDescendingCellStyle BackColor="#D6DFDF" />
                    <SortedDescendingHeaderStyle BackColor="#002876" />
                </asp:GridView>
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

