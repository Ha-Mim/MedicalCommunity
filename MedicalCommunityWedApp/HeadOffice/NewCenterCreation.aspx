<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NewCenterCreation.aspx.cs" Inherits="MedicalCommunityAutomation.NewCenterCreation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>New Center Creation</title>
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <link href="../Content/default.css" rel="stylesheet" />
</head>
<body>
    
    
    <section id="login">
        <div class="container">
            <div class="row">
                <div class="col-xs-12">
                   <div class="form-wrap" style="width: 65%;">
                       <h3 class="text-center">Create new Center</h3>
                       
                       
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

                       <form id="createNewCenterForm" runat="server">
                         <div class="form-group">
                             <asp:Label ID="Label2" CssClass="custom_label" runat="server">Name</asp:Label>
                             <asp:TextBox ID="nameTextBox" CssClass="form-control" runat="server"></asp:TextBox>
                         </div>
                         <div class="form-group">
                             <asp:Label ID="Label3" CssClass="custom_label"  runat="server">District</asp:Label>
                            <asp:DropDownList ID="districtDropDownList" CssClass="form-control" runat="server" AutoPostBack="True" OnSelectedIndexChanged="districtDropDownList_SelectedIndexChanged">
                            </asp:DropDownList>
                         </div>
                         <div class="form-group">
                             <asp:Label ID="Label4" CssClass="custom_label"  runat="server">Thana</asp:Label>
                            <asp:DropDownList ID="thanaDropDownList" CssClass="form-control" runat="server" AutoPostBack="True" >
                            </asp:DropDownList>
                         </div>
                         <div class="form-group">
                             <asp:Label ID="msgLabel" runat="server"></asp:Label>
                         </div>
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
