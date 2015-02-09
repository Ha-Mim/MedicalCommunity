using System;
using MedicalCommunity.DAO;
using MedicalCommunityAutomation.BLL;

namespace MedicalCommunityWedApp.HeadOffice
{
    public partial class DiseaseSetUp : System.Web.UI.Page
    {
        DiseaseManager aDiseaseManager=new DiseaseManager();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SaveButton_Click(object sender, EventArgs e)
        {
            Disease aDisease=new Disease();
            aDisease.Name = nameTextBox.Text;
            aDisease.Description = descriptionTextBox.Text;
            aDisease.TreatmentProcedure = treatmentProcedureTextBox.Text;
            aDisease.PreferedDrugs = preferedDrugsTextBox.Text;
            string msg = aDiseaseManager.SaveDisease(aDisease);
            msgLabel.Text = msg;
        }
    }
}