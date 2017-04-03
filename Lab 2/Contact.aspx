<%@ Page Title="" Language="C#" MasterPageFile="~/Demo.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="SE256demoWEEK1.Directions" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphMain" runat="server">

    <br />
    <br />
    <div class="container-fluid">


        <form class="form-horizontal">
            <fieldset>
                <legend>Contact Us</legend>
                <br />

                <div class="form-group">
                    <label for="Comments" class="col-lg-2 control-label">Comments:</label>
                    <div class="col-lg-10">
                        <textarea class="form-control" rows="5" id="Comments"></textarea>
                        <span class="help-block" style="color: sandybrown">In order to best serve you, please help us by providing your information below so that we may follow up regarding your questions or comments. Thank you.</span>
                        <br />
                        <br />
                    </div>
                </div>


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
                    <div class="col-lg-10 col-lg-offset-2">
                        <button type="reset" class="btn btn-primary">Cancel</button>
                        <button type="submit" class="btn btn-success">Send Message</button>
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
