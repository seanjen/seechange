<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="OnlineBookings.ReserveAppointment" %>
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
        <li class="selected">1. Introduce Yourself</li>
        <li>2. Your Priorities</li>
        <li>3. Town Information</li>
        <li>4. Location</li>
    </ol>

    </div>

    <div class="content">

       <h1>Introduce Yourself</h1>

    </div>

        
    <div class="content">

           
       <div id="firstPanel">
          <div class="reserveBox">
             <label for="dob">Date of Birth</label>
             <input type="text" name="dob" id="dobpicker" />
          </div>
       </div>

       <div id="secondPanel">
          <div class="reserveBox">
             <br />
             <input type="checkbox" name="partner" value="Partner" />&nbsp;Tick box if you have a partner
          </div>
       </div>

    </div>

    <div class="content">

       <div id="firstPanel">
          <div class="reserveBox">
             <label for="postcode">Enter Postcode</label>
             <input type="text" name="postcode" id="postcode" placeholder="Postcode" />
          </div>
       </div>

        <div id="secondPanel">
           <div class="reserveBox">
              <br />
              <input type="checkbox" name="children" value="Children" />&nbsp;Tick box if you have Children
            </div>
        </div>
          
        </div>

        <div class="content">

            <br />
            <div class="reserveBox">
                <a href="Priorities.aspx">
                <asp:Button ID="FindButton" type="button" runat="server" text="Select Priorities" BackColor="#6E2A8D" Font-Bold="True" Font-Size="12pt" ForeColor="#FFFFFF" Height="30px" Width="150px" />
                </a>
            </div>

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
