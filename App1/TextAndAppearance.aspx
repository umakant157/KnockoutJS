<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"  CodeBehind="TextAndAppearance.aspx.cs" Inherits="App1.TextAndAppearance" %>



<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">   
<script src="Scripts/jquery-1.4.1.min.js" type="text/javascript"></script>
    <script src = "https://ajax.aspnetcdn.com/ajax/knockout/knockout-3.1.0.js" type = "text/javascript"></script>        
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>Text and Appearance</h2>    
    <h1>-----------------------------------------------------------------------------</h1>
        <input 

    <h1>-----------------------------------------------------------------------------</h1>
 


    
    <script src="Scripts/MyModel.js" type="text/javascript"></script>

    <script type="text/javascript">
        $(document).ready(function () {
            $("#btnEmployee").click(function () {
                var newEmployee = new employeeModel();
                newEmployee.firstName = $("#txtFName").val();
                newEmployee.lastName = $("#txtLastname").val();
                newEmployee.email = $("#txtEmail").val();
                newEmployee.salary = $("#txtSalary").val();
                
                employeeModelObject.employees.push(newEmployee);
                alert(employeeModelObject.employees().length);
            });


        })
    </script>
</asp:Content>
