<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="StudentInfoRegistration_Santos_CharlesDylan._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Student Info Registration</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>
    <style>
        body {
            padding: 2rem;
            background-color: #ada17e;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1 class="text-center mb-4">Student Registration</h1>
        <form runat="server">
            <div class="row">
                <div class="col-md-6">
                    <div class="form-group">
                        <label for="studentId">Student ID:</label>
                        <asp:TextBox ID="studentId" runat="server" class="form-control"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label for="lastName">Last Name:</label>
                        <asp:TextBox ID="lastName" runat="server" class="form-control" maxlength="30"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label for="firstName">First Name:</label>
                        <asp:TextBox ID="firstName" runat="server" class="form-control" maxlength="30"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label for="middleName">Middle Name:</label>
                        <asp:TextBox ID="middleName" runat="server" class="form-control" maxlength="30"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label for="age">Age:</label>
                        <asp:TextBox ID="age" runat="server" class="form-control" maxlength="3"></asp:TextBox>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="form-group">
                        <label for="address">Address:</label>
                        <asp:TextBox ID="address" runat="server" class="form-control" textMode="multiline" rows="3"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label for="year">Year:</label>
                        <asp:DropDownList ID="year" runat="server" class="form-control">
                            <asp:ListItem Value="1">1st Year</asp:ListItem>
                            <asp:ListItem Value="2">2nd Year</asp:ListItem>
                            <asp:ListItem Value="3">3rd Year</asp:ListItem>
                            <asp:ListItem Value="4">4th Year</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="form-group">
                        <label for="section">Section:</label>
                        <asp:TextBox ID="section" runat="server" class="form-control"></asp:TextBox>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6">
                    <div class="form-group">
                        <asp:Label ID="errorMessage" runat="server" class="text-danger"></asp:Label>
                    </div>
                    <div class="form-group">
                        <asp:Button ID="registerButton" runat="server" Text="Register" CssClass="btn btn-success" OnClick="registerButton_Click" />
                    </div>
                </div>
                <div class="col-md-6" style="margin-top: 10px;">
                    <div class="form-group">
                        <asp:Button ID="cancelButton" runat="server" Text="Cancel" CssClass="btn btn-danger" OnClick="cancelButton_Click" />
                    </div>
                </div>
            </div>
        </form>
    </div>
</body>
</html>
