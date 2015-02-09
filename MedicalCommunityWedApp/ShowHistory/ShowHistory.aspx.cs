using System;
using System.Collections.Generic;
using System.Data;
using System.Diagnostics.Contracts;
using System.Linq;
using System.IO;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;
using iTextSharp.text;
using iTextSharp.text.html.simpleparser;
using iTextSharp.text.pdf;
using MedicalCommunity.BLL;
using MedicalCommunity.DAO;

namespace MedicalCommunityWedApp.ShowHistory
{
    public partial class ShowHistory : System.Web.UI.Page
    {
        PatientManager aPatientManager = new PatientManager();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["id"] != null && Session["name"]!=null && Session["address"] !=null)
            {
                voterIdTextBox.Text = Session["id"].ToString();
                nameTextBox.Text = Session["name"].ToString();
                addressTextBox.Text = Session["address"].ToString();
            }
        }
        ViewHistoryManager aViewHistoryManager=new ViewHistoryManager();
        protected void showButton_Click(object sender, EventArgs e)
        {
            string name = nameTextBox.Text;
            //List<ViewHistory> viewHistories=new List<ViewHistory>();
            //viewHistories = aViewHistoryManager.ShowStory(name);
            showHistoryGridView.DataSource = aPatientManager.GetData(name);
            showHistoryGridView.DataBind();
        }

        protected void printButton_Click(object sender, EventArgs e)
        {
            ExportPdf();
        }

        private void ExportPdf()
        {
            string name = nameTextBox.Text;
            PatientManager aPatientManager=new PatientManager();
            DataTable aDataTable = aPatientManager.GetData(name);

            GridView showGridView = new GridView();
            showGridView.AllowPaging = false;
            showGridView.ShowHeaderWhenEmpty = true;
            showGridView.DataSource = aDataTable;
            showGridView.DataBind();

            Response.ContentType = "application/pdf";
            Response.AddHeader("content-disposition", "attachment;filename=AllHistoryOfAPatient.pdf");
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            StringWriter aStringWriter = new StringWriter();
            HtmlTextWriter aHtmlTextWriter = new HtmlTextWriter(aStringWriter);
            showGridView.RenderControl(aHtmlTextWriter);
            StringReader aStringReader = new StringReader(aStringWriter.ToString());
            Document pdfDocument = new Document(PageSize.A4, 10f, 10f, 10f, 0f);
            HTMLWorker aHtmlWorker = new HTMLWorker(pdfDocument);
            PdfWriter.GetInstance(pdfDocument, Response.OutputStream);
            pdfDocument.Open();
            aHtmlWorker.Parse(aStringReader);
            pdfDocument.Close();
            Response.Write(pdfDocument);
            Response.End();
        }

        protected void showDBuetailsButton_Click(object sender, EventArgs e)
        {
            string id = voterIdTextBox.Text;
            XmlDocument xml = new XmlDocument();
            String URLString = "http://nerdcastlebd.com/web_service/voterdb/index.php/voters/voter/" + id;
            xml.Load(URLString);
            XmlNode name = xml.SelectSingleNode("xml/voter/name");
            nameTextBox.Text = name.InnerText;
            XmlNode address = xml.SelectSingleNode("xml/voter/address");
            addressTextBox.Text = address.InnerText;
         
          

        }
    }
}