<%@ Page Title="" Language="C#" MasterPageFile="~/Midterm.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="EMurillo_MIDTERM_._default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphMain" runat="server">

    <br />
    <br />
    <div class="container-fluid">


        <div class="form-horizontal">
            <fieldset>
                <legend>Form Page</legend>
                <br />

                <%--State--%>
                <div class="form-group">
                    <asp:Label ID="lblState" runat="server" Text="State:" CssClass="col-lg-2 control-label"></asp:Label>
                    <div class="col-lg-5">
                           <asp:DropDownList ID="ddlStates" runat="server" CssClass="form-control" DataSourceID="sdsStates" DataTextField="State_Full_Name" DataValueField="state_id"></asp:DropDownList>
                        <asp:SqlDataSource ID="sdsStates" runat="server" ConnectionString="<%$ ConnectionStrings:SE256_MurilloConnectionString %>" SelectCommand="States_Get_All" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                        <asp:RequiredFieldValidator ID="rfvState" runat="server" ErrorMessage="Required*" ControlToValidate="ddlStates"></asp:RequiredFieldValidator>
                    </div>
                    <div class="col-lg-5"></div>
                </div>
                <%-- closes class="form-group"> above--%>


                <%--Name--%>
                <div class="form-group">
                    <%--spacing for text to aline with textboxes--%>
                    <div class="col-lg-10 col-lg-offset-2">
                        <p></p>
                    </div>
                    <asp:Label ID="lblName" runat="server" Text="Name:" CssClass="col-lg-2 control-label"></asp:Label>
                    <div class="col-lg-5">
                        <asp:TextBox ID="txtName" runat="server" CssClass="form-control"> </asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvName" runat="server" ErrorMessage="Required*" ControlToValidate="txtName"></asp:RequiredFieldValidator>
                    </div>
                    <div class="col-lg-5"></div>
                </div>
                <%-- closes class="form-group"> above--%>

                 <div class="form-group">
                    <asp:Label ID="lblEmail" runat="server" Text="Email:" CssClass="col-lg-2 control-label"></asp:Label>
                    <div class="col-lg-5">
                        <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control"> </asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ErrorMessage="Required*" ControlToValidate="txtEmail"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="rexEmail" runat="server" ErrorMessage="Not a valid Email" ControlToValidate="txtEmail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        <asp:CompareValidator ID="cvEmail" runat="server" ErrorMessage="Emails must match" ControlToValidate="txtEmail" Operator="Equal" Type="String" ControlToCompare="txtConfirmEmail"></asp:CompareValidator>

                    </div>
                    <div class="col-lg-5"></div>
                </div>
                <%-- closes class="form-group"> above--%>

                <div class="form-group">
                    <asp:Label ID="lblConfirmEmail" runat="server" Text="Confirm Email:" CssClass="col-lg-2 control-label"></asp:Label>
                    <div class="col-lg-5">
                        <asp:TextBox ID="txtConfirmEmail" runat="server" CssClass="form-control"> </asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvConfirmEmail" runat="server" ErrorMessage="Required*" ControlToValidate="txtConfirmEmail"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="rexConfirmEmail" runat="server" ErrorMessage="Not a valid Email" ControlToValidate="txtConfirmEmail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        <asp:CompareValidator ID="cvConfirmEmail" runat="server" ErrorMessage="Emails must match" ControlToValidate="txtConfirmEmail" Operator="Equal" Type="String" ControlToCompare="txtEmail"></asp:CompareValidator>

                    </div>
                    <div class="col-lg-5"></div>
                </div>
                <%-- closes class="form-group"> above--%>


                <div class="form-group">
                    <asp:Label ID="Label1" class="col-lg-2 control-label" runat="server" Text="Comments"></asp:Label>
                    <div class="col-lg-10">
                        <asp:TextBox ID="txtComments" runat="server" class="form-control" rows="5" TextMode="MultiLine"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvComments" runat="server" ErrorMessage="Required*" ControlToValidate="txtComments"></asp:RequiredFieldValidator>
                        
           <br />
                        <br />
                    </div>
                </div>

                <div class="form-group">
                    <asp:Label ID="lblAgree" runat="server" Text="Agree:" CssClass="col-lg-2 control-label"></asp:Label>
                    <div class="col-lg-5">
                        <asp:CheckBox ID="chkAgree" runat="server" /> I agree and sign this petition
                    </div>
                    <div class="col-lg-5"></div>

                </div>





                <br />
                <div class="form-group">
                    <div class="col-lg-10 col-lg-offset-2">
                        <br />
                        <br />
                        <%--<button type="reset" class="btn btn-primary">Cancel</button>--%>
                        <%--<button type="submit" class="btn btn-success">Reset Password</button>--%>
                        <asp:LinkButton ID="lbtnSubmit" runat="server" CssClass="btn btn-success">Submit</asp:LinkButton>
                        <%--*********onclick links to function on thispage.aspx.cs--%>
                        <asp:LinkButton ID="lbtnCancel" runat="server" CssClass="btn btn-primary" CausesValidation="False">Cancel</asp:LinkButton>



                    </div>
                </div>

            </fieldset>
        </div>
        <%--closes class="form-horizontal">--%>
    </div>
    <%--closes class="container-fluid"--%>
</asp:Content>




