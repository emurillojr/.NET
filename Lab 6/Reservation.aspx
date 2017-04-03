<%@ Page Title="" Language="C#" MasterPageFile="~/Demo.Master" AutoEventWireup="true" CodeBehind="Reservation.aspx.cs" Inherits="SE256demoWEEK1.Reservations1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cphMain" runat="server">


<br />
    
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-12">

                Res_ID = <asp:Label ID="lblRes_ID" runat="server" ></asp:Label>
                <br />
                Guest_ID = <asp:Label ID="lblGuest_ID" runat="server" ></asp:Label>
                <br />
                Tbl_ID = <asp:Label ID="lblTbl_ID" runat="server" ></asp:Label>
                <br />
                User_ID = <asp:Label ID="lblUser_ID" runat="server" ></asp:Label>
                <br />
                Res_Date = <asp:Label ID="lblRes_Date" runat="server" ></asp:Label>
                <br />
                Red_Time = <asp:Label ID="lblRed_Time" runat="server" ></asp:Label>
                <br />
                Res_Guest_Cnt = <asp:Label ID="lblRes_Guest_Cnt" runat="server" ></asp:Label>
                <br />
                Res_Spec_Req = <asp:Label ID="lblRes_Spec_Req" runat="server" ></asp:Label>
                <br />
             
                <%--  --%>


            </div>
        </div>
    </div>
    <br />


</asp:Content>
