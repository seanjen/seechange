<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Priorities.aspx.cs" Inherits="SeeChange.Introduction" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
    <script>

        $(function () {
            $("#accordion").accordion();
        });

        $(function() {
            $("#safety").slider({
                value: 0,
                orientation: "horizontal",
                range: "min",
                animate: true
            });
        });

        $(function() {
            $("#employment").slider({
                value: 0,
                orientation: "horizontal",
                range: "min",
                animate: true
            });
        });

        $(function() {
            $("#housing").slider({
                value: 0,
                orientation: "horizontal",
                range: "min",
                animate: true
            });
        });

        $(function() {
            $("#health").slider({
                value: 0,
                orientation: "horizontal",
                range: "min",
                animate: true
            });
        });

        $(function() {
            $("#transport").slider({
                value: 0,
                orientation: "horizontal",
                range: "min",
                animate: true
            });
        });

        $(function() {
            $("#education").slider({
                value: 0,
                orientation: "horizontal",
                range: "min",
                animate: true
            });
        });

        $(function() {
            $("#arts").slider({
                value: 0,
                orientation: "horizontal",
                range: "min",
                animate: true
            });
        });

    </script>

    <div class="see-change">

    <div class="content">
             
    <ol id="stepbar" class="clearfix">
        <li class="passed">1. Create Your Profile</li>
        <li class="passed">2. Town Information</li>
        <li class="selected">3. Relocation Priorities</li>
        <li>4. Find my New Home</li>
    </ol>

    </div>

    <div class="content">

       <h1>Set Your Priorities</h1>

       <br />

    </div>

    <div class="content">

       <i>Safety</i><div id="safety"style="width:300px; margin:15px;"></div>

       <i>Employment</i><div id="employment" style="width:300px; margin:15px;"></div>

       <i>Housing</i><div id="housing" style="width:300px; margin:15px;"></div>

       <i>Health</i><div id="health" style="width:300px; margin:15px;"></div>

       <i>Transport</i><div id="transport" style="width:300px; margin:15px;"></div>

       <i>Education</i><div id="education" style="width:300px; margin:15px;"></div>

       <i>Arts</i><div id="arts" style="width:300px; margin:15px;"></div>

       <br />

       <div class="reserveBox">
            <br /><br />
            <a href="TownInfo.aspx" class="btn btn-alternate btn-lg"><< Back</a>
            &nbsp; &nbsp; &nbsp;
            <a href="NewHome.aspx" class="btn btn-alternate btn-lg">Continue >></a>
        </div>
    
        <br />
        <hr />
        <br />
    
        <div class="content">

            <div class="content">

            </div>

        </div>

    </div>

    </div>

          
</asp:Content>

