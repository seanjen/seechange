<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="NewHome.aspx.cs" Inherits="SeeChange.NewHome" %>
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
        <li class="passed">2. Town Information</li>
        <li class="passed">3. Relocation Priorities</li>
        <li class="selected">4. Find my New Home</li>
    </ol>

    </div>

    <div class="content">

       <h1>Your Matches</h1>

    </div>
      
    <div class="content">
          
        <div id="tabs">
          <ul>
            <li><a href="#tabs-1">Mandurah</a></li>
            <li><a href="#tabs-2">Bunbury</a></li>
            <li><a href="#tabs-3">Wildcard</a></li>
          </ul>
          <div id="tabs-1">
            <p>80% match</p>
          </div>
          <div id="tabs-2">
            <p>65% match</p>
          </div>
          <div id="tabs-3">
            <p>Busselton</p>
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
