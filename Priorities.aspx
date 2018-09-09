<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Priorities.aspx.cs" Inherits="OnlineBookings.ReserveAppointment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
    <script>
        
        $(function () {
            $('#datepicker').dobpicker({
                dateFormat: 'dd-mm-yy',
                changeMonth: true,
                changeYear: true,
                showButtonPanel: true
            });
        });

        $(function () {
            $('#datepicker').datepicker({
                dateFormat: 'dd-mm-yy'
            }).val();
        });

        $(function () {
            $('#datetimepicker').datetimepicker({
                dateFormat: 'dd-mm-yy',
                controlType: 'select',
                oneLine: true,
                timeFormat: 'hh:mm tt',
                hourMin: 6,
                hourMax: 19,
                stepMinute: 15,
                hour: 12
            });
        });

        $(function () {
            $("#accordion").accordion();
        });

    </script>

    <div class="online-booking">

    <div class="content">
             
    <ol id="stepbar" class="clearfix">
        <!--<li class="passed">Heading</li>-->
        <li class="passed">1. Introduce Yourself</li>
        <li class="selected">2. Your Priorities</li>
        <li>3. Town Information</li>
        <li>4. Location</li>
    </ol>

    </div>

    <div class="content">

       <h1>Your Priorities</h1>

    </div>

        <br />
        <hr />
        <br />

           
           <div class="content">
          
              <div id="accordion">

                    <div id="ui-accordion-header">Albany</div>
                    <div id="ui-accordion-content">
                       <p>
                       Lifestyle
                       <br />
                       Health
                       </p>
                       <p>
                       <br />
                       </p>
                    </div>

                    <div id="ui-accordion-header">Bunbury</div>
                    <div id="ui-accordion-content">
                       <p>
                       Employment
                       </p>
                       <p>
                       <br />
                       </p>
                    </div>

                    <div id="ui-accordion-header">BUSSELTON</div>
                    <div id="ui-accordion-content">
                       <p>
                       Housing<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                       <br />
                       Low Crime
                       </p>
                       <p>
                       <br />
                       </p>
                    </div>

                    <div id="ui-accordion-header">MANDJURAH</div>
                    <div id="ui-accordion-content">
                       <p>
                       Education
                       </p>
                       <p>
                       <br />
                       </p>
                    </div>

               </div> 

            </div>

          </div>

           

</asp:Content>

