<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="MedicalCommunityWedApp.Center.HomePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Center Home</title>
    <link href="../Content/bootstrap.css" rel="stylesheet" />
    <link href="../Content/default.css" rel="stylesheet" />
</head>
<body>
    
    <section id="login" style="padding-top: 0">
        <div class="container">
            <div class="row">
                <div class="col-xs-12">
                   <div class="form-wrap" style="width: 65%;">
                       <h3 class="text-center" style="padding: 10px 0">Center Home Page</h3>
                       
                       <form id="form1" runat="server">
                           <ul class="nav nav-pills nav-justified">
                               <li role="presentation" class="active">
                               <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Menu.aspx">Home</asp:HyperLink>
                           </li>
                              <li role="presentation" >
                                  <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="doctorEntry.aspx">Doctor Entry</asp:HyperLink>
                              </li>
                              <li role="presentation">
                                  <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="treatmentGiven.aspx">Treatment Given</asp:HyperLink>
                              </li>
                              <li role="presentation">
                                  <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="stockReport.aspx">Stock Report</asp:HyperLink>
                              </li>
                                   <li role="presentation">
                                  <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="diseaseWiseReport.aspx">Disease Report</asp:HyperLink>
                              </li>
                                   <li role="presentation">
                                  <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="LoginInCenter.aspx">Logout</asp:HyperLink>
                              </li>
                               
                               
                            </ul>
                       </form>

                    </div>
                </div>
            </div>
        </div>
    </section>

    
</body>
</html>
