<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Tables.aspx.cs" Inherits="SE256demoWEEK1.Tables" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cphMain" runat="server">

This is the Tables PAGE - this is where all tables will be listed


    <div class ="row">
            <div class ="col-md-12">
                <div class="table-responsive">
                
                <asp:GridView ID="gvTables" runat="server" AutoGenerateColumns="false" DataSourceID="sdsTables" CssClass="table" AllowSorting="true" AllowPaging="true" PageSize="10">
                    <Columns>
                        <asp:BoundField DataField="tbl_active" HeaderText="Table Active" SortExpression="tbl_active" />
                        <asp:BoundField DataField="tbl_seat_cnt" HeaderText="Table Seat Count" SortExpression="tbl_seat_cnt" />
                        <asp:BoundField DataField="tbl_desc" HeaderText="Table Desc" SortExpression="tbl_desc" />
                        <asp:BoundField DataField="tbl_name" HeaderText="Table Name" SortExpression="tbl_name" />
                        <asp:BoundField DataField="sect_id" HeaderText="Section ID" SortExpression="sect_id" />
                        <asp:BoundField DataField="tbl_id" HeaderText="Table ID" SortExpression="tbl_id" />
                        <asp:BoundField DataField="sect_name" HeaderText="Section Name" SortExpression="sect_name" />
                       

                       <asp:HyperLinkField DataNavigateUrlFields="tbl_id" DataNavigateUrlFormatString="Admin/Table/{0}" Text="View/Edit"/>


                    </Columns>
                    <PagerSettings Mode="NumericFirstLast" PageButtonCount="2" Position="TopAndBottom" />
                    <PagerStyle BackColor="YellowGreen" HorizontalAlign="Center" />
                </asp:GridView>
                    </div>
                <asp:SqlDataSource ID="sdsTables" runat="server" ConnectionString="<%$ ConnectionStrings:SE256_MurilloConnectionString %>" SelectCommand="tables_Get_All" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
            </div>
        </div>


</asp:Content>
