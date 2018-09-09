<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Priorities.aspx.cs" Inherits="SeeChange.Introduction" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
    <script>

        var safety_score = 0; var employ_score = 0; var house_score = 0; var health_score = 0;
        var trans_score = 0; var educ_score = 0; var arts_score = 0;

        $(function() {
            $("#safety").slider({
                value: 0,
                orientation: "horizontal",
                range: "min",
                animate: true,
                change: function (event, ui) {
                    safety_score = $('#safety').slider("option", "value");
                }
            });
        });

        $(function() {
            $("#employment").slider({
                value: 0,
                orientation: "horizontal",
                range: "min",
                animate: true,
                change: function (event, ui) {
                    employ_score = $('#employment').slider("option", "value");
                }
            });
        });

        $(function() {
            $("#housing").slider({
                value: 0,
                orientation: "horizontal",
                range: "min",
                animate: true,
                change: function (event, ui) {
                    house_score = $('#housing').slider("option", "value");
                }
            });
        });

        $(function() {
            $("#health").slider({
                value: 0,
                orientation: "horizontal",
                range: "min",
                animate: true,
                change: function (event, ui) {
                    health_score = $('#health').slider("option", "value");
                }
            });
        });

        $(function() {
            $("#transport").slider({
                value: 0,
                orientation: "horizontal",
                range: "min",
                animate: true,
                change: function (event, ui) {
                    trans_score = $('#transport').slider("option", "value");
                }
            });
        });

        $(function() {
            $("#education").slider({
                value: 0,
                orientation: "horizontal",
                range: "min",
                animate: true,
                change: function (event, ui) {
                    educ_score = $('#education').slider("option", "value");
                }
            });
        });

        $(function() {
            $("#arts").slider({
                value: 0,
                orientation: "horizontal",
                range: "min",
                animate: true,
                change: function (event, ui) {
                    arts_score = $('#arts').slider("option", "value");
                }
            });
        });

        function sendPriorities() {
            window.location.href = "TownMatches.aspx?safety=" + safety_score + "&employ=" + employ_score + "&house=" + house_score + "&health=" + health_score + "&trans=" + trans_score + "&educ=" + educ_score + "&arts=" + arts_score;
        };

    </script>

    <div class="see-change">

    <div class="content">
             
    <ol id="stepbar" class="clearfix">

        <li class="passed">1. Create Your Profile</li>
        <li class="selected">2. Relocation Priorities</li>
        <li>3. Most Suitable Towns</li>
        <li>4. Town Information</li>

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
            <a href="Index.aspx" class="btn btn-alternate btn-lg"><< Back</a>
            &nbsp; &nbsp; &nbsp;
            <a href="#" onclick="sendPriorities();" class="btn btn-alternate btn-lg">Continue >></a>
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

