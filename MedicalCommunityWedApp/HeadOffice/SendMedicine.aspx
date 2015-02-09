<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SendMedicine.aspx.cs" Inherits="CommunityMedicine.UI.SendMedicine" EnableEventValidation="false" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" ng-app="myApp">
<head runat="server">
    <title>Send Medicine</title>
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <link href="../Content/default.css" rel="stylesheet" />
</head>
<body ng-controller="myController">
    
    <section id="login" style="padding-top: 0">
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

                       <h3 class="text-center" style="padding: 10px 0">Send Medicine to center</h3>
                       
                       <form id="form1" runat="server">

                       <div class="form-group">
                           <asp:Label ID="Label1" runat="server" CssClass="custom_label">District</asp:Label>
                           <asp:DropDownList ID="districtDropDownList" CssClass="form-control" runat="server" AutoPostBack="True" OnSelectedIndexChanged="districtDropDownList_SelectedIndexChanged">
                            </asp:DropDownList>
                       </div>
                       <div class="form-group">
                           <asp:Label ID="Label2" runat="server" CssClass="custom_label">Thana</asp:Label>
                           <asp:DropDownList ID="thanaDropDownList" CssClass="form-control" runat="server" AutoPostBack="True" OnSelectedIndexChanged="thanaDropDownList_SelectedIndexChanged">
                            </asp:DropDownList>
                       </div>
                       <div class="form-group">
                           <asp:Label ID="Label3" runat="server" CssClass="custom_label">Center</asp:Label>
                           <asp:DropDownList CssClass="form-control" ID="centerDropDownList" runat="server">
                            </asp:DropDownList>
                       </div>
                       
                    
                           <h3 class="text-center">Send Medicine</h3>
                           
                       <div class="form-inline" style="margin: 0 0 30px 0;">
                           
                           <div class="form-group">
                               <label class="custom_label">Select Medicine</label>
                               <asp:DropDownList CssClass="form-control"  ng-model="name" ID="medicineDropDownList" runat="server">
                                </asp:DropDownList>
                           </div>
                           
                           <div class="form-group">
                               <label class="custom_label">Quantity</label>
                               <asp:TextBox CssClass="form-control" ng-model="quantity" ID="quantityTextBox" runat="server"></asp:TextBox>
                           </div>
                           
                           <div class="form-group">
                               <button type="button" ng-click="AddMedicine(name,quantity)" class="btn btn-primary" style="padding: 10px 20px;">ADD</button>
                           </div>

                       </div>
                           
                    <table id="Table1" runat="server" class="table" style="color: aliceblue;">
                        <thead>
                            <tr>
                                <td>Name</td>
                                <td>Quantity</td>
                            </tr>
                        </thead>
                        <tbody>
                            <tr ng-repeat="aMedicine in medicines">
                                <td>{{aMedicine.Name}}</td>
                                <td>{{aMedicine.Quantity}}</td>
                            </tr>
                        </tbody>
                    </table>
                           <div class="form-group">
                               <asp:Label ID="messageLabel" runat="server"></asp:Label>
                           </div>
                           
                            <asp:Button CssClass="btn btn-info btn-block custom_button_style" ID="saveButton" runat="server" Text="Save" OnClick="saveButton_Click" />
                           
                           <input type="hidden" id="medicineName" runat="server"/>
                            <input type="hidden" id="medicineQuantity" runat="server"/>

                    </form>
                   </div>
                </div>
            </div>
        </div>
    </section>

    <script src="../Scripts/jquery-2.1.3.js"></script>
    
       <script src="../Scripts/angular.js"></script>
    <script>
        var myApplication = angular.module("myApp", []);
        myApplication.controller("myController", function ($scope) {
            $scope.medicines = [];
            $scope.AddMedicine = function (name, quantity) {
                if (name != String.empty && quantity != String.empty) {
                    $scope.medicines.push({ Name: name, Quantity: quantity });
                    var medicineName = name.split(",");
                    document.getElementById("medicineName").value += medicineName[0] + ",";
                    document.getElementById("medicineQuantity").value += quantity + ",";
                }
            };
        });
    </script>
</body>
</html>
