<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"  CodeBehind="Template.aspx.cs" Inherits="App1.Template" %>
<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">   
<script src="Scripts/jquery-1.4.1.min.js" type="text/javascript"></script>

    <style type="text/css">
        .line{ border-bottom:solid 1px #c5c5c5;margin-top:5px;margin-bottom:5px;}        
    </style>
    
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2> <span data-bind="text:name" ></span> </h2>            

    <span data-bind="text:officeAddress.city" ></span>

    <div class="line">&nbsp;</div>
    Office Address
    <div data-bind="template:{name:'temp',data:officeAddress }"></div>
    <div class="line">&nbsp;</div>
    Home Address
    <div data-bind="template:{if:(homeAddress !=null),name:'temp',data:homeAddress}"></div>

    
    <script type="text/javascript">
        $(document).ready(function () {
            
        })
    </script>

    <script id="temp" type="text/html">
        <b>City : </b> <span data-bind="text:city"></span><br>
        <b>State : </b> <span data-bind="text:state"></span><br>
        <b>Country : </b> <span data-bind="text:country"></span><br>
    </script>
        <script src = "https://ajax.aspnetcdn.com/ajax/knockout/knockout-3.1.0.js" type = "text/javascript"></script>        
    <script src="Scripts/Template.js" type="text/javascript"></script>    
</asp:Content>
