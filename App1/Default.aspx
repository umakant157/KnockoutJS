<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"  CodeBehind="Default.aspx.cs" Inherits="App1._Default" %>



<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">   
<script src="Scripts/jquery-1.4.1.min.js" type="text/javascript"></script>
    <script src = "https://ajax.aspnetcdn.com/ajax/knockout/knockout-3.1.0.js" type = "text/javascript"></script>        
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>Observable Array</h2>    
    First name <input type="text" id="txtFName" /> <br />
    Last name <input type="text" id="txtLastname" /> <br />
    Email <input type="text" id="txtEmail" /> <br />
    Salary <input type="text" id="txtSalary" /> <br />
    <input type="button" id="btnEmployee" value="Add Employee" />

    <h1>-----------------------------------------------------------------------------</h1>
    Total no of employees : <span data-bind="text: totalEmployees" ></span>    <br />
    Total Salary : <span data-bind="text: totalSalary" ></span>    <br />

    <select data-bind="options: employees,optionsText:'firstName',optionsValue:'lastName' "></select>
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
