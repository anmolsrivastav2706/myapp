<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Employee_Form.aspx.cs" Inherits="Employee_Form" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
            font-weight: 700;
            font-size: medium;
            font-family: "Segoe UI";
            color: #0000CC;
        }
        .style2
        {
            width: 50px;
        }
        .style3
        {
            width: 50px;
            height: 21px;
        }
        .style4
        {
            height: 21px;
        }
        .style5
        {
            width: 159px;
        }
        .style6
        {
            height: 21px;
            width: 159px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <table class="style1">
        <caption>
            EMPLOYEE FORM</caption>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style5">
                Employee ID-</td>
            <td>
                <asp:TextBox ID="txt_id" runat="server" AutoPostBack="True" 
                    CausesValidation="True" TextMode="Number" Enabled="False"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txt_id" ErrorMessage="*Please Enter Value"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style5">
                Employee Name:-</td>
            <td>
                <asp:TextBox ID="txt_name" runat="server" AutoPostBack="True" 
                    CausesValidation="True"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txt_name" ErrorMessage="*Please Enter Value"></asp:RequiredFieldValidator>
            &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1" 
                    runat="server" ControlToValidate="txt_name" ErrorMessage="  *Invalid Value" 
                    ValidationExpression="[a-zA-Z ]*$"></asp:RegularExpressionValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style5">
                Employee Designation:-</td>
            <td>
                <asp:TextBox ID="txt_desgn" runat="server" AutoPostBack="True" 
                    CausesValidation="True"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="txt_desgn" ErrorMessage="*Please Enter Value"></asp:RequiredFieldValidator>
            &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator2" 
                    runat="server" ControlToValidate="txt_desgn" ErrorMessage="  *Invalid Value" 
                    ValidationExpression="[a-zA-Z ]*$"></asp:RegularExpressionValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style5">
                Employee Salary:-</td>
            <td>
                <asp:TextBox ID="txt_sal" runat="server" AutoPostBack="True" 
                    CausesValidation="True" TextMode="Number"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="txt_sal" ErrorMessage="*Please Enter Value"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style5">
                Employee Mob:-</td>
            <td>
                <asp:TextBox ID="txt_mob" runat="server" AutoPostBack="True" 
                    CausesValidation="True" TextMode="Number"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="txt_mob" ErrorMessage="*Please Enter Value"></asp:RequiredFieldValidator>
            &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                    ControlToValidate="txt_mob" ErrorMessage="*Invalid Mobile Number" 
                    Font-Bold="True" ForeColor="#000066" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
            </td>
            <td class="style6">
                Employee Email:-</td>
            <td class="style4">
                <asp:TextBox ID="txt_email" runat="server" AutoPostBack="True" 
                    CausesValidation="True" TextMode="Email"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="txt_email" ErrorMessage="*Please Enter Value"></asp:RequiredFieldValidator>
            </td>
            <td class="style4">
            </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td>
                <asp:Button ID="btn_save" runat="server" Height="28px" onclick="btn_save_Click" 
                    Text="SAVE" Width="112px" BackColor="Yellow" Font-Bold="True" 
                    Font-Italic="True" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td>
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

