<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="ResMgmt.aspx.cs" Inherits="SE256demoWEEK1.ResMgmt" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cphMain" runat="server">


This is the Res Mgmt PAGE
    <div class ="row">
            <div class ="col-md-12">
                <div class="table-responsive">
                
                <asp:GridView ID="gvResMgmt" runat="server" AutoGenerateColumns="false" DataSourceID="sdsResMgmt" CssClass="table" AllowSorting="true" AllowPaging="true" PageSize="10">
                    <Columns>
                        <asp:BoundField DataField="res_id" HeaderText="Res ID" SortExpression="res_id" />
                        <asp:BoundField DataField="guest_id" HeaderText="Guest ID" SortExpression="guest_id" />
                        <asp:BoundField DataField="tbl_id" HeaderText="Table ID" SortExpression="tbl_id" />
                        <asp:BoundField DataField="user_id" HeaderText="User ID" SortExpression="user_id" />
                        <asp:BoundField DataField="res_date" HeaderText="Res Date" SortExpression="res_date" />
                        <asp:BoundField DataField="res_time" HeaderText="Res Time" SortExpression="res_time" />
                        <asp:BoundField DataField="res_guest_cnt" HeaderText="Res Guest Count" SortExpression="res_guest_cnt" />
                        <asp:BoundField DataField="res_spec_req" HeaderText="Res Special Request" SortExpression="res_spec_req" />
                        <asp:BoundField DataField="guest_name" HeaderText="Gues Name" SortExpression="guest_name" />
                        <asp:BoundField DataField="tbl_name" HeaderText="Table Name" SortExpression="tbl_name" />
                        <asp:BoundField DataField="employee" HeaderText="Employee" SortExpression="employee" />
                       

                       <asp:HyperLinkField DataNavigateUrlFields="res_id" DataNavigateUrlFormatString="Admin/Reservation/{0}" Text="View/Edit"/>


                    </Columns>
                    <PagerSettings Mode="NumericFirstLast" PageButtonCount="2" Position="TopAndBottom" />
                    <PagerStyle BackColor="YellowGreen" HorizontalAlign="Center" />
                </asp:GridView>
                    </div>
                <asp:SqlDataSource ID="sdsResMgmt" runat="server" ConnectionString="<%$ ConnectionStrings:SE256_MurilloConnectionString %>" SelectCommand="reservations_Get_All" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
            </div>
        </div>



</asp:Content>
