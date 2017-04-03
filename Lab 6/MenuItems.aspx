﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="MenuItems.aspx.cs" Inherits="SE256demoWEEK1.MenuItems" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphMain" runat="server">
All Menu Items
   
    <div class="row">
        <div class="col-md-12">
            <div class="table-responsive">

                <asp:GridView ID="gvMenuItems" runat="server" AutoGenerateColumns="false" DataSourceID="sdsMenuItems" CssClass="table" AllowSorting="true" AllowPaging="true" PageSize="10">
                    <Columns>
                        <asp:BoundField DataField="item_name" HeaderText="Item Name" SortExpression="item_name" />
                        <asp:BoundField DataField="item_desc" HeaderText="Item Desc" SortExpression="item_desc" />
                        <asp:BoundField DataField="item_allergens" HeaderText="Item Allergens" SortExpression="item_allergens" />
                        <asp:BoundField DataField="item_price" HeaderText="Item Price" SortExpression="item_price" />
                        <asp:BoundField DataField="item_gluten_free" HeaderText="Item Gluten Free" SortExpression="item_gluten_free" />
                        <asp:BoundField DataField="item_active" HeaderText="Item Active" SortExpression="item_active" />
                        <asp:BoundField DataField="cat_name" HeaderText="Cat Name" SortExpression="cat_name" />
                        <asp:BoundField DataField="menu_name" HeaderText="Menu Name" SortExpression="menu_name" />

                        <asp:HyperLinkField DataNavigateUrlFields="item_id" DataNavigateUrlFormatString="Admin/Menu-Item/{0}" Text="View/Edit" />

                    </Columns>
                    <PagerSettings Mode="NumericFirstLast" PageButtonCount="2" Position="TopAndBottom" />
                    <PagerStyle BackColor="YellowGreen" HorizontalAlign="Center" />
                </asp:GridView>
            </div>
            <asp:SqlDataSource ID="sdsMenuItems" runat="server" ConnectionString="<%$ ConnectionStrings:SE256_MurilloConnectionString %>" SelectCommand="menu_items_Get_All" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
        </div>
    </div>

</asp:Content>
