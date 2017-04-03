<%@ Page Title="" Language="C#" MasterPageFile="~/Demo.Master" AutoEventWireup="true" CodeBehind="Reservations.aspx.cs" Inherits="SE256demoWEEK1.Reservations" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphMain" runat="server">

    <br />
    <br />
    <%--<div class ="row">
            <div class ="col-md-12">
                <div class="table-responsive">
                
                <asp:GridView ID="gvReservations" runat="server" AutoGenerateColumns="false" DataSourceID="sdsReservations" CssClass="table" AllowSorting="true" AllowPaging="true" PageSize="10">
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
                       

                       <asp:HyperLinkField DataNavigateUrlFields="res_id" DataNavigateUrlFormatString="Reservation/{0}" Text="View/Edit"/>


                    </Columns>
                    <PagerSettings Mode="NumericFirstLast" PageButtonCount="2" Position="TopAndBottom" />
                    <PagerStyle BackColor="YellowGreen" HorizontalAlign="Center" />
                </asp:GridView>
                    </div>
                <asp:SqlDataSource ID="sdsReservations" runat="server" ConnectionString="<%$ ConnectionStrings:SE256_MurilloConnectionString %>" SelectCommand="reservations_Get_All" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
            </div>
        </div>--%>
    

    <div class="container-fluid">


        <div class="form-horizontal">
            <fieldset>
                <legend>Online Reservation</legend>
                <br />
                <div class="form-group">
                    <label for="Name" class="col-lg-2 control-label">Name:</label>
                    <div class="col-lg-10">
                        <input type="text" class="form-control" id="Name" placeholder="Name" runat="server" />  add this to all
                        <br />
                    </div>
                </div>


                <div class="form-group">
                    <label for="PhoneNumber" class="col-lg-2 control-label">Phone Number:</label>
                    <div class="col-lg-10">
                        <input type="text" class="form-control" id="PhoneNumber" placeholder="Phone Number" />
                        <br />
                    </div>
                </div>
                <br />

                <div class="form-group">
                    <label for="Guests" class="col-lg-2 control-label">Guest(s):</label>
                    <div class="col-lg-10">
                        <select class="form-control" id="Guests">
                            <option>1</option>
                            <option>2</option>
                            <option>3</option>
                            <option>4</option>
                            <option>5</option>
                            <option>6</option>
                            <option>7</option>
                            <option>8</option>
                            <option>9</option>
                            <option>10 or more</option>
                        </select>
                        <br />

                    </div>
                </div>

                <div class="form-group">
                    <label for="Date" class="col-lg-2 control-label">Date:</label>
                    <div class="col-lg-10">
                        <input type="date" class="form-control" id="Date" />
                        <br />
                    </div>
                </div>
                <br />

                <div class="form-group">
                    <label for="Time" class="col-lg-2 control-label">Time:</label>
                    <div class="col-lg-10">
                        <input type="time" class="form-control" id="Time" />
                        <br />
                    </div>
                </div>
                <br />



                <div class="form-group">
                    <label for="Comments" class="col-lg-2 control-label">Comments:</label>
                    <div class="col-lg-10">
                        <textarea class="form-control" rows="5" id="Comments"></textarea>
                        <span class="help-block" style="color: sandybrown">Please provide any additional information or special requests here.  Thank you.</span>
                        <br />
                        <br />
                    </div>
                </div>


                <div class="form-group">
                    <div class="col-lg-10 col-lg-offset-2">
                        <button type="reset" class="btn btn-primary">Cancel</button>
                        <button type="submit" class="btn btn-success">Find A Table</button>
                    </div>
                </div>
            </fieldset>
        </div>

    </div>
    <br />
    <br />
    <br />
    <br />
    <br />


</asp:Content>
