<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="New_Owner.aspx.cs" Inherits="New_Owner" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
            font-weight: 700;
            color: #FFFFFF;
            background-image: url('PICS/black_wood-wallpaper-1366x768.jpg');
            font-size: medium;
            font-family: "Segoe UI";
        }
        .style2
        {
            height: 21px;
        }
        .style3
        {
            width: 266px;
        }
        .style4
        {
            height: 21px;
            width: 266px;
        }
        .style5
        {
            height: 26px;
        }
        .style6
        {
            width: 266px;
            height: 26px;
        }
        .style7
        {
            height: 25px;
        }
        .style8
        {
            width: 266px;
            height: 25px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <table class="style1">
        <caption style="color: #000000">
            NEW OWNER FORM</caption>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
            </td>
            <td class="style6">
                OWNER ID:-</td>
            <td class="style5">
                <asp:TextBox ID="txt_ID" runat="server" TextMode="Number" Enabled="False"></asp:TextBox>
            </td>
            <td class="style5">
            </td>
            <td class="style5">
            </td>
            <td class="style5">
            </td>
        </tr>
        <tr>
            <td class="style2">
            </td>
            <td class="style4">
                FLAT WING:-</td>
            <td class="style2">
                <asp:DropDownList ID="ddWing" runat="server" AutoPostBack="True" 
                    DataSourceID="SqlDataSource1" DataTextField="Flat_Wing" 
                    DataValueField="Flat_Wing">
                    <asp:ListItem>A-Wing</asp:ListItem>
                    <asp:ListItem>B-Wing</asp:ListItem>
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:HousingDbConnectionString %>" 
                    SelectCommand="SELECT DISTINCT [Flat_Wing] FROM [tbl_Flats]">
                </asp:SqlDataSource>
            </td>
            <td class="style2">
            </td>
            <td class="style2">
            </td>
            <td class="style2">
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style3">
                FLAT NO:-</td>
            <td>
                <asp:DropDownList ID="ddFlatNo" runat="server" AutoPostBack="True" 
                    DataSourceID="SqlDataSource2" DataTextField="Flat_No" DataValueField="Flat_No" 
                    onselectedindexchanged="ddFlatNo_SelectedIndexChanged">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:HousingDbConnectionString %>" 
                    SelectCommand="SELECT [Flat_No] FROM [tbl_Flats] WHERE ([Flat_Wing] = @Flat_Wing) ORDER BY [Flat_No]">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="ddWing" Name="Flat_Wing" 
                            PropertyName="SelectedValue" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style3">
                OWNER NAME:-</td>
            <td>
                <asp:TextBox ID="txt_ownerName" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txt_ownerName" ErrorMessage="*Required Field"></asp:RequiredFieldValidator>
&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ErrorMessage="*Invalid Name" ValidationExpression="[a-zA-Z ]*$" 
                    ControlToValidate="txt_ownerName"></asp:RegularExpressionValidator>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style3">
                FLAT SIZE:-</td>
            <td>
                <asp:TextBox ID="txt_FlatSize" runat="server" Enabled="False"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style3">
                FLAT SQ.FT:-</td>
            <td>
                <asp:TextBox ID="txt_sqFt" runat="server" TextMode="Number" Enabled="False"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style3">
                FLAT MAINT:-</td>
            <td>
                <asp:TextBox ID="txt_Maint" runat="server" TextMode="Number" Enabled="False"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style3">
                PARKING :-</td>
            <td>
                <asp:DropDownList ID="ddParking" runat="server" AutoPostBack="True">
                    <asp:ListItem>YES</asp:ListItem>
                    <asp:ListItem>NO</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style3">
                OWNERSHIP GAINED FROM:-</td>
            <td>
                <asp:TextBox ID="txt_ownerShip" runat="server" TextMode="Date"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txt_ownerShip" ErrorMessage="*Required Field"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style3">
                CHOOSE FAV. QUESTION:-</td>
            <td>
                <asp:DropDownList ID="ddFav" runat="server" AutoPostBack="True" Height="24px" 
                    Width="301px">
                    <asp:ListItem>What was your favorite place to visit as a child?</asp:ListItem>
                    <asp:ListItem>Who is your favorite actor, musician, or artist?</asp:ListItem>
                    <asp:ListItem>What is your favorite movie?</asp:ListItem>
                    <asp:ListItem>In what city were you born?</asp:ListItem>
                    <asp:ListItem>Which is your favorite web browser?</asp:ListItem>
                    <asp:ListItem>What street did you grow up on?</asp:ListItem>
                    <asp:ListItem>What is your father&#39;s middle name?</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style3">
                ENTER ANSWER:-</td>
            <td>
                <asp:TextBox ID="txt_answer" runat="server" Height="24px" Width="301px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td>
                
                <asp:ImageButton ID="btn_Save" runat="server" Height="64px" 
                    ImageUrl="~/PICS/128x128/001.png" Width="82px" onclick="btn_Save_Click" />
                
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style7">
                </td>
            <td class="style8">
                </td>
            <td class="style7">
                <asp:Label ID="Label1" runat="server"></asp:Label>
                </td>
            <td class="style7">
                </td>
            <td class="style7">
                </td>
            <td class="style7">
                </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style3">
                *Please Note Owner ID Is UserName and OwnerName Is Password</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

