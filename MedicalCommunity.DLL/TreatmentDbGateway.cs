using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MedicalCommunity.DAO;
using MedicalCommunityAutomation.DAL;
using MedicalCommunityAutomation.DAO;

namespace MedicalCommunity.DLL
{
    public class TreatmentDbGateway : DbGateway
    {
        public void Save(Treatment aTreatment)
        {
            string query = "INSERT INTO tbl_treatment VALUES('" + aTreatment.DiseaseId + "' , '" + aTreatment.MedicineId +
                           "','" + aTreatment.DoseId + "','" + aTreatment.TimeOfMeal + "','" + aTreatment.Quantity +
                           "','" + aTreatment.Note + "','" + aTreatment.Date + "','" + aTreatment.PatientId + "','" +
                           aTreatment.DistrictId + "')";
            ASqlConnection.Open();
            ASqlCommand = new SqlCommand(query, ASqlConnection);
            ASqlCommand.ExecuteNonQuery();
            ASqlConnection.Close();
        }


        public int Count(int patientId)
        {

            string query = "Select Count (patientid) As serviceGiven from tbl_treatment where patientId=" + patientId;
            ASqlConnection.Open();
            ASqlCommand = new SqlCommand(query, ASqlConnection);
            ASqlDataReader = ASqlCommand.ExecuteReader();

            int service = 0;

            while (ASqlDataReader.Read())
            {

                service = (int) ASqlDataReader["serviceGiven"];

            }
            ASqlDataReader.Close();
            ASqlConnection.Close();

            return service;
        }


        public int GetDistrictIdByCenterId(int centerId)
        {
            string query = "SELECT district_id FROM tbl_center WHERE id = '" + centerId + "'";
            ASqlConnection.Open();
            ASqlCommand = new SqlCommand(query, ASqlConnection);
            ASqlDataReader = ASqlCommand.ExecuteReader();
            Treatment aTreatment = new Treatment();
            while (ASqlDataReader.Read())
            {
                aTreatment.DistrictId = (int) ASqlDataReader["district_id"];
            }
            ASqlDataReader.Close();
            ASqlConnection.Close();
            return aTreatment.DistrictId;
        }

        public DataTable GetData()
        {
            DataTable aDataTable = new DataTable();
            string query = "SELECT *FROM tbl_treatment";
            ASqlCommand = new SqlCommand(query, ASqlConnection);

            SqlDataAdapter aSqlDataAdapter = new SqlDataAdapter();
            ASqlCommand.CommandType = CommandType.Text;


            try
            {
                ASqlConnection.Open();
                aSqlDataAdapter.SelectCommand = ASqlCommand;
                aSqlDataAdapter.Fill(aDataTable);
                return aDataTable;
            }

            catch (Exception aException)
            {
                throw aException;
            }

            finally
            {
                ASqlConnection.Close();
                aSqlDataAdapter.Dispose();
                ASqlConnection.Dispose();
            }
        }
    }
}
