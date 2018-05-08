/// <reference path="jquery-1.4.1.min.js" />
/// <reference path="knockout-3.4.2.js" />

function department(ID,Name)
{
    this.id=ID,
    this.name = Name
}

var PageModel = new function () {


    this.allOption = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10"]
    this.rating = ko.observableArray(["1", "3", "4", "7", "8", "10"]);
    this.department = ko.observableArray([
        new department(1, "Hr"),
        new department(2, "Admin"),
        new department(3, "Management")
    ]);

}
ko.applyBindings(PageModel);