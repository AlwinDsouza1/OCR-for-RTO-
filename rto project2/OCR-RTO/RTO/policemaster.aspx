<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="policemaster.aspx.cs" Inherits="policemaster" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%;">
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td>
                <h2>Traffic Police Master</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                Traffic Police Name</td>
            <td>
                <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="txtname" ErrorMessage="only name" 
                    ValidationExpression="[a-z A-Z]*" ForeColor="#FF3300"></asp:RegularExpressionValidator>
&nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtname" ErrorMessage="*" ForeColor="#FF3300"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                Designation</td>
            <td>
                <asp:TextBox ID="txtdesignation" runat="server"></asp:TextBox>
            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtdesignation" ErrorMessage="*" ForeColor="#FF3300"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                DOB</td>
            <td>
                <asp:TextBox ID="txtdob" runat="server" AutoPostBack="True" Height="25px" 
                    ontextchanged="txtdob_TextChanged"></asp:TextBox>
                <asp:CalendarExtender ID="txtdob_CalendarExtender" runat="server" 
                    Enabled="True" TargetControlID="txtdob" Format="yyyy-MM-dd">
                </asp:CalendarExtender>
            &nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="txtdob" ErrorMessage="*" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
                </asp:ToolkitScriptManager>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                Age</td>
            <td>
                <asp:TextBox ID="txtage" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="txtage" ErrorMessage="*" ForeColor="#FF3300"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                Address</td>
            <td>
                <asp:TextBox ID="txtaddress" runat="server" TextMode="MultiLine" Width="231px"></asp:TextBox>
            &nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="txtaddress" ErrorMessage="*" ForeColor="#FF3300"></asp:RequiredFieldValidator>
            &nbsp;
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                    ControlToValidate="txtaddress" ErrorMessage="only name" 
                    ValidationExpression="[a-z A-Z]*" ForeColor="#FF3300"></asp:RegularExpressionValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                city</td>
            <td>
                <asp:DropDownList ID="txtcity" runat="server">
                <asp:ListItem>bagalkot</asp:ListItem>
                    <asp:ListItem>bidar</asp:ListItem>
                     <asp:ListItem>gulbarga</asp:ListItem>
                      <asp:ListItem>bijapur</asp:ListItem>
                       <asp:ListItem>yadgir</asp:ListItem>
                        <asp:ListItem>Bangalore</asp:ListItem>
                         <asp:ListItem>belgum</asp:ListItem>
                          <asp:ListItem>raichur</asp:ListItem>
                           <asp:ListItem>dharwad</asp:ListItem>
                            <asp:ListItem>gadag</asp:ListItem>
                             <asp:ListItem>koppal</asp:ListItem>
                              <asp:ListItem>bellary</asp:ListItem>
                               <asp:ListItem>haveri</asp:ListItem>
                                <asp:ListItem>karvar</asp:ListItem>
                                 <asp:ListItem>davangere</asp:ListItem>
                                  <asp:ListItem>Mangalore</asp:ListItem>
                                   <asp:ListItem>shivmoga</asp:ListItem>
                                    <asp:ListItem>Udupi</asp:ListItem>
                                     <asp:ListItem>chikmangalore</asp:ListItem>
                                      <asp:ListItem>coorg</asp:ListItem>
                                       <asp:ListItem>mysore</asp:ListItem>
                                        <asp:ListItem>kolar</asp:ListItem>
                                         <asp:ListItem>chanapatna</asp:ListItem>
                                          <asp:ListItem>haveri</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                Phone No</td>
            <td>
                <asp:TextBox ID="txtphone" runat="server"></asp:TextBox>
            &nbsp;&nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="txtphone" ErrorMessage="*" ForeColor="#FF3300"></asp:RequiredFieldValidator>
            &nbsp;&nbsp;
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ControlToValidate="txtphone" ErrorMessage="Only numbers" ForeColor="#FF3300" 
                    ValidationExpression="[0-9]*"></asp:RegularExpressionValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                Education Qualification</td>
            <td>
                <asp:DropDownList ID="txteducation" runat="server">
                    <asp:ListItem>2nd PU</asp:ListItem>
                    <asp:ListItem>Diploma</asp:ListItem>
                    <asp:ListItem>B COM</asp:ListItem>
                    <asp:ListItem>BAHRD</asp:ListItem>
                    <asp:ListItem>BCA</asp:ListItem>
                    <asp:ListItem>BE</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ControlToValidate="txteducation" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td>
                <asp:Button ID="bsave" runat="server" onclick="b1_Click" Text="Save" 
                    Height="43px" Width="54px" />
&nbsp;&nbsp;&nbsp;
                <asp:Button ID="bclear" runat="server" Text="Clear" onclick="bclear_Click" 
                    Height="35px" Width="56px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1" colspan="3">
                 <asp:GridView ID="GridView1" runat="server" 
                    
                    onrowcancelingedit="GridView1_RowCancelingEdit" 
                    onrowdeleting="GridView1_RowDeleting" 
                   
                    AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" 
                    BorderStyle="None" BorderWidth="1px" CellPadding="4" 
                    Width="501px" onpageindexchanging="GridView1_PageIndexChanging" 
            onrowediting="GridView1_RowEditing" onrowupdating="GridView1_RowUpdating" 
            onselectedindexchanging="GridView1_SelectedIndexChanging" Height="131px">
                    <Columns>
                       
                        <asp:BoundField DataField="police_name" HeaderText="Name" />
                        <asp:BoundField DataField="age" HeaderText="Age" />
                        <asp:BoundField DataField="address" HeaderText="Address" />
                        <asp:BoundField DataField="phone_no" HeaderText="Phone No" />
                        
                        <asp:CommandField ShowEditButton="True" CausesValidation="False" />
                        <asp:CommandField ShowDeleteButton="True" />
                         <asp:TemplateField Visible="false">
                        <ItemTemplate>
                            <asp:Label ID="lbl" runat="server" 
                            Text='<%# DataBinder.Eval(Container, "DataItem.policemasterid") %>'></asp:Label>
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
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td>
                
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

