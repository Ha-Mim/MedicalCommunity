<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ShowHistory.aspx.cs" Inherits="MedicalCommunityWedApp.ShowHistory.ShowHistory" %>

<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=11.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Show History</title>
    <link href="../Content/bootstrap.css" rel="stylesheet" />
    <link href="../Content/default.css" rel="stylesheet" />
</head>
<body>
    

    <section id="login" style="padding-top: 0">
        <div class="container">
            <div class="row">
                <div class="col-xs-12">
                   <div class="form-wrap" style="width: 65%;">
                       <br/>
                       <ul class="nav nav-pills nav-justified">
                            <li role="presentation" class="active">
                               <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/Menu.aspx">Home</asp:HyperLink>
                           </li>
                           <li role="presentation" >
                             <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/HeadOffice/DiseaseSetUp.aspx">Disease Setup</asp:HyperLink>
                           </li>
                           <li role="presentation">
                             <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/HeadOffice/NewCenterCreation.aspx">Create New Center</asp:HyperLink>
                             </li>
                           <li role="presentation">
                             <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/HeadOffice/SetupMedicine.aspx">Setup Medicine</asp:HyperLink>
                           </li>
                           <li role="presentation">
                              <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/HeadOffice/SendMedicine.aspx">Send Medicine</asp:HyperLink>
                           </li>
                           <li role="presentation">
                              <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/ShowHistory/ShowHistory.aspx">Show History</asp:HyperLink>
                           </li>
                         </ul>
                       
                       <h3 class="text-center">Patient History</h3>

                       <form id="form1" runat="server">

                           
                          <div class="form-group">
                              <label class="custom_label">Voter ID</label>
                              <asp:TextBox ID="voterIdTextBox" CssClass="form-control" runat="server"></asp:TextBox><br/>
                               <asp:Button ID="showDBuetailsButton" CssClass="btn btn-primary custom_button"  runat="server" Text="SHOW" OnClick="showDBuetailsButton_Click" />
                           </div>
                       
                           <div class="form-group">
                               <label class="custom_label">Address</label>
                               <asp:TextBox ID="addressTextBox" CssClass="form-control" runat="server"></asp:TextBox>
                           </div>
                           <div class="form-group">
                               <label class="custom_label">Name</label>
                               <asp:TextBox ID="nameTextBox" CssClass="form-control" runat="server"></asp:TextBox>
                           </div>
                           <div class="form-group">
                               <asp:Button ID="showButton" CssClass="btn btn-primary custom_button" runat="server" OnClick="showButton_Click" Text="SHOW" /><br/>
                           </div>
                       <asp:GridView ID="showHistoryGridView" runat="server" CssClass="panel-body" Font-Size="Medium">
                            <Columns>
                   
                            </Columns>
                        </asp:GridView>
                       
                       <div class="form-group">
                           <label class="custom_label">Export or print In PDF</label>
                           <asp:Button ID="printButton" runat="server" CssClass="btn btn-primary custom_button" Text="PRINT" OnClick="printButton_Click" />
                       </div>
                      </form>

                    </div>

                </div>
            </div>
        </div>
    </section>

    
</body>
</html>
