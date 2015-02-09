<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DiseaseSetUp.aspx.cs" Inherits="MedicalCommunityWedApp.HeadOffice.DiseaseSetUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Disease Setup</title>
    <link href="../Content/bootstrap.css" rel="stylesheet" />
    <link href="../Content/default.css" rel="stylesheet" />

</head>
<body>
    
    
    
    <section id="login">
        <div class="container">
            <div class="row">
                <div class="col-xs-12">
                    <div class="form-wrap" style="width: 65%;">
                        
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


                       <h3 class="text-center">Disease Information</h3>
                            <form id="form2" runat="server">
                                <div class="row">
                                    <div class="form-group">
                                        <asp:Label ID="Label2" CssClass="custom_label" runat="server">Name</asp:Label>
                                        <asp:TextBox ID="nameTextBox" CssClass="form-control" runat="server"></asp:TextBox>
                                    </div>
                                    <div class="form-group">
                                        <asp:Label ID="Label3" CssClass="custom_label" runat="server">Description</asp:Label>
                                        <asp:TextBox ID="descriptionTextBox" CssClass="form-control"  runat="server"></asp:TextBox>
                                    </div>
                                    <div class="form-group">
                                        <asp:Label ID="Label4" CssClass="custom_label" runat="server">Treatment Procedure</asp:Label>
                                        <asp:TextBox ID="treatmentProcedureTextBox" CssClass="form-control"  runat="server"></asp:TextBox>
                                    </div>
                                    <div class="form-group">
                                        <asp:Label ID="Label1" CssClass="custom_label" runat="server">Prefered Drugs</asp:Label>
                                        <asp:TextBox ID="preferedDrugsTextBox" CssClass="form-control"  runat="server"></asp:TextBox>
                                    </div>
                                    <div class="form-group">
                                        <asp:Label ID="msgLabel" runat="server"></asp:Label>
                                    </div>
                                    <div class="form-group">
                                        <asp:Button ID="SaveButton" CssClass="btn btn-info btn-block custom_button_style"  runat="server" OnClick="SaveButton_Click" Text="Save" />
                                    </div>
                                </div>
                            </form>
                    </div>
                </div>
            </div>
        </div>
    </section>
    
    
    
</body>
</html>
