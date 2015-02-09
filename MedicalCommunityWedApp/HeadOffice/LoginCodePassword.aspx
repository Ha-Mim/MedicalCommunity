<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginCodePassword.aspx.cs" Inherits="MedicalCommunityWedApp.HeadOffice.LoginCodePassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login Code Password</title>
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
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
                               <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="Menu.aspx">Home</asp:HyperLink>
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

                       <h3 class="text-center">Created Center Code and Password</h3>
                       
                       <form id="form1" runat="server">
                            
                            <div class="form-group">
                                <asp:Label CssClass="custom_label" ID="Label1" runat="server">Code</asp:Label>
                                <asp:TextBox ID="codeTextBox" CssClass="form-control" runat="server" OnTextChanged="codeTextBox_TextChanged"></asp:TextBox>
                            </div>
                            
                            <div class="form-group">
                                <asp:Label ID="Label2" CssClass="custom_label" runat="server">Password</asp:Label>
                                <asp:TextBox ID="passwordTextBox" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
    
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>

    
    
</body>
</html>
