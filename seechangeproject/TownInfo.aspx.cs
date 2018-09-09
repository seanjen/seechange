using System;
using System.Collections.Generic;
using System.Net.Http;
using System.Linq;
using Newtonsoft.Json.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SeeChange
{
    public partial class NewHome : System.Web.UI.Page
    {
        private string SnapshotURL = "";
        private string SnapParams = "";

        public string SelectedTownID="";
        public string SelectedTownNumber = "";
        public string SelectedTownName="";

        private static HttpClient Client = new HttpClient();

        public string curTownName="";
        public string[] curTownDetails;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(Request.Params[0]))
            {
                SelectedTownID = Request.Params[0];
                SelectedTownNumber = SelectedTownID.Substring(3);
                SnapshotURL = "http://stat.data.abs.gov.au/sdmx-json/data/ABS_REGIONAL_LGA2017/ERP_23+HOUSES_3+LF_4+RENT_2+RENT_3+PROTECTED_AREA_16.LGA2017." + SelectedTownNumber + ".A/all";
                SnapParams = "?startTime=2016&endTime=2017&dimensionAtObservation=allDimensions";

                string response = Client.GetStringAsync(new Uri(SnapshotURL + SnapParams)).Result;

                JObject jsonData = JObject.Parse(response);

                curTownName = GetTownName(response, jsonData);
                curTownDetails = GetTownDetails(response, jsonData);
            }
        }

        public static string GetTownName(string response, JObject jsonData)
        {
           string curTown = "";

           curTown = (string)jsonData["structure"]["dimensions"]["observation"][2]["values"][0]["name"];

           return curTown;
        }

        public static string[] GetTownDetails(string response, JObject jsonData)
        {
            string[] townDetails = new string[6];

            for (int i = 0; i < 6; i++)
            {
                string obindex = i.ToString();
                string curob = obindex + ":0:0:0:0";

                townDetails[i] = (string)jsonData["dataSets"][0]["observations"][curob][0];
            }

            return townDetails;
        }
}
}