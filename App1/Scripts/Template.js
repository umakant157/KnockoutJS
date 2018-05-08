/// <reference path="jquery-1.4.1.min.js" />
/// <reference path="knockout-3.4.2.js" />

function address(City,State,Country) {
    this.city = City,
    this.state = State,
    this.country = Country
    }

    var PageModel = new function () {
        this.name = ko.observable("UK Verma")
        this.officeAddress = new address("LKO", "UP", "India")

        //this.homeAddress = new address("BBk", "UP", "India")
        this.homeAddress = null;
    }

ko.applyBindings(PageModel);

