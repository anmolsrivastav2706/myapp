<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Search_Owner.aspx.cs" Inherits="Search_Owner" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
    .style1
    {
        width: 100%;
        background-image: url('PICS/black_baroque_pattern-wallpaper-1366x768.jpg');
    }
    .style2
    {
        width: 62px;
    }
    .style3
    {
        width: 205px;
    }
    .style4
    {
        width: 205px;
        color: #FFFFFF;
    }
    .style5
    {
        color: #000000;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <table class="style1">
    <caption class="style5">
        <strong>SEARCH-DELETE-UPDATE-OWNER</strong></caption>
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
        <td class="style4">
            <strong>Enter Owner ID:-</strong></td>
        <td>
            <asp:TextBox ID="txt_ownerID" runat="server" TextMode="Number"></asp:TextBox>
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
            <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" 
                AutoGenerateRows="False" BackColor="#CCCCCC" BorderColor="#999999" 
                BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" 
                DataKeyNames="OWNER_ID" DataSourceID="SqlDataSource1" ForeColor="Black" 
                Height="50px" Width="304px">
                <EditRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                <Fields>
                    <asp:BoundField DataField="OWNER_ID" HeaderText="OWNER_ID" ReadOnly="True" 
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
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                        ShowInsertButton="True" />
                </Fields>
                <FooterStyle BackColor="#CCCCCC" />
                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                <RowStyle BackColor="White" />
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConflictDetection="CompareAllValues" 
                ConnectionString="<%$ ConnectionStrings:HousingDbConnectionString %>" 
                DeleteCommand="DELETE FROM [tbl_NewOwner] WHERE [OWNER_ID] = @original_OWNER_ID AND (([FLAT_WING] = @original_FLAT_WING) OR ([FLAT_WING] IS NULL AND @original_FLAT_WING IS NULL)) AND (([FLAT_NO] = @original_FLAT_NO) OR ([FLAT_NO] IS NULL AND @original_FLAT_NO IS NULL)) AND (([OWNER_NAME] = @original_OWNER_NAME) OR ([OWNER_NAME] IS NULL AND @original_OWNER_NAME IS NULL)) AND (([FLAT_SIZE] = @original_FLAT_SIZE) OR ([FLAT_SIZE] IS NULL AND @original_FLAT_SIZE IS NULL)) AND (([FLAT_SQFT] = @original_FLAT_SQFT) OR ([FLAT_SQFT] IS NULL AND @original_FLAT_SQFT IS NULL)) AND (([FLAT_MAINT] = @original_FLAT_MAINT) OR ([FLAT_MAINT] IS NULL AND @original_FLAT_MAINT IS NULL)) AND (([PARKING] = @original_PARKING) OR ([PARKING] IS NULL AND @original_PARKING IS NULL)) AND (([OWNERSHIP_DATE] = @original_OWNERSHIP_DATE) OR ([OWNERSHIP_DATE] IS NULL AND @original_OWNERSHIP_DATE IS NULL))" 
                InsertCommand="INSERT INTO [tbl_NewOwner] ([OWNER_ID], [FLAT_WING], [FLAT_NO], [OWNER_NAME], [FLAT_SIZE], [FLAT_SQFT], [FLAT_MAINT], [PARKING], [OWNERSHIP_DATE]) VALUES (@OWNER_ID, @FLAT_WING, @FLAT_NO, @OWNER_NAME, @FLAT_SIZE, @FLAT_SQFT, @FLAT_MAINT, @PARKING, @OWNERSHIP_DATE)" 
                OldValuesParameterFormatString="original_{0}" 
                SelectCommand="SELECT * FROM [tbl_NewOwner] WHERE ([OWNER_ID] = @OWNER_ID)" 
                UpdateCommand="UPDATE [tbl_NewOwner] SET [FLAT_WING] = @FLAT_WING, [FLAT_NO] = @FLAT_NO, [OWNER_NAME] = @OWNER_NAME, [FLAT_SIZE] = @FLAT_SIZE, [FLAT_SQFT] = @FLAT_SQFT, [FLAT_MAINT] = @FLAT_MAINT, [PARKING] = @PARKING, [OWNERSHIP_DATE] = @OWNERSHIP_DATE WHERE [OWNER_ID] = @original_OWNER_ID AND (([FLAT_WING] = @original_FLAT_WING) OR ([FLAT_WING] IS NULL AND @original_FLAT_WING IS NULL)) AND (([FLAT_NO] = @original_FLAT_NO) OR ([FLAT_NO] IS NULL AND @original_FLAT_NO IS NULL)) AND (([OWNER_NAME] = @original_OWNER_NAME) OR ([OWNER_NAME] IS NULL AND @original_OWNER_NAME IS NULL)) AND (([FLAT_SIZE] = @original_FLAT_SIZE) OR ([FLAT_SIZE] IS NULL AND @original_FLAT_SIZE IS NULL)) AND (([FLAT_SQFT] = @original_FLAT_SQFT) OR ([FLAT_SQFT] IS NULL AND @original_FLAT_SQFT IS NULL)) AND (([FLAT_MAINT] = @original_FLAT_MAINT) OR ([FLAT_MAINT] IS NULL AND @original_FLAT_MAINT IS NULL)) AND (([PARKING] = @original_PARKING) OR ([PARKING] IS NULL AND @original_PARKING IS NULL)) AND (([OWNERSHIP_DATE] = @original_OWNERSHIP_DATE) OR ([OWNERSHIP_DATE] IS NULL AND @original_OWNERSHIP_DATE IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="original_OWNER_ID" Type="Int32" />
                    <asp:Parameter Name="original_FLAT_WING" Type="String" />
                    <asp:Parameter Name="original_FLAT_NO" Type="String" />
                    <asp:Parameter Name="original_OWNER_NAME" Type="String" />
                    <asp:Parameter Name="original_FLAT_SIZE" Type="String" />
                    <asp:Parameter Name="original_FLAT_SQFT" Type="Decimal" />
                    <asp:Parameter Name="original_FLAT_MAINT" Type="Decimal" />
                    <asp:Parameter Name="original_PARKING" Type="String" />
                    <asp:Parameter DbType="Date" Name="original_OWNERSHIP_DATE" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="OWNER_ID" Type="Int32" />
                    <asp:Parameter Name="FLAT_WING" Type="String" />
                    <asp:Parameter Name="FLAT_NO" Type="String" />
                    <asp:Parameter Name="OWNER_NAME" Type="String" />
                    <asp:Parameter Name="FLAT_SIZE" Type="String" />
                    <asp:Parameter Name="FLAT_SQFT" Type="Decimal" />
                    <asp:Parameter Name="FLAT_MAINT" Type="Decimal" />
                    <asp:Parameter Name="PARKING" Type="String" />
                    <asp:Parameter DbType="Date" Name="OWNERSHIP_DATE" />
                </InsertParameters>
                <SelectParameters>
                    <asp:ControlParameter ControlID="txt_ownerID" Name="OWNER_ID" 
                        PropertyName="Text" Type="Int32" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="FLAT_WING" Type="String" />
                    <asp:Parameter Name="FLAT_NO" Type="String" />
                    <asp:Parameter Name="OWNER_NAME" Type="String" />
                    <asp:Parameter Name="FLAT_SIZE" Type="String" />
                    <asp:Parameter Name="FLAT_SQFT" Type="Decimal" />
                    <asp:Parameter Name="FLAT_MAINT" Type="Decimal" />
                    <asp:Parameter Name="PARKING" Type="String" />
                    <asp:Parameter DbType="Date" Name="OWNERSHIP_DATE" />
                    <asp:Parameter Name="original_OWNER_ID" Type="Int32" />
                    <asp:Parameter Name="original_FLAT_WING" Type="String" />
                    <asp:Parameter Name="original_FLAT_NO" Type="String" />
                    <asp:Parameter Name="original_OWNER_NAME" Type="String" />
                    <asp:Parameter Name="original_FLAT_SIZE" Type="String" />
                    <asp:Parameter Name="original_FLAT_SQFT" Type="Decimal" />
                    <asp:Parameter Name="original_FLAT_MAINT" Type="Decimal" />
                    <asp:Parameter Name="original_PARKING" Type="String" />
                    <asp:Parameter DbType="Date" Name="original_OWNERSHIP_DATE" />
                </UpdateParameters>
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

