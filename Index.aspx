<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="SeeChange.Introduction" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
    <script>
        
        $(function () {
            $('#dobpicker').datepicker({
                dateFormat: 'dd-mm-yy',
                changeMonth: true,
                changeYear: true,
                showButtonPanel: true
            });
        });

        $(function () {
            $('#datepicker').datepicker({
                dateFormat: 'd M yy',
                todayHighlight: true
            });
            $("#datepicker").change(function () {
                var date = $(this).datepicker().val();
                $("#selecteddate").text(date);
            });
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

    </script>

    <div class="see-change">

    <div class="content">
             
    <ol id="stepbar" class="clearfix">
        <li class="selected">1. Create Your Profile</li>
        <li>2. Town Information</li>
        <li>3. Relocation Priorities</li>
        <li>4. Find my New Home</li>
    </ol>

    </div>

    <div class="content">

       <h1>Introduce Yourself</h1>

    </div>


    <div class="content">
    
       <div id="firstPanel">
          <div class="reserveBox">
             <label for="postcode">Your Current Postcode</label>
             <input type="text" name="postcode" id="postcode" placeholder="Postcode" />
          </div>
       </div>

       <div id="secondPanel">
          <div class="reserveBox">
             <label for="live_with_partner">
                 <br />
                 I have a partner who I live with &nbsp;&nbsp;
                 <input type="radio" value="Y" name="lives_with_partner" id="lives_partner_yes" />&nbsp;                
                 Yes &nbsp;
                 <input type="radio" value="N" name="lives_with_partner" id="lives_partner_no" />&nbsp;
                 No
             </label>
          </div>
       </div>

    </div>


    <div class="content">

        <div id="firstPanel">
          <div class="reserveBox">
             <label for="enterdob">Your Date of Birth</label>
             <input type="text" name="dobpicker" id="dobpicker" />
          </div>
       </div>

        <div id="secondPanel">
            
           <div class="reserveBox">
             <label for="have_children">
                 <br />
                 I have children who live with me &nbsp;&nbsp;
                 <input type="radio" value="Y" name="has_children" id="has_children_yes" />&nbsp;                
                 Yes &nbsp;
                 <input type="radio" value="N" name="has_children" id="has_children_no" />&nbsp;
                 No
             </label>
          </div>

        </div>
          
        </div>

     <div class="reserveBox">
       <br /><br />
       <a href="TownInfo.aspx" class="btn btn-alternate btn-lg">Continue >></a>
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
