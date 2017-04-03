<%@ Page Title="" Language="C#" MasterPageFile="~/Demo.Master" AutoEventWireup="true" CodeBehind="Reservations.aspx.cs" Inherits="SE256demoWEEK1.Reservations" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphMain" runat="server">

    <br />
    <br />
    <div class="container-fluid">


        <div class="form-horizontal">
            <fieldset>
                <legend>Online Reservation</legend>
                <br />
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
                        <input type="text" class="form-control" id="Date" placeholder="Date" />
                        <br />
                    </div>
                </div>
                <br />

                <div class="form-group">
                    <label for="Time" class="col-lg-2 control-label">Time:</label>
                    <div class="col-lg-10">
                        <input type="text" class="form-control" id="Time" placeholder="Time" />
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
