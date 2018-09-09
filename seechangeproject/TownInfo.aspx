<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="TownInfo.aspx.cs" Inherits="SeeChange.NewHome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
    <script>

    $(function () {
        $("#tabs").tabs();
    });

    </script>

    <div class="see-change">

    <div class="content">
             
    <ol id="stepbar" class="clearfix">
        <li class="passed">1. Create Your Profile</li>
        <li class="passed">2. Relocation Priorities</li>
        <li class="passed">3. Most Suitable Towns</li>
        <li class="selected">4. Town Information</li>
    </ol>

    </div>

    <div class="content">
       
       <h1>Discover <%= curTownName %></h1>

    </div>
      
    <div class="content">
          
        <div id="tabs">
          <ul>
            <li><a href="#tabs-1"><%= curTownName %></a></li>
            <li><a href="#tabs-2">Insights</a></li>
          </ul>
          <div id="tabs-1">
            <p>House Median Sale Price: $<%= curTownDetails[1] %> </p>
            <p>Average Monthly Mortgage: $<%= curTownDetails[4] %> </p>
            <p>Average Monthly Rent: $<%= curTownDetails[3] %> </p>
            <p>Unemployment Rate: <%= curTownDetails[2] %>% </p>
            <p>National Parks and Reserves: <%= curTownDetails[5] %>%</p>

            <br /><br />

          </div>
          <div id="tabs-2">
            <p>The Median House price in <%= curTownName %> is $<%= curTownDetails[1] %> compared with $550,000 where you live now</p>
            <p>The Average monthly rent in <%= curTownName %> is $<%= curTownDetails[3] %> compared with $1500 at your current location</p>
            <p><%= curTownDetails[5] %>% of <%= curTownName %> is comprised of protected National Parks and Reserves.</p>

          </div>
        </div>       
                  
    </div>

    <div class="reserveBox">
        <br /><br />
        <a href="TownMatches.aspx" class="btn btn-alternate btn-lg"><< Back</a>
    </div>
    
    <br />
    <hr />
    <br />
    
    <div class="content">

        <div class="content">

        </div>

    </div> 

    </div>

</asp:Content>
