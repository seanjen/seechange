<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="TownInfo.aspx.cs" Inherits="SeeChange.TownInfo" %>
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
        <li class="selected">2. Town Information</li>
        <li>3. Relocation Priorities</li>
        <li>4. Find my New Home</li>
    </ol>

    </div>

    <div class="content">

       <h1>Town Information</h1>

    </div>
      
           <div class="content">
          
              <div id="accordion">

                    <div id="ui-accordion-header">Albany</div>
                    <div id="ui-accordion-content">
                       <p>
                       Population: 37,561
                       </p>
                       <p>
                       Median Age: 43
                       </p>
                       <p>
                       Mean Income: $44,016
                       </p>
                       <p>
                       Unemployment rate: 5.1%
                       </p>
                       <p>
                       Median rent: $280 per week
                       </p>
                       <p>
                       Median mortgage: $1,600 per month
                       </p>
                    </div>

                    <div id="ui-accordion-header">Augusta-Margaret River</div>
                    <div id="ui-accordion-content">
                       <p>
                       Population: 15,242
                       </p>
                       <p>
                       Median Age: 39
                       </p>
                       <p>
                       Mean Income: $34,892
                       </p>
                       <p>
                       Unemployment rate: 4.6%
                       </p>
                        <p>
                       Median rent: $300 per week
                       </p>
                       <p>
                       Median mortgage: $1,733 per month
                       </p>
                    </div>

                    <div id="ui-accordion-header">Boddington</div>
                    <div id="ui-accordion-content">
                       <p>
                       Population: 1,850
                       </p>
                       <p>
                       Median Age: 39
                       </p>
                       <p>
                       Mean Income: $42,068
                       </p>
                       <p>
                       Unemployment rate: 5.4%
                       </p>
                       <p>
                       Median rent: $300 per week
                       </p>
                       <p>
                       Median mortgage: $1,733 per month
                       </p>
                    </div>

                    <div id="ui-accordion-header">Bunbury-Australind</div>
                    <div id="ui-accordion-content">
                       <p>
                       Population: 71,090
                       </p>
                       <p>
                       Mean Income: 38
                       </p>
                       <p>
                       Medium Income: $34,684
                       </p>
                       <p>
                       Main Employment Industry: Hospitals
                       </p>
                       <p>
                       Unemployment rate: 8.2%
                       </p>
                    </div>

                    <div id="ui-accordion-header">Collie</div>
                    <div id="ui-accordion-content">
                       <p>
                       Population: 8,795
                       </p>
                       <p>
                       Median Age: 
                       </p>
                       <p>
                       Mean Income:
                       </p>
                       <p>
                       Unemployment rate: 
                       </p>
                       <p>
                       Median rent: 
                       </p>
                       <p>
                       Median mortgage:
                       </p>
                    </div>

                    <div id="ui-accordion-header">Esperance</div>
                    <div id="ui-accordion-content">
                       <p>
                       Population: 14,423
                       </p>
                       <p>
                       Median Age: 
                       </p>
                       <p>
                       Mean Income: 
                       </p>
                       <p>
                       Unemployment rate: 
                       </p>
                       <p>
                       Median rent: 
                       </p>
                       <p>
                       Median mortgage:
                       </p>
                    </div>

                    <div id="ui-accordion-header">Kalgoorlie/Boulder</div>
                    <div id="ui-accordion-content">
                       <p>
                       Population: 30,579
                       </p>
                       <p>
                       Median Age: 
                       </p>
                       <p>
                       Mean Income: 
                       </p>
                       <p>
                       Unemployment rate: 
                       </p>
                       <p>
                       Median rent: 
                       </p>
                       <p>
                       Median mortgage:
                       </p>
                    </div>

                    <div id="ui-accordion-header">Mandurah</div>
                    <div id="ui-accordion-content">
                       <p>
                       Population: 84,214
                       </p>
                       <p>
                       Median Age: 43
                       </p>
                       <p>
                       Mean Income: $28,860
                       </p>
                       <p>
                       Unemployment rate: 10.9%
                       </p>
                       <p>
                       Median rent: 
                       </p>
                       <p>
                       Median mortgage:
                       </p>
                    </div>

                    <div id="ui-accordion-header">Manjimup</div>
                    <div id="ui-accordion-content">
                       <p>
                       Population: 9,256
                       </p>
                       <p>
                       Median Age:
                       </p>
                       <p>
                       Mean Income:
                       </p>       
                       <p>
                       Unemployment rate: 
                       </p>
                       <p>
                       Median rent: 
                       </p>
                       <p>
                       Median mortgage:
                       </p>
                    </div>

               </div> 

            </div>

          <div class="reserveBox">
             <br /><br />
             <a href="Index.aspx" class="btn btn-alternate btn-lg"><< Back</a>
             &nbsp; &nbsp; &nbsp;
             <a href="Priorities.aspx" class="btn btn-alternate btn-lg">Continue >></a>
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
