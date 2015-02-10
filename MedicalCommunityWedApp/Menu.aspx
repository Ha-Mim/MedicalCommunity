<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Menu.aspx.cs" Inherits="MedicalCommunityWedApp.Menu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link href="/Content/bootstrap.min.css" rel="stylesheet" />
    <link href="/Content/default.css" rel="stylesheet" />
</head>
<body>
     <section id="login">
        <div class="container">
            <div class="row">
                <div class="col-xs-12">
                   <div class="form-wrap">
                       
                       <ul class="nav nav-pills nav-justified">
                           <li role="presentation" class="active">
                               <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="Menu.aspx">Home</asp:HyperLink>
                           </li>
                           <li role="presentation">
                              <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/HeadOffice/SetupMedicine.aspx">Head Office</asp:HyperLink>
                           </li>
                           <li role="presentation">
                               <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/Center/LoginInCenter.aspx">Center</asp:HyperLink>
                           </li>
                       </ul>
                       
                        
                       

                   </div>
                </div>
            </div>
      </div>
         <div class="container" align="center">            
   <div class="row">
         
     <div class="col-xs-12" id="slideShowImages">
   
    <img src="Image/file.png" alt="Slide 3" />   
    <img src="Image/hand.jpeg" alt="Slide 4"  /> 
   
      </div>
        </div>
            </div>
    </section>
    <script src="Scripts/jquery-2.1.3.js"></script>
    <script src="Scripts/bootstrap.js"></script>
    <script src="Scripts/slideShow.js"></script>
  
</body>
</html>
