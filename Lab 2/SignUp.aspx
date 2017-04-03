<%@ Page Title="" Language="C#" MasterPageFile="~/Demo.Master" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="SE256demoWEEK1.SignUp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphMain" runat="server">

    <br />
    <br />
    <div class="container-fluid">

        <form class="form-horizontal">
            <fieldset>
                <legend>Join Our eClub</legend>
                <div class="form-group">
                    <label for="Name" class="col-lg-2 control-label">Name:</label>
                    <div class="col-lg-10">
                        <input type="text" class="form-control" id="Name" placeholder="Name" />
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
                    <label for="Email" class="col-lg-2 control-label">Email:</label>
                    <div class="col-lg-10">
                        <input type="text" class="form-control" id="Email" placeholder="Email" />
                        <br />
                    </div>
                </div>
                <br />

                <div class="form-group">
                    <label for="Birthday" class="col-lg-2 control-label">Birthday:</label>
                    <div class="col-lg-10">
                        <input type="text" class="form-control" id="Birthday" placeholder="Birthday" />
                        <br />
                    </div>
                </div>
                <br />

                <div class="checkbox">
                    <label for="Checkbox" class="col-lg-2 control-label"></label>
                    <div class="col-lg-10">
                        <input type="checkbox" />
                        I would like to subscribe to the newsletter.  Please send me offers from Sofia's Italian Kitchen.
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                    </div>
                </div>



                <div class="form-group">
                    <div class="col-lg-10 col-lg-offset-2">
                        <button type="reset" class="btn btn-primary">Cancel</button>
                        <button type="submit" class="btn btn-success">Sign Up</button>
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                    </div>
                </div>

            </fieldset>
        </form>
    </div>



</asp:Content>
