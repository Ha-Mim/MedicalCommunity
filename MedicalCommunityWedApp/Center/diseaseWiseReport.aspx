<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="diseaseWiseReport.aspx.cs" Inherits="MedicalCommunityWedApp.Center.diseaseWiseReport" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Disease wise Report</title>
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
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
                       
                       <h3 class="text-center">Disease wise report</h3>
                       
                       <form id="form1" runat="server">
                            <div class="form-inline">
                                <div class="form-group">
                                    <asp:Label ID="Label1" CssClass="custom_label" runat="server" Text="Disease"></asp:Label>
                                    <asp:DropDownList ID="diseaseDropDownList" CssClass="form-control" runat="server" AutoPostBack="True"></asp:DropDownList>
                                </div>
                                <div class="form-group">
                                   <asp:Button ID="showButton" CssClass="btn btn-primary custom_button" runat="server" Text="Show" OnClick="showButton_Click" />
                               </div>
                            </div>
                           
                           
                           <div class="form-group">
                               <asp:Label ID="Label2" CssClass="custom_label" runat="server">Date From</asp:Label>
                                <asp:Calendar ID="fromCalendar" runat="server" CssClass="panel-body" Font-Size="Medium" ForeColor="White"></asp:Calendar>
                           </div>
                           
                           <div class="form-group">
                               <asp:Label ID="Label3" CssClass="custom_label" runat="server">Date To</asp:Label>
                               <asp:Calendar ID="toCalendar" runat="server" CssClass="panel-body" Font-Size="Medium" ForeColor="White"></asp:Calendar>
                           </div>
                            
        

                            <asp:GridView ID="reportGridView" runat="server" AllowPaging="True" AutoGenerateColumns="False">
                                <Columns>
                                    <asp:TemplateField HeaderText="District Name">
                                        <ItemTemplate>
                                            <asp:TextBox ID="districtTextBox" runat="server" Text='<%# Eval("DistrictName") %>'></asp:TextBox>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Population">
                                          <ItemTemplate>
                                            <asp:TextBox ID="populationTextBox" runat="server" Text='<%# Eval("Population") %>'></asp:TextBox>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="% Over Population">
                                          <ItemTemplate>
                                            <asp:TextBox ID="percentageTextBox" runat="server" Text='<%# Eval("Percentage") %>'></asp:TextBox>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                            </asp:GridView>
        

                        </form>
                       

                   </div>
                </div>
            </div>
        </div>
    </section>
    

    


    
</body>
</html>
