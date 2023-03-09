<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true" CodeFile="ceasedvehicle.aspx.cs" Inherits="ceasedvehicle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            width: 245px;
        }
        .style3
        {
        }
        .style4
        {
            width: 278px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <br />
    <table style="width:100%;">
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style2">
                Ceased Vehicle</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                Register No</td>
            <td class="style2">
                <asp:TextBox ID="txtregister" runat="server"></asp:TextBox>
            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="txtregister" ErrorMessage="*" ForeColor="#FF3300"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                Name</td>
            <td class="style2">
                <asp:TextBox ID="txtname" runat="server" Height="23px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtname" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="txtname" ErrorMessage="Only characters" ForeColor="Red" 
                    ValidationExpression="[a-z A-Z]*"></asp:RegularExpressionValidator>
&nbsp;&nbsp;
                </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                Address</td>
            <td class="style2">
                <asp:TextBox ID="txtaddress" runat="server" TextMode="MultiLine" Height="74px" 
                    Width="236px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="txtaddress" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                Phone No</td>
            <td class="style2">
                <asp:TextBox ID="txtphone" runat="server" Height="24px" MaxLength="10"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtphone" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ControlToValidate="txtphone" ErrorMessage="Only Number" ForeColor="#FF3300" 
                    ValidationExpression="[0-9]*"></asp:RegularExpressionValidator>
&nbsp;
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                Vehicle Model</td>
            <td class="style2">
                <asp:TextBox ID="txtmodel" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="txtmodel" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                Vehicle Name</td>
            <td class="style2">
                <asp:TextBox ID="txtvehiclename" runat="server"></asp:TextBox>
&nbsp;&nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                Vehicle Type</td>
            <td class="style2">
                <asp:TextBox ID="txttype" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                Reason</td>
            <td class="style2">
                <asp:TextBox ID="txtreason" runat="server" TextMode="MultiLine" Height="56px" 
                    Width="204px"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" 
                    ControlToValidate="txtreason" ErrorMessage="Only Characters" ForeColor="Red" 
                    ValidationExpression="[a-z A-Z]*"></asp:RegularExpressionValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                Amount
            </td>
            <td class="style2">
                <asp:TextBox ID="txtamount" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                    ControlToValidate="txtamount" ErrorMessage="Enter the Amount,Only Number" 
                    ForeColor="#FF5050" ValidationExpression="[0-9]*"></asp:RegularExpressionValidator>
                </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style2">
                <asp:Button ID="bsave" runat="server" onclick="b1_Click" Text="Save" 
                    Height="35px" Width="71px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="bclear" runat="server" Text="Clear" onclick="bclear_Click" 
                    Height="33px" Width="69px" />
&nbsp;&nbsp;&nbsp;
                </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3" colspan="3">
                <asp:GridView ID="GridView1" runat="server" 
                    
                    onrowcancelingedit="GridView1_RowCancelingEdit" 
                    onrowdeleting="GridView1_RowDeleting" 
                   
                    AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" 
                    BorderStyle="None" BorderWidth="1px" CellPadding="4" 
                    Width="651px" onpageindexchanging="GridView1_PageIndexChanging" 
            onrowediting="GridView1_RowEditing" onrowupdating="GridView1_RowUpdating" 
            onselectedindexchanging="GridView1_SelectedIndexChanging" 
                    onselectedindexchanged="GridView1_SelectedIndexChanged">
                    <Columns>
                       
                        <asp:BoundField DataField="register_no" HeaderText="Register No" />
                        <asp:BoundField DataField="user_name" HeaderText="User Name" />
                        <asp:BoundField DataField="phone_no" HeaderText="Phone No" />
                        <asp:BoundField DataField="vehicle_name" HeaderText="Vehicle Name" />
                        <asp:BoundField DataField="reason" HeaderText="Reason" />
                         <asp:BoundField DataField="amount" HeaderText="Amount" />

                        <asp:CommandField ShowEditButton="True" CausesValidation="False" />
                        <asp:CommandField ShowDeleteButton="True" />
                         <asp:TemplateField Visible="false">
                        <ItemTemplate>
                            <asp:Label ID="lbl" runat="server" 
                            Text='<%# DataBinder.Eval(Container, "DataItem.ceasedvehicleid") %>'></asp:Label>
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
        </tr>
    </table>
    </asp:Content>

