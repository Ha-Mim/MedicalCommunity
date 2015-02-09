<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="doctorEntry.aspx.cs" Inherits="MedicalCommunityWedApp.Center.doctorEntry" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Doctor Entry</title>
    <link href="../Content/bootstrap.css" rel="stylesheet" />
    <link href="../Content/default.css" rel="stylesheet" />

    
</head>
<body>
    
    <section id="login">
        <div class="container">
            <div class="row">
                <div class="col-xs-12">
                   <div class="form-wrap">
                       
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
                            </ul>

                       <h3 class="text-center">Doctor Entry</h3>
                       
                       <form id="doctorEntryForm" runat="server">
                           
                           <div class="form-group">
                               <asp:Label ID="Label5" runat="server" CssClass="custom_label">Name</asp:Label>
                               <asp:TextBox ID="nameTextBox" CssClass="form-control" runat="server"></asp:TextBox>
                           </div> 
                           
                           
                           <div class="form-group">
                               <asp:Label ID="Label1" runat="server" CssClass="custom_label">Degree</asp:Label>
                               <asp:TextBox ID="degreeTextBox" CssClass="form-control"  runat="server"></asp:TextBox>
                           </div> 
                           
                           <div class="form-group">
                               <asp:Label ID="Label2" runat="server" CssClass="custom_label">Specialization</asp:Label>
                               <asp:TextBox ID="specializationTextBox" CssClass="form-control" runat="server"></asp:TextBox>
                           </div> 
                           
                           <div class="form-group">
                               <asp:Label ID="msgLabel" runat="server" ></asp:Label>
                           </div> 
                           
                           <div class="form-group">
                               <asp:Button ID="saveButton" CssClass="btn btn-info btn-block custom_button_style" runat="server" Text="Save" OnClick="saveButton_Click" />
                           </div> 


                       </form>

                   </div>
                </div>
            </div>
        </div>
    </section>

    
</body>
</html>
