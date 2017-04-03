<%@ Page Title="" Language="C#" MasterPageFile="~/Demo.Master" AutoEventWireup="true" CodeBehind="ForgotPassword.aspx.cs" Inherits="SE256demoWEEK1.ForgotPassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphMain" runat="server">


    <br />
    <br />
    <div class="container-fluid">


        <form class="form-horizontal">
            <fieldset>
                <legend>Reset Password via Email</legend>
                <br />

                <div class="form-group">
                    <label for="Email" class="col-lg-2 control-label"></label>
                    <div class="col-lg-10">
                        Forgot your password? Just enter your email address below and we'll reset it.
                        <br />
                        <br />
                        <br />
                        Enter Your Email Address*
                        <br />
                        <input type="text" class="form-control" id="Email" />
                        <br />
                    </div>
                </div>

                <div class="form-group">
                    <div class="col-lg-10 col-lg-offset-2">
                        <br />
                        <br />
                        <button type="reset" class="btn btn-primary">Cancel</button>
                        <button type="submit" class="btn btn-success">Reset Password</button>
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
