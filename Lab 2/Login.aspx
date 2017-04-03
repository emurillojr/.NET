<%@ Page Title="" Language="C#" MasterPageFile="~/Demo.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="SE256demoWEEK1.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphMain" runat="server">

    <br />
    <br />
    <div class="container-fluid">


        <form class="form-horizontal">
            <fieldset>
                <legend>Login To My Account</legend>
                <br />

                <div class="form-group">
                    <label for="Email" class="col-lg-2 control-label">Email:</label>
                    <div class="col-lg-10">
                        <input type="text" class="form-control" id="Email" placeholder="Email" />
                        <br />
                    </div>
                </div>


                <div class="form-group">
                    <label for="Password" class="col-lg-2 control-label">Password:</label>
                    <div class="col-lg-10">
                        <input type="text" class="form-control" id="Password" placeholder="Password" />
                        <br />
                        <a href="ForgotPassword.aspx">I forgot my password</a>
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                    </div>
                </div>


                <div class="form-group">
                    <div class="col-lg-10 col-lg-offset-2">
                        <button type="submit" class="btn btn-success">Login</button>
                    </div>
                </div>
            </fieldset>
        </form>

    </div>
    <br />
    <br />
    <br />
    <br />
    <br />

</asp:Content>
