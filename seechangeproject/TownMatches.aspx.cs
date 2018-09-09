using System;
using System.IO;
using System.Xml;
using Newtonsoft.Json.Linq;
using System.Net;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Net.Http.Formatting;
using System.Threading.Tasks;
using Newtonsoft.Json;
using System.Collections.Specialized;

namespace SeeChange
{
    public partial class TownInfo : System.Web.UI.Page
    {
        private const string PopulationURL = "http://stat.data.abs.gov.au/sdmx-json/data/ABS_ERP_COMP_LGA/10.LGA2017.50080+50280+50630+51190+51260+51890+53290+54280+55110+55180.A/all";

        private const string ERPParams = "?startTime=2017&endTime=2017&dimensionAtObservation=allDimensions";

        private static HttpClient Client = new HttpClient();

        private IDictionary<string, List<int>> townRatings;

        public IDictionary<string, string> townList;

        public IDictionary<string, string> townPop;

        private int[] userPriorities;

        public string Town1, Town2, Town3;
        public string Percentage1, Percentage2, Percentage3;
        public string Population1, Population2, Population3;
        public string TownKey1, TownKey2, TownKey3;

        public IDictionary<string, double> townScores = new Dictionary<string, double>();

        protected void Page_Load(object sender, EventArgs e)
        {
            userPriorities = GetUserPriorities();

            string response = Client.GetStringAsync(new Uri(PopulationURL + ERPParams)).Result;

            JObject jsonData = JObject.Parse(response);

            townList = StoreTownList(response, jsonData);

            townPop = StoreTownPopulations(response, jsonData);

            townRatings = AddTownRatings();

            var AlbanyScore = CalculatePercentageMatch("LGA50080");
            townScores.Add("LGA50080", AlbanyScore);

            var AugustaScore = CalculatePercentageMatch("LGA50280");
            townScores.Add("LGA50280", AugustaScore);

            var BoddingtonScore = CalculatePercentageMatch("LGA50630");
            townScores.Add("LGA50630", BoddingtonScore);

            var BunburyScore = CalculatePercentageMatch("LGA51190");
            townScores.Add("LGA51190", BunburyScore);

            var BusseltonScore = CalculatePercentageMatch("LGA51260");
            townScores.Add("LGA51260", BusseltonScore);

            var CollieScore = CalculatePercentageMatch("LGA51890");
            townScores.Add("LGA51890", CollieScore);

            var EsperanceScore = CalculatePercentageMatch("LGA53290");
            townScores.Add("LGA53290", EsperanceScore);

            var KalgoorlieScore = CalculatePercentageMatch("LGA54280");
            townScores.Add("LGA54280", KalgoorlieScore);

            var MandurahScore = CalculatePercentageMatch("LGA55110");
            townScores.Add("LGA55110", MandurahScore);

            var ManjimupScore = CalculatePercentageMatch("LGA55180");
            townScores.Add("LGA55180", ManjimupScore);

            townScores = SortMatchPercentages(townScores);

            //Get Top 3 Matching Towns
            var townItem1 = townScores.ElementAt(0);
            TownKey1 = townItem1.Key;
            double townValue1 = townItem1.Value;
            Town1 = townList[TownKey1];
            Percentage1 = (townValue1).ToString();
            Population1 = townPop[TownKey1];

            var townItem2 = townScores.ElementAt(1);
            TownKey2 = townItem2.Key;
            double townValue2 = townItem2.Value;
            Town2 = townList[TownKey2];
            Percentage2 = (townValue2).ToString();
            Population2 = townPop[TownKey2];

            var townItem3 = townScores.ElementAt(2);
            TownKey3 = townItem3.Key;
            double townValue3 = townItem3.Value;
            Town3 = townList[TownKey3];
            Percentage3 = (townValue3).ToString();
            Population3 = townPop[TownKey3];

        }

        public static IDictionary<string, double> SortMatchPercentages(IDictionary<string, double> townPercentages)
        {
            IDictionary<string, double> tempPercentages = new Dictionary<string, double>();

            var items = from pair in townPercentages
                        orderby pair.Value descending
                        select pair;

            foreach (KeyValuePair<string, double> pair in items)
            {
                tempPercentages.Add(pair.Key, pair.Value);
            }

            return tempPercentages;
        }

        public static IDictionary<string, string> StoreTownList(string response, JObject jsonData)
        {
            IDictionary<string, string> townList = new Dictionary<string, string>();

            for (int i = 0; i < 10; i++)
            {
                var curId = (string)jsonData["structure"]["dimensions"]["observation"][2]["values"][i]["id"];
                var curTown = (string)jsonData["structure"]["dimensions"]["observation"][2]["values"][i]["name"];

                townList.Add("LGA" + curId, curTown);
            }

            return townList;
        }

        public static IDictionary<string, string> StoreTownPopulations(string response, JObject jsonData)
        {
            var curList = new List<string>();

            for (int i = 0; i < 10; i++)
            {
                string obindex = i.ToString();
                string curob = "0:0:" + obindex + ":0:0";

                var curPopulation = (string)jsonData["dataSets"][0]["observations"][curob][0];

                curList.Add(curPopulation);
            }

            IDictionary<string, string> TownPopulations = new Dictionary<string, string>()
            {
                { "LGA50080", curList[0] },
                { "LGA50280", curList[1] },
                { "LGA50630", curList[2]},
                { "LGA51190", curList[3] },
                { "LGA51260", curList[4] },
                { "LGA51890", curList[5] },
                { "LGA53290", curList[6] },
                { "LGA54280", curList[7] },
                { "LGA55110", curList[8]},
                { "LGA55180", curList[9] }
             };

            return TownPopulations;
        }

        public static IDictionary<string, List<int>> AddTownRatings()
        {
            var AlbanyScores = new List<int>();
            int[] AlbanyRatings = { 70, 75, 80, 70, 50, 60, 60 };
            AlbanyScores.AddRange(AlbanyRatings);

            var AugustaScores = new List<int>();
            int[] AugustaRatings = { 70, 80, 70, 65, 45, 40, 50 };
            AugustaScores.AddRange(AugustaRatings);

            var BoddingtonScores = new List<int>();
            int[] BoddingtonRatings = { 70, 70, 78, 60, 30, 30, 40 };
            BoddingtonScores.AddRange(BoddingtonRatings);

            var BunburyScores = new List<int>();
            int[] BunburyRatings = { 60, 50, 79, 75, 65, 75, 60 };
            BunburyScores.AddRange(BunburyRatings);

            var BusseltonScores = new List<int>();
            int[] BusseltonRatings = { 70, 72, 69, 65, 67, 55, 65 };
            BusseltonScores.AddRange(BusseltonRatings);

            var CollieScores = new List<int>();
            int[] CollieRatings = { 65, 40, 83, 60, 45, 45, 45 };
            CollieScores.AddRange(CollieRatings);

            var EsperanceScores = new List<int>();
            int[] EsperancenRatings = { 70, 80, 81, 65, 35, 45, 50 };
            EsperanceScores.AddRange(EsperancenRatings);

            var KalgoorlieScores = new List<int>();
            int[] KalgoorlieRatings = { 50, 72, 69, 55, 75, 40, 40 };
            KalgoorlieScores.AddRange(KalgoorlieRatings);

            var MandurahScores = new List<int>();
            int[] MandurahRatings = { 60, 40, 70, 60, 85, 75, 75 };
            MandurahScores.AddRange(MandurahRatings);

            var ManjimupScores = new List<int>();
            int[] ManjimupRatings = { 70, 75, 83, 60, 40, 50, 45 };
            ManjimupScores.AddRange(ManjimupRatings);

            IDictionary<string, List<int>> TownRatings = new Dictionary<string, List<int>>()
            {
                { "LGA50080", AlbanyScores },
                { "LGA50280", AugustaScores },
                { "LGA50630", BoddingtonScores},
                { "LGA51190", BunburyScores },
                { "LGA51260", BusseltonScores },
                { "LGA51890", CollieScores },
                { "LGA53290", EsperanceScores },
                { "LGA54280", KalgoorlieScores },
                { "LGA55110", MandurahScores},
                { "LGA55180", ManjimupScores }
             };

            return TownRatings;
        }

        public int[] GetUserPriorities()
        {
            int[] getPriorities = new int[] { 0, 0, 0, 0, 0, 0, 0 };
            string curParam;
            int parsedResult;

            for (int i = 0; i < 7; i++)
            {
                if (!string.IsNullOrEmpty(Request.Params[i]))
                {
                    curParam = Request.Params[i];
                    if (Int32.TryParse(curParam, out parsedResult))
                    {
                        getPriorities[i] = parsedResult;
                    }

                }
            }

            return getPriorities;
        }

        public double CalculatePercentageMatch(string curTown)
        {
            int prioritiesTotal = 0;
            int matchPercentage = 0;

            //Compare Town to Users priorities           
            int[] TownScores = new int[] { 0, 0, 0, 0, 0, 0, 0 };
            List<int> townPriorities = townRatings[curTown];
            int townPriority = 0;
            int userPriority = 0;

            //Safety           
            townPriority = townPriorities[0];
            userPriority = userPriorities[0];

            TownScores[0] = FindCurrentPriority(townPriority, userPriority);

            //Employment          
            townPriority = townPriorities[1];
            userPriority = userPriorities[1];

            TownScores[1] = FindCurrentPriority(townPriority, userPriority);

            //Housing         
            townPriority = townPriorities[2];
            userPriority = userPriorities[2];

            TownScores[2] = FindCurrentPriority(townPriority, userPriority);

            //Health          
            townPriority = townPriorities[3];
            userPriority = userPriorities[3];

            TownScores[3] = FindCurrentPriority(townPriority, userPriority);

            //Transport      
            townPriority = townPriorities[4];
            userPriority = userPriorities[4];

            TownScores[4] = FindCurrentPriority(townPriority, userPriority);

            //Education     
            townPriority = townPriorities[5];
            userPriority = userPriorities[5];

            TownScores[5] = FindCurrentPriority(townPriority, userPriority);

            //Arts    
            townPriority = townPriorities[6];
            userPriority = userPriorities[6];

            TownScores[6] = FindCurrentPriority(townPriority, userPriority);

            //Tally Priority Scores
            for (int i = 0; i < 7; i++)
            {
                prioritiesTotal = prioritiesTotal + TownScores[i];
            }

            if (prioritiesTotal > 0)
            {
                matchPercentage = (prioritiesTotal / 7);
            }

            return matchPercentage;

        }

        public int FindCurrentPriority(int townPriority, int userPriority)
        {
            int currentPriority = 0;

            if (townPriority >= userPriority)
            {
                if ((townPriority - userPriority) < 25)
                {
                    currentPriority = 70;
                }
                else if ((townPriority - userPriority) < 50)
                {
                    currentPriority = 80;
                }
                else
                {
                    currentPriority = 90;
                }
            }
            else
            {
                if ((townPriority - userPriority) < 25)
                {
                    currentPriority = 50;
                }
                if ((townPriority - userPriority) < 50)
                {
                    currentPriority = 30;
                }
                else
                {
                    currentPriority = 10;
                }
            }

            return currentPriority;
        }

    }
}