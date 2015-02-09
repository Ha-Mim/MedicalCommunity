using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MedicalCommunity.DAO
{
    public class ViewHistory
    {
        public string Patient { set; get; }
        public string Disease { set; get; }
        
        public string Center { set; get; }
        public string Destrict { set; get; }
        public string Date { set; get; }

    }
}
