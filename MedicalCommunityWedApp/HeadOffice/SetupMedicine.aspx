<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SetupMedicine.aspx.cs" Inherits="MedicalCommunityAutomation.SetupMedicine" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Medicine Setup</title>
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

                       <h3 class="text-center">Medicine Information</h3>
                       
                       <form id="medicineSetupForm" runat="server">
                           
                           <div class="form-group">
                               <asp:Label ID="Label5" runat="server" CssClass="custom_label">Generic Name</asp:Label>
                               <asp:TextBox ID="genericNameTextBox" CssClass="form-control" runat="server"></asp:TextBox>
                           </div> 
                           
                           <div class="form-group">
                               <asp:Label ID="Label1" runat="server" CssClass="custom_label">Mg/ML</asp:Label>
                               <asp:TextBox ID="quantityTextBox" CssClass="form-control" runat="server" OnTextChanged="TextBox2_TextChanged"></asp:TextBox>
                           </div>
                           
                           <p class="alert-info">
                                <asp:Label ID="msgLabel" runat="server"></asp:Label>
                            </p>

                           <div class="form-group">
                               <asp:Button CssClass="btn btn-info btn-block custom_button_style"  ID="saveButton" runat="server" OnClick="saveButton_Click" Text="Save" />
                           </div>

                            
    
                       </form>

                    </div>
                </div>
            </div>
        </div>
    </section>
    
    

</body>
</html>
