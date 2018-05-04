<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"  CodeBehind="EmployeeList.aspx.cs" Inherits="App1._EmployeeList" %>



<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">   
<script src="Scripts/jquery-1.4.1.min.js" type="text/javascript"></script>
    <script src = "https://ajax.aspnetcdn.com/ajax/knockout/knockout-3.1.0.js" type = "text/javascript"></script>        
    <style type="text/css">
        .line{ border-bottom:solid 1px #c5c5c5;margin:0px;}
    </style>
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>Employee List</h2>    
    <select data-bind="options: employees,optionsText:'firstName',optionsValue:'lastName' "></select>
    <div class="line">&nbsp;</div>
    <table cellpadding="3" cellspacing="3" width="100%">
    <thead>
        <tr>
            <td> <b> Sr.</b></td>
            <td> <b> First Name</b></td>
            <td> <b> Last Name</b></td>
            <td> <b> Email</b></td>
            <td> <b> Salary</b></td>
            <td> <b> Projects</b></td>
        </tr>
    </thead>
    <tbody data-bind="foreach:{data:employees,as:'emp'}">
    <tr >
        <td> <span data-bind="text:($index()+1 +' / '+$parent.totalEmployees())"></span> </td>
        <td> <span data-bind="text:emp.firstName"></span> </td>
        <td> <span data-bind="text:emp.lastName"></span> </td>
        <td> <span data-bind="text:emp.email"></span> </td>
        <td> <span data-bind="text:emp.salary"></span> </td>
        <td data-bind="foreach:{data:projects,as:'proj'}"> 
            <span data-bind="text:(emp.firstName+' - '+proj)"></span> <br />
        </td>
    </tr>

    <%--<tr>
        <td> <span data-bind="text:{($index)+1}"></span> </td>
        <td> <span data-bind="text:$data.firstName"></span> </td>
        <td> <span data-bind="text:$data.lastName"></span> </td>
        <td> <span data-bind="text:$data.email"></span> </td>
        <td> <span data-bind="text:$data.salary"></span> </td>
    </tr>--%>
    </tbody>
    </table>
    <div class="line">&nbsp;</div>
    
    
 


    <script src="Scripts/EmployeeModel.js" type="text/javascript"></script>

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
