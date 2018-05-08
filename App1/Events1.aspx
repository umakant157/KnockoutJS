<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"  CodeBehind="Events1.aspx.cs" Inherits="App1._Events1" %>



<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">   
<script src="Scripts/jquery-1.4.1.min.js" type="text/javascript"></script>
    <script src = "https://ajax.aspnetcdn.com/ajax/knockout/knockout-3.1.0.js" type = "text/javascript"></script>        
    
    
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>Controls</h2>            
    <div class="line">&nbsp;</div>
    <div class="allCheckboxes">
        <input type="checkbox" value="1"  data-bind="checked:rating"/>1
        <input type="checkbox" value="2"  data-bind="checked:rating" style="margin-left:19px;"/>2
        <input type="checkbox" value="3"  data-bind="checked:rating" style="margin-left:19px;"  />3
        <input type="checkbox" value="4"  data-bind="checked:rating" style="margin-left:19px;" />4
        <input type="checkbox" value="5"  data-bind="checked:rating" style="margin-left:19px;" />5
        <input type="checkbox" value="6"  data-bind="checked:rating" style="margin-left:19px;" />6
        <input type="checkbox" value="7"  data-bind="checked:rating" style="margin-left:19px;" />7
        <input type="checkbox" value="8"  data-bind="checked:rating" style="margin-left:19px;" />8
        <input type="checkbox" value="9"  data-bind="checked:rating" style="margin-left:19px;" />9
        <input type="checkbox" value="10"  data-bind="checked:rating" style="margin-left:19px;" />10

        <span class="checkOption" style="margin-left:150px;" data-bind="text:rating" ></span>
    </div> 
    <select multiple="multiple" data-bind="options:allOption,selectedOptions:rating" style="height:200px;"></select>

    <select data-bind="options:department,optionsText:'name',value:id,optionsCaption:'Choose'" ></select>


    <script src="Scripts/Events1.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(document).ready(function () {
//            $(".allCheckboxes").bind("change", function () {
//                $(".checkOption").html(PageModel.rating().join(','));
//            });
            
            $(".checkOption").html(PageModel.rating().join(','));
        })
    </script>
</asp:Content>
