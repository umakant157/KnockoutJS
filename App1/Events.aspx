<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"  CodeBehind="Events.aspx.cs" Inherits="App1._Events" %>



<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">   
<script src="Scripts/jquery-1.4.1.min.js" type="text/javascript"></script>
    <script src = "https://ajax.aspnetcdn.com/ajax/knockout/knockout-3.1.0.js" type = "text/javascript"></script>        
    <style type="text/css">
        .line{ border-bottom:solid 1px #c5c5c5;margin-top:5px;margin-bottom:5px;}
        .selRow{ background-color:#c2c2c2;}
    </style>
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>Employee List</h2>        
    
    
    <input type="text" data-bind="value:newEmployee.firstName" /> 
    <input type="text" data-bind="value:newEmployee.lasttName" /> 
    <input type="text" data-bind="value:newEmployee.email" /> 
    <input type="text" data-bind="value:newEmployee.salary" /> 
    <input type="button" value="Add Employee" data-bind="click:addEmployee" /> 
    

    <div class="line">&nbsp;</div>
    <input type="text" data-bind="value:AmountToAdd,enable:selectedEmployee()!=null" /> 
    <input type="button" value="Add Money" data-bind="click:addMondy,enable:selectedEmployee()!=null" /> 
    <div class="line">&nbsp;</div>
    <table cellpadding="3" cellspacing="3" width="100%">
    <col width="50px" />
    <col width="150px" />
    <col width="150px" />
    <col />
    <col width="50px" />
    <col width="200px" />
    <thead>
        <tr>
            <td> <b> Sr.</b></td>
            <td> <b> First Name</b></td>
            <td> <b> Last Name</b></td>
            <td> <b> Email</b></td>
            <td> <b> Salary</b></td>
            <td></td>         
        </tr>
    </thead>
    <tbody data-bind="foreach:{data:employees,as:'emp'}">
    <%--<tr>--%>
    <tr data-bind="css:{selRow: ((emp.firstName== ($parent.selectedEmployee()==null?-1:$parent.selectedEmployee().firstName)) 
                            || (emp.firstName== ($parent.hoverEmployee()==null?-1:$parent.hoverEmployee().firstName)))},event:{click: $parent.selectEmployee,mouseover:$parent.mouseOverEvent,mouseout:$parent.mouseOutEvent}" >
        <td> <span data-bind="text:($index()+1)"></span> </td>
        <td> <span data-bind="text:emp.firstName"></span> </td>
        <td> <span data-bind="text:emp.lastName"></span> </td>
        <td> <span data-bind="text:emp.email"></span> </td>
        <td> <span data-bind="text:emp.salary"></span> </td>
        <td>
            <input  type="button" value="Select" data-bind="click: $parent.selectEmployee,clickBubble:false"/>
            <input  type="button" value="Delete" data-bind="click: $parent.deleteEmployee,clickBubble:false"/>
            <input  type="button" value="Delete UO" class="DeleteUO" />
        </td>
    </tr>
    </tbody>
    </table>
    
 

    <script src="Scripts/Events.js" type="text/javascript"></script>
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

            $(".DeleteUO").click(function () {

                var a = ko.dataFor(this);
                var b = ko.contextFor(this);
                debugger;
                if (confirm('Are you sure??')) {
                    var employee = ko.dataFor(this);
                    employeeModelObject.employees.remove(employee);
                }
            })
        })
    </script>
</asp:Content>
