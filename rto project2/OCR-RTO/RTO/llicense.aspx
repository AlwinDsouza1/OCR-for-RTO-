<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage4.master" AutoEventWireup="true" CodeFile="llicense.aspx.cs" Inherits="llicense" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<script runat="server">

   
</script>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 288px;
        }
        .style2
        {
        width: 245px;
    }
        .style3
        {
            width: 288px;
            height: 43px;
        }
        .style4
        {
            width: 245px;
            height: 43px;
        }
        .style5
        {
            height: 43px;
        }
        .style6
        {
            width: 288px;
            height: 32px;
        }
        .style7
        {
        width: 245px;
        height: 32px;
    }
        .style8
        {
            height: 32px;
        }
        .style12
        {
            width: 288px;
            height: 27px;
        }
        .style13
        {
        width: 245px;
        height: 27px;
    }
        .style14
        {
            height: 27px;
        }
        .style15
        {
            width: 288px;
            height: 25px;
        }
        .style16
        {
            width: 245px;
            height: 25px;
        }
        .style17
        {
            height: 25px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        &nbsp;<br />
        <table style="width:100%;">
            <tr>
                <td class="style1">
                    &nbsp;</td>
                <td class="style2">
                    Learners License Form</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1">
                    Learner License No 
                    (remember llicense&nbsp; No)</td>
                <td class="style2">
                   <h3><asp:Label ID="lblLicenseno" runat="server"></asp:Label></h3>
                </td>
                <td>
                    Upload&nbsp; Passport size Photo </td>
            </tr>
            <tr>
                <td class="style1">
                    Name</td>
                <td class="style2">
                    <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
                &nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="txtname" ErrorMessage="*" ForeColor="#FF3300"></asp:RequiredFieldValidator>
&nbsp;
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ControlToValidate="txtname" ErrorMessage="Only Characters" 
                        ValidationExpression="[a-z A-Z]*"></asp:RegularExpressionValidator>
                </td>
                <td>
                    <asp:FileUpload ID="FileUpload1" runat="server" Height="37px" />
                &nbsp;</td>
            </tr>
            <tr>
                <td class="style1">
                    Gender</td>
                <td class="style2">
                    <asp:RadioButtonList ID="r1" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style6">
                    Date Of&nbsp; Birth</td>
                <td class="style7">
                    <asp:TextBox ID="txtdob" runat="server" AutoPostBack="True" 
                        ontextchanged="txtdob_TextChanged"></asp:TextBox>
                    <asp:CalendarExtender ID="txtdob_CalendarExtender" runat="server" 
                        Enabled="True" TargetControlID="txtdob" Format="yyyy-MM-dd">
                    </asp:CalendarExtender>
&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="txtdob" ErrorMessage="*" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                </td>
                <td class="style8">
                    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
                    </asp:ToolkitScriptManager>
                </td>
            </tr>
            <tr>
                <td class="style6">
                    Age</td>
                <td class="style7">
                    <asp:TextBox ID="txtage" runat="server" ontextchanged="txtage_TextChanged"></asp:TextBox>
                </td>
                <td class="style8">
                    Upload Your Address Proof(Adhar Card,Ration Card,SSLC marks Card)</td>
            </tr>
            <tr>
                <td class="style12">
                    Place Of Birth</td>
                <td class="style13">
                    <asp:DropDownList ID="txtplace" runat="server">
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
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                        ControlToValidate="txtplace" ErrorMessage="*" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                &nbsp;</td>
                <td class="style14">
                    <asp:FileUpload ID="FileUpload2" runat="server" Height="23px" />
                    </td>
            </tr>
            <tr>
                <td class="style1">
                    Relation Name</td>
                <td class="style2">
                    <asp:TextBox ID="txtrelationname" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
                        ControlToValidate="txtrelationname" ErrorMessage="*" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                        ControlToValidate="txtrelationname" ErrorMessage="Only Characters" 
                        ValidationExpression="[a-z A-Z]*"></asp:RegularExpressionValidator>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1">
                    Relation type</td>
                <td class="style2">
                    <asp:TextBox ID="txttype" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" 
                        ControlToValidate="txttype" ErrorMessage="*" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                        ControlToValidate="txttype" ErrorMessage="Only Characters" 
                        ValidationExpression="[a-z A-Z]*"></asp:RegularExpressionValidator>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1">
                    License authorized&nbsp; to drive as a learner</td>
                <td class="style2">
                    <asp:DropDownList ID="d1" runat="server">
                        <asp:ListItem> Motor cycle without gear</asp:ListItem>
                        <asp:ListItem> Motor cycle with gear</asp:ListItem>
                        <asp:ListItem> Transport Vehicle</asp:ListItem>
                        <asp:ListItem> Wheel Car</asp:ListItem>
                        <asp:ListItem> Passager Bus Vehicle</asp:ListItem>
                        <asp:ListItem> Road roller</asp:ListItem>
                        <asp:ListItem> Medium Passenger Motor Vehicle.</asp:ListItem>
                        <asp:ListItem> Heavy Goods Vehicle.</asp:ListItem>
                    </asp:DropDownList>
                &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ControlToValidate="d1" ErrorMessage="*" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1">
                    Permanent Address</td>
                <td class="style2">
                    <asp:TextBox ID="txtpaddress" runat="server" TextMode="MultiLine"></asp:TextBox>
                &nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="txtpaddress" ErrorMessage="*" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1">
                    Temporary Address</td>
                <td class="style2">
                    <asp:TextBox ID="txttaddess" runat="server" TextMode="MultiLine" Height="64px" 
                        Width="257px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" 
                        ControlToValidate="txttaddess" ErrorMessage="*" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1">
                    Education Qualification</td>
                <td class="style2">
                    <asp:TextBox ID="txteducation" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                        ControlToValidate="txteducation" ErrorMessage="*" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1">
                    City</td>
                <td class="style2">
                    <asp:TextBox ID="txtcity" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="txtcity" ErrorMessage="*" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style12">
                    Phone NO</td>
                <td class="style13">
                    <asp:TextBox ID="txtphone" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                        ControlToValidate="txtphone" ErrorMessage="*" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" 
                        ControlToValidate="txtphone" ErrorMessage="Only Number" 
                        ValidationExpression="[0-9]*" ForeColor="#FF3300"></asp:RegularExpressionValidator>
                </td>
                <td class="style14">
                    </td>
            </tr>
            <tr>
                <td class="style12">
                    E-Mail</td>
                <td class="style13">
                    <asp:TextBox ID="txtphone0" runat="server"></asp:TextBox>
                    <asp:TextBox ID="txtemail" runat="server" TextMode="MultiLine"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                        ControlToValidate="txtemail" ErrorMessage="Enter Email format" 
                        ForeColor="#FF3300" 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                        ControlToValidate="txtemail" ErrorMessage="*" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                </td>
                <td class="style14">
                    </td>
            </tr>
            <tr>
                <td class="style1">
                    Blood Group</td>
                <td class="style2">
                <asp:DropDownList ID="d2blood" runat="server" Height="19px" Width="63px">
                    <asp:ListItem>O positive</asp:ListItem>
                    <asp:ListItem>O negative</asp:ListItem>
                    <asp:ListItem>A positive</asp:ListItem>
                    <asp:ListItem>A negative</asp:ListItem>
                    <asp:ListItem>AB positive</asp:ListItem>
                    <asp:ListItem>AB negative</asp:ListItem>
                    <asp:ListItem Value="B+">B positive</asp:ListItem>
                    <asp:ListItem>B negative</asp:ListItem>
                </asp:DropDownList>
                &nbsp;&nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                        ControlToValidate="d2blood" ErrorMessage="*" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                    </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3">
              Pysically 
                    fit?</td>
                <td class="style4">
                    <asp:RadioButtonList ID="r2" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem>Yes</asp:ListItem>
                        <asp:ListItem>No</asp:ListItem>
                    </asp:RadioButtonList>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:RequiredFieldValidator 
                        ID="RequiredFieldValidator10" runat="server" 
                        ControlToValidate="r2" ErrorMessage="*" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                    &nbsp;
                </td>
                <td class="style5">
                    &nbsp;&nbsp;</td>
            </tr>
            <tr>
                <td class="style15">
                    &nbsp;Fees Amount to pay</td>
                <td class="style16">
                   <h3> <asp:Label ID="txtamount" runat="server" Text="Rs.500" ForeColor="Red"></asp:Label></h3>
</td>
                <td class="style17">
                    </td>
            </tr>
            <tr>
                <td class="style1">
                    Applying&nbsp; Date</td>
                <td class="style2">
                    <asp:Label ID="txtdate" runat="server"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1">
                    &nbsp;</td>
                <td class="style2">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1">
                    &nbsp;</td>
                <td class="style2">
                    <asp:Button ID="bsave" runat="server" Text="Submit" onclick="bsave_Click1" Width="90px"
                        Font-Size="Large" Height="50px" />
                </td>
                <td>
                    <asp:Button ID="bclear" runat="server" Text="Clear" onclick="bclear_Click1" Width="90px"
                        Font-Size="Large" Height="50px"  />
                </td>
            </tr>
            <tr>
                <td class="style1">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    &nbsp;</td>
                <td class="style2">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;
                </td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    </p>
    <br />
    </asp:Content>

