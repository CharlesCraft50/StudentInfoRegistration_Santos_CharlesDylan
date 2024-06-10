<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="output.aspx.cs" Inherits="StudentInfoRegistration_Santos_CharlesDylan.output" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Output</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>
    <style>
        body {
            padding: 2rem;
            background-color: #90b493;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1 class="text-center mb-4">Student Information</h1>
        <form runat="server">
            <div class="row">
                <div class="col-md-6">
                    <div class="form-group">
                        <label for="studentIdValue">Student ID:</label>
                        <asp:Label ID="studentIdValue" runat="server" class="form-control"></asp:Label>
                    </div>
                    <div class="form-group">
                        <label for="fullNameValue">Full Name:</label>
                        <asp:Label ID="fullNameValue" runat="server" class="form-control"></asp:Label>
                    </div>
                    <div class="form-group">
                        <label for="ageValue">Age:</label>
                        <asp:Label ID="ageValue" runat="server" class="form-control"></asp:Label>
                    </div>
                    <div class="form-group">
                        <label for="addressValue">Address:</label>
                        <asp:Label ID="addressValue" runat="server" class="form-control"></asp:Label>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="form-group">
                        <label for="yearValue">Year:</label>
                        <asp:Label ID="yearValue" runat="server" class="form-control"></asp:Label>
                    </div>
                    <div class="form-group">
                        <label for="sectionValue">Section:</label>
                        <asp:Label ID="sectionValue" runat="server" class="form-control"></asp:Label>
                    </div>
                </div>
            </div>
            <div class="form-group">
                <asp:Button ID="backToFormButton" runat="server" Text="Back to Form" CssClass="btn btn-primary" OnClick="backToFormButton_Click" />
            </div>
        </form>
    </div>
</body>
</html>
