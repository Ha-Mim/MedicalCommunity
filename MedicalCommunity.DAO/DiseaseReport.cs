using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MedicalCommunity.DAO
{
    public class DiseaseReport
    {
        public int DiseaseId { set; get; }
        public DateTime FromTime { set; get; }
        public string From { set; get; }
        public string To { set; get; }
        public DateTime ToTime { set; get; }
        public int DistrictId { set; get; }
        public string DistrictName { set; get; }
        public int Population { set; get; }
        public int TotalPatient { set; get; }
        public float Percentage { set; get; }

        public float GetPercentage()
        {
            return (float)(TotalPatient*100)/Population;
        }
        
    }
}
