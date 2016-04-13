<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Maint_Search.aspx.cs" Inherits="Maint_Search" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
    .style1
    {
        width: 100%;
        font-weight: 700;
        color: #FFFFFF;
        background-image: url('PICS/curly_leaves-wallpaper-1366x768.jpg');
    }
    .style2
    {
        width: 92px;
    }
    .style3
    {
        width: 189px;
    }
    .style4
    {
        color: #000000;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <table class="style1">
    <caption class="style4">
        SEARCH MAINTAINANCE</caption>
    <tr>
        <td class="style2">
            &nbsp;</td>
        <td class="style3">
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style2">
            &nbsp;</td>
        <td class="style3">
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style2">
            &nbsp;</td>
        <td class="style3">
            ENTER OWNER ID:-&nbsp;</td>
        <td>
            <asp:TextBox ID="txt_ownerID" runat="server" AutoPostBack="True" 
                TextMode="Number"></asp:TextBox>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style2">
            &nbsp;</td>
        <td class="style3">
            SELECT MONTH :-</td>
        <td>
            <asp:DropDownList ID="ddMonth" runat="server" AutoPostBack="True" 
                DataSourceID="SqlDataSource1" DataTextField="MAINT_MONTH" 
                DataValueField="MAINT_MONTH">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:HousingDbConnectionString %>" 
                SelectCommand="SELECT [MAINT_MONTH] FROM [tbl_Maint] WHERE ([OWNER_ID] = @OWNER_ID)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="txt_ownerID" Name="OWNER_ID" 
                        PropertyName="Text" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style2">
            &nbsp;</td>
        <td class="style3">
            SELECT YEAR:-</td>
        <td>
            <asp:DropDownList ID="ddYear" runat="server" AutoPostBack="True" 
                DataSourceID="SqlDataSource2" DataTextField="MAINT_YEAR" 
                DataValueField="MAINT_YEAR">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                ConnectionString="<%$ ConnectionStrings:HousingDbConnectionString %>" 
                SelectCommand="SELECT [MAINT_YEAR] FROM [tbl_Maint] WHERE (([OWNER_ID] = @OWNER_ID) AND ([MAINT_MONTH] = @MAINT_MONTH))">
                <SelectParameters>
                    <asp:ControlParameter ControlID="txt_ownerID" Name="OWNER_ID" 
                        PropertyName="Text" Type="Int32" />
                    <asp:ControlParameter ControlID="ddMonth" Name="MAINT_MONTH" 
                        PropertyName="SelectedValue" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style2">
            &nbsp;</td>
        <td class="style3">
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style2">
            &nbsp;</td>
        <td class="style3">
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style2">
            &nbsp;</td>
        <td class="style3">
            &nbsp;</td>
        <td>
            <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" 
                AutoGenerateRows="False" BackColor="White" BorderColor="#999999" 
                BorderStyle="Solid" BorderWidth="1px" CellPadding="3" 
                DataSourceID="SqlDataSource3" ForeColor="Black" GridLines="Vertical" 
                Height="50px" Width="364px">
                <AlternatingRowStyle BackColor="#CCCCCC" />
                <EditRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                <Fields>
                    <asp:BoundField DataField="MAINT_YEAR" HeaderText="MAINT_YEAR" 
                        SortExpression="MAINT_YEAR" />
                    <asp:BoundField DataField="MAINT_MONTH" HeaderText="MAINT_MONTH" 
                        SortExpression="MAINT_MONTH" />
                    <asp:BoundField DataField="OWNER_ID" HeaderText="OWNER_ID" 
                        SortExpression="OWNER_ID" />
                    <asp:BoundField DataField="FLAT_WING" HeaderText="FLAT_WING" 
                        SortExpression="FLAT_WING" />
                    <asp:BoundField DataField="FLAT_NO" HeaderText="FLAT_NO" 
                        SortExpression="FLAT_NO" />
                    <asp:BoundField DataField="OWNER_NAME" HeaderText="OWNER_NAME" 
                        SortExpression="OWNER_NAME" />
                    <asp:BoundField DataField="FLAT_SIZE" HeaderText="FLAT_SIZE" 
                        SortExpression="FLAT_SIZE" />
                    <asp:BoundField DataField="FLAT_SQFT" HeaderText="FLAT_SQFT" 
                        SortExpression="FLAT_SQFT" />
                    <asp:BoundField DataField="FLAT_MAINT" HeaderText="FLAT_MAINT" 
                        SortExpression="FLAT_MAINT" />
                    <asp:BoundField DataField="PARKING" HeaderText="PARKING" 
                        SortExpression="PARKING" />
                    <asp:BoundField DataField="OWNERSHIP_DATE" HeaderText="OWNERSHIP_DATE" 
                        SortExpression="OWNERSHIP_DATE" />
                    <asp:BoundField DataField="OTHER_EXP" HeaderText="OTHER_EXP" 
                        SortExpression="OTHER_EXP" />
                    <asp:BoundField DataField="TOTAL" HeaderText="TOTAL" SortExpression="TOTAL" />
                </Fields>
                <FooterStyle BackColor="#CCCCCC" />
                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                ConnectionString="<%$ ConnectionStrings:HousingDbConnectionString %>" 
                SelectCommand="SELECT * FROM [tbl_Maint] WHERE (([MAINT_MONTH] = @MAINT_MONTH) AND ([MAINT_YEAR] = @MAINT_YEAR) AND ([OWNER_ID] = @OWNER_ID))">
                <SelectParameters>
                    <asp:ControlParameter ControlID="ddMonth" Name="MAINT_MONTH" 
                        PropertyName="SelectedValue" Type="String" />
                    <asp:ControlParameter ControlID="ddYear" Name="MAINT_YEAR" 
                        PropertyName="SelectedValue" Type="Decimal" />
                    <asp:ControlParameter ControlID="txt_ownerID" Name="OWNER_ID" 
                        PropertyName="Text" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style2">
            &nbsp;</td>
        <td class="style3">
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style2">
            &nbsp;</td>
        <td class="style3">
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style2">
            &nbsp;</td>
        <td class="style3">
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style2">
            &nbsp;</td>
        <td class="style3">
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style2">
            &nbsp;</td>
        <td class="style3">
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style2">
            &nbsp;</td>
        <td class="style3">
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style2">
            &nbsp;</td>
        <td class="style3">
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style2">
            &nbsp;</td>
        <td class="style3">
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style2">
            &nbsp;</td>
        <td class="style3">
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style2">
            &nbsp;</td>
        <td class="style3">
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style2">
            &nbsp;</td>
        <td class="style3">
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style2">
            &nbsp;</td>
        <td class="style3">
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style2">
            &nbsp;</td>
        <td class="style3">
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style2">
            &nbsp;</td>
        <td class="style3">
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style2">
            &nbsp;</td>
        <td class="style3">
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style2">
            &nbsp;</td>
        <td class="style3">
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style2">
            &nbsp;</td>
        <td class="style3">
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
</table>
</asp:Content>

