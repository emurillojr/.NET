<%@ Page Title="" Language="C#" MasterPageFile="~/Demo.Master" AutoEventWireup="true" CodeBehind="Reservation.aspx.cs" Inherits="SE256demoWEEK1.Reservation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphMain" runat="server">
    <br />
    <br />

    <div class="container-fluid">
        <div class="form-horizontal">
            <fieldset>
                <legend>Reservation Page</legend>
                <br />
                   
      <div id ="GUESTINFO" runat="server">
                <div class="form-group">
                    <asp:Label ID="lblGuestEmail" runat="server" Text="Guest Email:" CssClass="col-lg-2 control-label"></asp:Label>
                    <div class="col-lg-5">
                        <asp:TextBox ID="txtGuestEmail" runat="server" CssClass="form-control"> </asp:TextBox>
                        <asp:RegularExpressionValidator ID="rexGuestEmail" runat="server" ErrorMessage="Not a valid Email" ControlToValidate="txtGuestEmail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                       <%-- <asp:CompareValidator ID="cvBothGuestEmails1" runat="server" ErrorMessage="Emails must match" ControlToValidate="txtGuestEmail" Operator="Equal" Type="String" ControlToCompare="txtConfirmGuestEmail"></asp:CompareValidator>--%>

                    </div>
                    <div class="col-lg-5"></div>
                </div>

                 <div class="form-group">
                    <%--spacing for text to aline with textboxes--%>
                    <div class="col-lg-10 col-lg-offset-2">
                        <p></p>
                    </div>
                    <asp:Label ID="lblGuestFirstName" runat="server" Text="Guest First Name:" CssClass="col-lg-2 control-label"></asp:Label>
                    <div class="col-lg-5">
                        <asp:TextBox ID="txtGuestFirstName" runat="server" CssClass="form-control"> </asp:TextBox>
                    </div>
                    <div class="col-lg-5"></div>
                </div>
                <%-- closes class="form-group"> above--%>

                <div class="form-group">
                    <%--spacing for text to aline with textboxes--%>
                    <asp:Label ID="lblGuestLastName" runat="server" Text="Guest Last Name:" CssClass="col-lg-2 control-label"></asp:Label>
                    <div class="col-lg-5">
                        <asp:TextBox ID="txtGuestLastName" runat="server" CssClass="form-control"> </asp:TextBox>
                    </div>
                    <div class="col-lg-5"></div>
                </div>
                <%-- closes class="form-group"> above--%>

                <div class="form-group">
                    <asp:Label ID="lblGuestPhone" runat="server" Text="Guest Phone Number:" CssClass="col-lg-2 control-label"></asp:Label>
                    <div class="col-lg-5">
                        <asp:TextBox ID="txtGuestPhone" runat="server" CssClass="form-control"> </asp:TextBox>
                        <asp:RegularExpressionValidator ID="rexGuestPhone" runat="server" ErrorMessage="Not a valid Phone Number" ControlToValidate="txtGuestPhone" ValidationExpression="((\(\d{3}\) ?)|(\d{3}))?\d{3}\d{4}"></asp:RegularExpressionValidator>
                    </div>
                    <div class="col-lg-5"></div>
                </div>
                <%-- closes class="form-group"> above--%>
</div>                

                <div class="form-group">
                    <div class="col-lg-10 col-lg-offset-2">
                        <p></p>
                    </div>
                    <%--<asp:Label ID="lblGuestID" runat="server" Text="Guest ID:" CssClass="col-lg-2 control-label"></asp:Label>  --%>
                    <div class="col-lg-5">
                        <%-- <asp:TextBox ID="txtGuestID" runat="server" CssClass="form-control" > </asp:TextBox> --%>
                        <asp:HiddenField ID="hidetxtGuestID" runat="server" />
                    </div>
                    <div class="col-lg-5"></div>
                </div>

                <div class="form-group">
                    <div class="col-lg-10 col-lg-offset-2">
                        <p></p>
                    </div>
                    <%-- <asp:Label ID="lblTblID" runat="server" Text="Table ID:" CssClass="col-lg-2 control-label"></asp:Label>--%>
                    <div class="col-lg-5">
                        <%--<asp:TextBox ID="txtTblID" runat="server" CssClass="form-control"> </asp:TextBox>--%>
                        <asp:HiddenField ID="hidetxtTblID" runat="server" />
                    </div>
                    <div class="col-lg-5"></div>
                </div>

                <div class="form-group">
                    <div class="col-lg-10 col-lg-offset-2">
                        <p></p>
                    </div>
                    <%--       ********         user id = employee name            --%>
                    <asp:Label ID="lblUserID" runat="server" Text="Employee:" CssClass="col-lg-2 control-label"></asp:Label>
                    <div class="col-lg-5">
                       <%-- <asp:TextBox ID="txtUserID" runat="server" CssClass="form-control"> </asp:TextBox>--%>
                    
         <%--**************  edited users_Get_All stored procedure to get last, first name as employee     --%>           
                    <asp:DropDownList ID="ddlEmployee" runat="server" CssClass="form-control" DataSourceID="sdsEmployee" DataTextField="employee" DataValueField="user_id"></asp:DropDownList>
                    <asp:SqlDataSource ID="sdsEmployee" runat="server" ConnectionString="<%$ ConnectionStrings:SE256_MurilloConnectionString %>" SelectCommand="users_Get_All" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                    </div>
                    <div class="col-lg-5"></div>
                </div>

                <div class="form-group">
                    <%--spacing for text to aline with textboxes--%>
                    <div class="col-lg-10 col-lg-offset-2">
                        <p></p>
                    </div>
                    <asp:Label ID="lblResDate" runat="server" Text="Reservation Date:" CssClass="col-lg-2 control-label"></asp:Label>
                    <div class="col-lg-5">
                        <asp:TextBox ID="txtResDate" runat="server" CssClass="form-control" TextMode="Date"> </asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvResDate" runat="server" ErrorMessage="Required*" ControlToValidate="txtResDate"></asp:RequiredFieldValidator>
                    </div>
                    <div class="col-lg-5"></div>
                </div>
                <%-- closes class="form-group"> above--%>

                <div class="form-group">
                    <%--spacing for text to aline with textboxes--%>
                    <asp:Label ID="lblResTime" runat="server" Text="Reservation Time:" CssClass="col-lg-2 control-label"></asp:Label>
                    <div class="col-lg-5">
                        <asp:TextBox ID="txtResTime" runat="server" CssClass="form-control" TextMode="Time"> </asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvResTime" runat="server" ErrorMessage="Required*" ControlToValidate="txtResTime"></asp:RequiredFieldValidator>
                    </div>
                    <div class="col-lg-5"></div>
                </div>
                <%-- closes class="form-group"> above--%>

                <div class="form-group">
                    <%--spacing for text to aline with textboxes--%>
                    <asp:Label ID="lblResGuestCnt" runat="server" Text="Reservation Guest Count:" CssClass="col-lg-2 control-label"></asp:Label>
                    <div class="col-lg-5">
                        <asp:TextBox ID="txtResGuestCnt" runat="server" CssClass="form-control"> </asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvResGuestCnt" runat="server" ErrorMessage="Required*" ControlToValidate="txtResGuestCnt"></asp:RequiredFieldValidator>

                    </div>
                    <div class="col-lg-5"></div>
                </div>
                <%-- closes class="form-group"> above--%>

                <div class="form-group">
                    <%--spacing for text to aline with textboxes--%>
                    <asp:Label ID="lblResSpecReq" runat="server" Text="Reservation Special Request:" CssClass="col-lg-2 control-label"></asp:Label>
                    <div class="col-lg-5">
                        <asp:TextBox ID="txtResSpecReq" runat="server" CssClass="form-control"> </asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvResSpecReq" runat="server" ErrorMessage="Required*" ControlToValidate="txtResSpecReq"></asp:RequiredFieldValidator>

                    </div>
                    <div class="col-lg-5"></div>
                </div>
                <%-- closes class="form-group"> above--%>




                <br />
                <div class="form-group">
                    <div class="col-lg-10 col-lg-offset-2">
                        <br />
                        <br />
                        <%--<button type="reset" class="btn btn-primary">Cancel</button>--%>
                        <%--<button type="submit" class="btn btn-success">Reset Password</button>--%>
                        <%--  <asp:LinkButton ID="lbtnUpdate" runat="server"CssClass="btn btn-success" OnClick="lbtnUpdate_Click" >Update</asp:LinkButton>
                        --%>
                        <asp:LinkButton ID="lbtnUpdate" runat="server" CssClass="btn btn-success" OnClick="lbtnUpdate_Click">Update</asp:LinkButton>

                        <%--    <asp:LinkButton ID="lbtnCancel" runat="server"CssClass="btn btn-primary" OnClick="lbtnCancel_Click" CausesValidation="False">Cancel</asp:LinkButton>--%>


                        <%--*********onclick links to function on thispage.aspx.cs--%>
                        <asp:LinkButton ID="lbtnCancel" runat="server" CssClass="btn btn-primary" OnClick="lbtnCancel_Click" CausesValidation="False">Cancel</asp:LinkButton>

                    </div>
                </div>

            </fieldset>
        </div>
        <%--closes class="form-horizontal">--%>
    </div>


</asp:Content>
