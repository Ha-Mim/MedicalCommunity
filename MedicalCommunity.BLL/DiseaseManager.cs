using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MedicalCommunity.DAO;
using MedicalCommunity.DLL;
using MedicalCommunityAutomation.DAL;
using MedicalCommunityAutomation.DAO;

namespace MedicalCommunityAutomation.BLL
{
    public class DiseaseManager
    {
        DiseaseDbGateway aDiseaseDbGateway =new DiseaseDbGateway();

        public string SaveDisease(Disease aDisease)
        {
            if (aDiseaseDbGateway.Find(aDisease.Name) == null)
            {
                aDiseaseDbGateway.SaveDisease(aDisease);
                return "Successfully Saved";
            }
            else
            {
                return "Already Exists";
            }
        }

        public List<Disease> GetAll()
        {
            return aDiseaseDbGateway.GetAll();
        }

        public Disease Find(string name)
        {
            return aDiseaseDbGateway.Find(name);
        }

        public List<DiseaseReport> GetDiseaseReport(DiseaseReport aDiseaseReport)
        {
            return aDiseaseDbGateway.GetDiseaseReport(aDiseaseReport);
        }
    }
}
