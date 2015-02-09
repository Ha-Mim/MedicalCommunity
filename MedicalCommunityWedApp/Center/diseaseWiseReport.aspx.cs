using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MedicalCommunity.BLL;
using MedicalCommunity.DAO;
using MedicalCommunityAutomation.BLL;

namespace MedicalCommunityWedApp.Center
{
    public partial class diseaseWiseReport : System.Web.UI.Page
    {
        DiseaseManager aDiseaseManager =new DiseaseManager();
        TreatmentManager aTreatmentManager = new TreatmentManager();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                diseaseDropDownList.DataSource = aDiseaseManager.GetAll();
                diseaseDropDownList.DataTextField = "Name";
                diseaseDropDownList.DataValueField = "Id";
                diseaseDropDownList.DataBind();

               
            }
        }

        protected void showButton_Click(object sender, EventArgs e)
        {
            DiseaseReport aDiseaseReport = new DiseaseReport();
           

            aDiseaseReport.DiseaseId = Convert.ToInt32(diseaseDropDownList.SelectedValue);
            int centerId = Convert.ToInt16(Session["centerId"]);
            aDiseaseReport.DistrictId = aTreatmentManager.GetDistrictIdByCenterId(centerId);
            aDiseaseReport.FromTime = fromCalendar.SelectedDate;
            aDiseaseReport.From = aDiseaseReport.FromTime.ToString("yyyy-MM-dd");

            aDiseaseReport.ToTime = toCalendar.SelectedDate;
            aDiseaseReport.To = aDiseaseReport.ToTime.ToString("yyyy-MM-dd");

            List<DiseaseReport> getDiseaseReports = aDiseaseManager.GetDiseaseReport(aDiseaseReport);
            reportGridView.DataSource = getDiseaseReports;
            reportGridView.DataBind();
        }
    }
}