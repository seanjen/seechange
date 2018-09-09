<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="TownMatches.aspx.cs" Inherits="SeeChange.TownInfo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
    <script>

    $(function () {
        $("#accordion").accordion({
            collapsible: true
        });
    });

    </script>

    <div class="see-change">

    <div class="content">
             
    <ol id="stepbar" class="clearfix">
        <li class="passed">1. Create Your Profile</li>
        <li class="passed">2. Relocation Priorities</li>
        <li class="selected">3. Most Suitable Towns</li>
        <li>4. Town Information</li>
    </ol>

    </div>

    <div class="content">

       <h1>Towns we found for you</h1>

    </div>
      
           <div class="content">
          
              <div id="accordion">

                    <div id="ui-accordion-header"><%= Town1 %></div>
                    <div id="ui-accordion-content">
                       <p><strong><%= Percentage1 %>% Match</strong></p>
                       <p>Population: <%= Population1 %></p>
                       <br /><br />                    
                       <a href="TownInfo.aspx?townkey=<%= TownKey1 %>" class="btn btn-default btn-sm">Discover <%= Town1 %></a>
                    </div>

                    <div id="ui-accordion-header"><%= Town2 %></div>
                    <div id="ui-accordion-content">
                       <p><strong><%= Percentage2 %>% Match</strong></p>
                       <p>Population: <%= Population2 %></p>
                       <br /><br />
                       <a href="TownInfo.aspx?townkey=<%= TownKey2 %>" class="btn btn-default btn-sm">Discover <%= Town2 %></a>
                    </div>

                    <div id="ui-accordion-header"><%= Town3 %></div>
                    <div id="ui-accordion-content">
                       <p><strong><%= Percentage3 %>% Match</strong></p>
                       <p>Population: <%= Population3 %></p>
                       <br /><br />
                       <a href="TownInfo.aspx?townkey=<%= TownKey3 %>" class="btn btn-default btn-sm">Discover <%= Town3 %></a>
                    </div>

                    </div>
            </div>

          <div class="reserveBox">
             <br /><br />
             <a href="Priorities.aspx" class="btn btn-alternate btn-lg"><< Back</a>
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
