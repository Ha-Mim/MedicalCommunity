<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="stockReport.aspx.cs" Inherits="MedicalCommunityAutomation.stockReport" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Stock Report</title>
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
                                  <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="diseaseWiseReport.aspx">Diseasewise Report</asp:HyperLink>
                              </li>
                            </ul>


                       <h3 class="text-center">Stock Report</h3>
                       
                       <form id="medicineStockReportForm" runat="server">
                        
                            <asp:GridView ID="showGridView" CssClass="table" runat="server" AutoGenerateColumns="False" AllowPaging="True">
                                <Columns>
                                    <asp:TemplateField HeaderText="Medicine Name">
                                        <ItemTemplate>
                                            <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" Text='<%# Eval("MedicineName") %>'></asp:TextBox>
                                        </ItemTemplate>
                                        <HeaderStyle BackColor="#408080" CssClass="text-center" ForeColor="White" />
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Quantity">
                                        <ItemTemplate>
                                            <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" Text='<%# Eval("Quantity") %>'></asp:TextBox>
                                        </ItemTemplate>
                                        <HeaderStyle BackColor="#408080" CssClass="text-center" ForeColor="White" />
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
