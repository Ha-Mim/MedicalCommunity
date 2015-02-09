<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginInCenter.aspx.cs" Inherits="MedicalCommunityAutomation.LoginInCenter" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Center Login</title>
    <link href="../Content/bootstrap.css" rel="stylesheet" />
    <link href="../Content/login.css" rel="stylesheet" />
</head>
<body>
    <section id="login">
    <div class="container">
        <div class="row">
            <div class="col-xs-12">
                <div class="form-wrap">
                <h1>Please login with your code and password</h1>
                    <form id="centerLogin" runat="server">
                        
                        <div class="form-group">
                            <label for="centerCodeTextBox">Center Code</label>
                            <asp:TextBox ID="centerCodeTextBox" CssClass="form-control" runat="server" ToolTip="Code"></asp:TextBox>
                        </div>
                        
                        <div class="form-group">
                            <label for="passwordTextBox">Password</label>
                            <asp:TextBox ID="passwordTextBox" CssClass="form-control" runat="server" TextMode="Password" ToolTip="Password"></asp:TextBox>
                        </div>
                        
                        <div class="form-group">
                            <asp:Button ID="centerLoginButton" CssClass="btn btn-custom btn-lg btn-block" runat="server" OnClick="centerLoginButton_Click" Text="LOGIN" />
                        </div>
                        
                        <div class="form-group">
                            <asp:Label ID="msgLabel" runat="server"></asp:Label>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    
   </section>
</body>
</html>
