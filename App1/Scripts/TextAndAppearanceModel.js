/// <reference path="knockout-3.4.2.js" />
function employeeModel() {
    this.Number = ko.observable(1);
    this.visibility = true;
    this.isEvenNumber = ko.computed(function () { 
        return this.Number()%2==0
    }, this)

    this.divcolor = ko.computed(function () {
        return this.Number() % 2 == 0 ? "green" : "red";
    }, this)
    
}
employeeModelObject = new employeeModel();
ko.applyBindings(employeeModelObject);