<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true" CodeFile="drivinglicense.aspx.cs" Inherits="drivinglicense" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%;">
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <h2>Driving License</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                Learner License No</td>
            <td>
                <asp:TextBox ID="txtno" runat="server" AutoPostBack="True" 
                    ontextchanged="txtno_TextChanged"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                Driving License No</td>
            <td>
                <asp:TextBox ID="txtdriving" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="d1license" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;</td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </td>
        </tr>
        <tr>
            <td>
&nbsp;Name</td>
            <td>
                <asp:TextBox ID="txtname" runat="server" Height="22px" 
                    ontextchanged="txtname_TextChanged" ReadOnly="True"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtname" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="txtname" ErrorMessage="Enter Character" 
                    ForeColor="#FF3300" ValidationExpression="[a-z A-Z]*"></asp:RegularExpressionValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                Date Of Birth</td>
            <td>
                <asp:TextBox ID="txtdob" runat="server" ReadOnly="True"></asp:TextBox>
                <asp:CalendarExtender ID="txtdob_CalendarExtender" runat="server" 
                    Enabled="True" TargetControlID="txtdob" Format="yyyy-MM-dd">
                </asp:CalendarExtender>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="txtdob" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td>
                <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
                </asp:ToolkitScriptManager>
            </td>
        </tr>
        <tr>
            <td>
                Permanent Address</td>
            <td>
                <asp:TextBox ID="txtpaddress" runat="server" TextMode="MultiLine" Width="199px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ControlToValidate="txtpaddress" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                License</td>
            <td>
                <asp:DropDownList ID="d1license" runat="server">
                    <asp:ListItem>(a)Motor Cycle without Gear</asp:ListItem>
                    <asp:ListItem>(b)Motor Cycle with Gear</asp:ListItem>
                    <asp:ListItem>(c)Transport Vehicle</asp:ListItem>
                    <asp:ListItem>(d)4 Wheel Car</asp:ListItem>
                    <asp:ListItem>(e)Passenger Bus Vehicle</asp:ListItem>
                    <asp:ListItem>(f)Road Roller</asp:ListItem>
                    <asp:ListItem>(g)Heavy goods Vehicle</asp:ListItem>
                    <asp:ListItem>(h)Medium Passenger Motor vehicle</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                    ControlToValidate="d1license" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                Blood Group</td>
            <td>
                <asp:DropDownList ID="d2blood" runat="server">
                    <asp:ListItem>AB positive</asp:ListItem>
                    <asp:ListItem>Ab Negative</asp:ListItem>
                    <asp:ListItem>A Positive</asp:ListItem>
                    <asp:ListItem>A Negative</asp:ListItem>
                    <asp:ListItem>B Positive</asp:ListItem>
                    <asp:ListItem>B Negative</asp:ListItem>
                    <asp:ListItem>O Positive</asp:ListItem>
                    <asp:ListItem>O Negative</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                    ControlToValidate="d2blood" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                Phone No</td>
            <td>
                <asp:TextBox ID="txtphone" runat="server" ReadOnly="True"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                    ControlToValidate="txtphone" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                License Valid&nbsp; From</td>
            <td>
                <asp:TextBox ID="txtvalid" runat="server" AutoPostBack="True" 
                    ontextchanged="txtvalid_TextChanged"></asp:TextBox>
                <asp:CalendarExtender ID="txtvalid_CalendarExtender" runat="server" 
                    Enabled="True" TargetControlID="txtvalid" Format="yyyy-MM-dd">
                </asp:CalendarExtender>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="txtvalid" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                License Valid To</td>
            <td>
                <asp:TextBox ID="txtto" runat="server" ontextchanged="txtto_TextChanged"></asp:TextBox>
                <asp:CalendarExtender ID="txtto_CalendarExtender" runat="server" Enabled="True" 
                    TargetControlID="txtto"  Format="dd-MM-yyyy">
                </asp:CalendarExtender>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="txtto" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                Issue Date</td>
            <td>
                <asp:TextBox ID="txtdate" runat="server"></asp:TextBox>
                <asp:CalendarExtender ID="txtdate_CalendarExtender" runat="server" 
                    Enabled="True" TargetControlID="txtdate" Format="yyyy-MM-dd">
                </asp:CalendarExtender>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="txtdate" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                Submission Date</td>
            <td>
                <asp:TextBox ID="txtsubmission" runat="server"></asp:TextBox>
                <asp:CalendarExtender ID="txtsubmission_CalendarExtender" runat="server" 
                    Enabled="True" TargetControlID="txtsubmission" Format="yyyy-MM-dd">
                </asp:CalendarExtender>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Button ID="bsave" runat="server" onclick="bsave_Click" Text="Save" 
                    Height="39px" Width="61px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="bclear" runat="server" Text="Clear" onclick="bclear_Click" 
                    Height="38px" Width="64px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="3">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" 
                    CellPadding="3" CellSpacing="2" 
                    onpageindexchanging="GridView1_PageIndexChanging" 
                    onrowcancelingedit="GridView1_RowCancelingEdit" 
                    onrowdeleting="GridView1_RowDeleting" onrowediting="GridView1_RowEditing" 
                    onrowupdating="GridView1_RowUpdating" 
                    onselectedindexchanging="GridView1_SelectedIndexChanging" Width="426px">
                    <Columns>
                        <asp:BoundField DataField="user_name" HeaderText="User Name" />
                        <asp:BoundField DataField="drivinglicenseno" HeaderText=" licenseno" />
                        <asp:BoundField DataField="valid_from" HeaderText="Valid from" />
                        <asp:BoundField DataField="valid_to" HeaderText="Valid_to" />
                        <asp:BoundField DataField="issue_date" HeaderText="Issue Date" />
                      
                        <asp:CommandField CausesValidation="False" ShowEditButton="True" />
                        <asp:CommandField ShowDeleteButton="True" />
                        <asp:TemplateField Visible="false">
                            <ItemTemplate>
                                <asp:Label ID="lbl" runat="server" 
                                    Text='<%# DataBinder.Eval(Container,"DataItem.drivinglicenseid") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                    <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                    <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                    <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                    <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#FFF1D4" />
                    <SortedAscendingHeaderStyle BackColor="#B95C30" />
                    <SortedDescendingCellStyle BackColor="#F1E5CE" />
                    <SortedDescendingHeaderStyle BackColor="#93451F" />
                </asp:GridView>
            </td>
        </tr>
    </table>
</asp:Content>

