using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MedicalCommunity.DAO;
using MedicalCommunityAutomation.DAL;

namespace MedicalCommunity.DLL
{
   public class PatientDbGateway:DbGateway
    {
       public Patient Search(string name)
       {
           DataTable aDataTable =new DataTable();
           string query = "SELECT *FROM tbl_patient where name='" + name + "';";
           ASqlConnection.Open();
           ASqlCommand = new SqlCommand(query, ASqlConnection);
           ASqlDataReader = ASqlCommand.ExecuteReader();
          Patient aPatient = new Patient();
           while (ASqlDataReader.Read())
           {

               aPatient.Id = Convert.ToInt32(ASqlDataReader["id"]);
               aPatient.Name = ASqlDataReader["Name"].ToString();
               aPatient.CenterId = Convert.ToInt32(ASqlDataReader["centerId"]);

           }
           ASqlDataReader.Close();
           ASqlConnection.Close();
           
           return aPatient;
       }
       public DataTable GetData(string name)
       {
           DataTable aDataTable = new DataTable();
           string query = "SELECT *FROM View_History where patient='" + name + "';";
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
