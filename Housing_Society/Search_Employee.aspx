<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Search_Employee.aspx.cs" Inherits="Search_Employee" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
    .style1
    {
        width: 100%;
        background-image: url('PICS/black_baroque_pattern-wallpaper-1366x768.jpg');
    }
    .style2
    {
        width: 99px;
    }
    .style3
    {
        width: 178px;
    }
    .style4
    {
        width: 178px;
        color: #FFFFFF;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <table class="style1">
    <caption>
        SEARCH-UPDATE-DELETE-EMPLOYEE</caption>
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
            <strong>Enter Employee ID:-</strong></td>
        <td>
            <asp:TextBox ID="txt_empID" runat="server"></asp:TextBox>
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
                DataKeyNames="emp_id" DataSourceID="SqlDataSource1" ForeColor="Black" 
                Height="69px" Width="210px">
                <EditRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                <Fields>
                    <asp:BoundField DataField="emp_id" HeaderText="emp_id" ReadOnly="True" 
                        SortExpression="emp_id" />
                    <asp:BoundField DataField="emp_name" HeaderText="emp_name" 
                        SortExpression="emp_name" />
                    <asp:BoundField DataField="emp_desgn" HeaderText="emp_desgn" 
                        SortExpression="emp_desgn" />
                    <asp:BoundField DataField="emp_salary" HeaderText="emp_salary" 
                        SortExpression="emp_salary" />
                    <asp:BoundField DataField="emp_mob" HeaderText="emp_mob" 
                        SortExpression="emp_mob" />
                    <asp:BoundField DataField="emp_email" HeaderText="emp_email" 
                        SortExpression="emp_email" />
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
                DeleteCommand="DELETE FROM [tbl_Employee] WHERE [emp_id] = @original_emp_id AND (([emp_name] = @original_emp_name) OR ([emp_name] IS NULL AND @original_emp_name IS NULL)) AND (([emp_desgn] = @original_emp_desgn) OR ([emp_desgn] IS NULL AND @original_emp_desgn IS NULL)) AND (([emp_salary] = @original_emp_salary) OR ([emp_salary] IS NULL AND @original_emp_salary IS NULL)) AND (([emp_mob] = @original_emp_mob) OR ([emp_mob] IS NULL AND @original_emp_mob IS NULL)) AND (([emp_email] = @original_emp_email) OR ([emp_email] IS NULL AND @original_emp_email IS NULL))" 
                InsertCommand="INSERT INTO [tbl_Employee] ([emp_id], [emp_name], [emp_desgn], [emp_salary], [emp_mob], [emp_email]) VALUES (@emp_id, @emp_name, @emp_desgn, @emp_salary, @emp_mob, @emp_email)" 
                OldValuesParameterFormatString="original_{0}" 
                SelectCommand="SELECT * FROM [tbl_Employee] WHERE ([emp_id] = @emp_id)" 
                UpdateCommand="UPDATE [tbl_Employee] SET [emp_name] = @emp_name, [emp_desgn] = @emp_desgn, [emp_salary] = @emp_salary, [emp_mob] = @emp_mob, [emp_email] = @emp_email WHERE [emp_id] = @original_emp_id AND (([emp_name] = @original_emp_name) OR ([emp_name] IS NULL AND @original_emp_name IS NULL)) AND (([emp_desgn] = @original_emp_desgn) OR ([emp_desgn] IS NULL AND @original_emp_desgn IS NULL)) AND (([emp_salary] = @original_emp_salary) OR ([emp_salary] IS NULL AND @original_emp_salary IS NULL)) AND (([emp_mob] = @original_emp_mob) OR ([emp_mob] IS NULL AND @original_emp_mob IS NULL)) AND (([emp_email] = @original_emp_email) OR ([emp_email] IS NULL AND @original_emp_email IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="original_emp_id" Type="Int32" />
                    <asp:Parameter Name="original_emp_name" Type="String" />
                    <asp:Parameter Name="original_emp_desgn" Type="String" />
                    <asp:Parameter Name="original_emp_salary" Type="Decimal" />
                    <asp:Parameter Name="original_emp_mob" Type="Decimal" />
                    <asp:Parameter Name="original_emp_email" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="emp_id" Type="Int32" />
                    <asp:Parameter Name="emp_name" Type="String" />
                    <asp:Parameter Name="emp_desgn" Type="String" />
                    <asp:Parameter Name="emp_salary" Type="Decimal" />
                    <asp:Parameter Name="emp_mob" Type="Decimal" />
                    <asp:Parameter Name="emp_email" Type="String" />
                </InsertParameters>
                <SelectParameters>
                    <asp:ControlParameter ControlID="txt_empID" Name="emp_id" PropertyName="Text" 
                        Type="Int32" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="emp_name" Type="String" />
                    <asp:Parameter Name="emp_desgn" Type="String" />
                    <asp:Parameter Name="emp_salary" Type="Decimal" />
                    <asp:Parameter Name="emp_mob" Type="Decimal" />
                    <asp:Parameter Name="emp_email" Type="String" />
                    <asp:Parameter Name="original_emp_id" Type="Int32" />
                    <asp:Parameter Name="original_emp_name" Type="String" />
                    <asp:Parameter Name="original_emp_desgn" Type="String" />
                    <asp:Parameter Name="original_emp_salary" Type="Decimal" />
                    <asp:Parameter Name="original_emp_mob" Type="Decimal" />
                    <asp:Parameter Name="original_emp_email" Type="String" />
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
</table>
</asp:Content>

