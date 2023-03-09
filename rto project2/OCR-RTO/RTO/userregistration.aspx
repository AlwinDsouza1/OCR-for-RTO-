<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage9.master" AutoEventWireup="true" CodeFile="userregistration.aspx.cs" Inherits="userregistration" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 140px;
        }
    .style2
    {
        width: 140px;
        height: 22px;
    }
    .style3
    {
        height: 22px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%;">
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td>
                <h3>User Registration</h3></td>
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
                Name</td>
            <td>
                <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="txtname" ErrorMessage="*" ForeColor="#FF3300"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                DOB</td>
            <td>
                <asp:TextBox ID="txtdob" runat="server"></asp:TextBox>
                <asp:CalendarExtender ID="txtdob_CalendarExtender" runat="server" 
                    Enabled="True" TargetControlID="txtdob" Format="yyyy-MM-dd">
                </asp:CalendarExtender>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtdob" ErrorMessage="*" ForeColor="#FF3300"></asp:RequiredFieldValidator>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
                </asp:ToolkitScriptManager>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                Address</td>
            <td>
                <asp:TextBox ID="txtaddress" runat="server" Height="52px" TextMode="MultiLine"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtaddress" ErrorMessage="*" ForeColor="#FF3300"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                Phone No</td>
            <td>
                <asp:TextBox ID="txtphone" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="txtphone" ErrorMessage="*" ForeColor="#FF3300"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                Password</td>
            <td>
                <asp:TextBox ID="txtpassword" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="txtpassword" ErrorMessage="*" ForeColor="#FF3300"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                Confirm Password</td>
            <td class="style3">
                <asp:TextBox ID="txtconfirm" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td class="style3">
                </td>
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
                &nbsp;</td>
            <td>
                <asp:Button ID="bsave" runat="server" onclick="bsave_Click" Text="Save" 
                    Height="33px" Width="64px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                <asp:Button ID="bclear" runat="server" Text="Clear" onclick="bclear_Click" 
                    Height="30px" Width="54px" CausesValidation="False" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Back" 
                    CausesValidation="False" />
                </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

