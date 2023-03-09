
<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true" CodeFile="vehicleregistration.aspx.cs" Inherits="vehicleregistration" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            height: 23px;
        }
        .style2
        {
            width: 321px;
        }
        .style3
        {
            height: 23px;
            width: 321px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%;">
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td>
                <h2>Vehicle Registration</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td>
                <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
                </asp:ToolkitScriptManager>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                Register No</td>
            <td>
                <asp:TextBox ID="txtregister" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtregister" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                Name</td>
            <td>
                <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtname" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="txtname" ErrorMessage="Enter Character" ForeColor="#FF3300" 
                    ValidationExpression="[a-z A-Z]*"></asp:RegularExpressionValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                Relation Name</td>
            <td class="style1">
                <asp:TextBox ID="txtrelationname" runat="server"></asp:TextBox>
            </td>
            <td class="style1">
                </td>
        </tr>
        <tr>
            <td class="style2">
                Relation Type</td>
            <td>
                <asp:TextBox ID="txtrelationtype" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                Age</td>
            <td>
                <asp:TextBox ID="txtage" runat="server"></asp:TextBox>
            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="txtage" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                DOB</td>
            <td>
                <asp:TextBox ID="txtdob" runat="server"></asp:TextBox>
                <asp:CalendarExtender ID="txtdob_CalendarExtender" runat="server" 
                    Enabled="True" TargetControlID="txtdob" Format="yyyy-MM-dd">
                </asp:CalendarExtender>
&nbsp;&nbsp;
                </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                Phone</td>
            <td>
                <asp:TextBox ID="txtphone" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                Permanent Address</td>
            <td>
                <asp:TextBox ID="txtpaddress" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="txtpaddress" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                Dealers Details</td>
            <td>
                <asp:TextBox ID="txtdetails" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                Motor vehicle</td>
            <td>
                <asp:DropDownList ID="d1" runat="server">
                    <asp:ListItem>New Vehicle</asp:ListItem>
                    <asp:ListItem>Ex-Army Vehicle</asp:ListItem>
                    <asp:ListItem>Imported Vehicle</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                Date of Vehicle Manufactured</td>
            <td>
                <asp:TextBox ID="txtdateofmanufacture" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                Manufacturer Name</td>
            <td>
                <asp:TextBox ID="txtmanufacturerename" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                Vehicle Name</td>
            <td>
                <asp:TextBox ID="txtvehiclename" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="txtvehiclename" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                Type Of Vehicle</td>
            <td>
                <asp:TextBox ID="txtvehicletype" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                Vehicle Color</td>
            <td>
                <asp:TextBox ID="txtcolor" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ControlToValidate="txtcolor" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                Horse power</td>
            <td>
                <asp:TextBox ID="txthorsepower" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                Chasis No</td>
            <td>
                <asp:TextBox ID="txtchasisno" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                Seating Capacity</td>
            <td>
                <asp:TextBox ID="txtseating" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                Fuel&nbsp; use in&nbsp; the Vehicle</td>
            <td>
                <asp:TextBox ID="txtfuel" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="txtfuel" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                weigth</td>
            <td>
                <asp:TextBox ID="txtweigth" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                Particulars&nbsp; Of&nbsp; Previous Registration</td>
            <td>
                <asp:TextBox ID="txtparticulars" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                Vehicle is Insured</td>
            <td>
                <asp:TextBox ID="txtvehicleinsured" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                VehicleInsured company Name</td>
            <td>
                <asp:TextBox ID="txtinsuredcompanyname" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                Valid From Date</td>
            <td>
                <asp:TextBox ID="txtfrom" runat="server"></asp:TextBox>
                <asp:CalendarExtender ID="txtfrom_CalendarExtender" runat="server" 
                    Enabled="True" TargetControlID="txtfrom" Format="yyyy-MM-dd">
                </asp:CalendarExtender>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                    ControlToValidate="txtfrom" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                Valid Date to</td>
            <td>
                <asp:TextBox ID="txtto" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td>
                <asp:Button ID="bsave" runat="server" Text="Save" onclick="b1_Click" 
                    Height="32px" Width="55px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="bclear" runat="server" Text="Clear" Height="33px" 
                    Width="51px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

