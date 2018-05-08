/// <reference path="jquery-1.4.1.min.js" />
/// <reference path="knockout-3.4.2.js" />
function employeeModel(fname,lName,email,sal,projests) {
    this.firstName = fname;
    this.lastName = lName;
    this.email = email;
    this.salary = ko.observable(sal);    
}

function employeesViewModel() {

    
    var Current = this;
    this.hoverEmployee = ko.observable(null);
    this.selectedEmployee = ko.observable(null);
    this.newEmployee = ko.observable(new employeeModel("","","",0));
    this.AmountToAdd = ko.observable(0);

    var emp1 = new employeeModel('UK', 'Verma', 'uk@gmail.com', 1000)
    var emp2 = new employeeModel('Sandeep', 'Yadav', 'sandeep@gmail.com', 2000)
    var emp3 = new employeeModel('Satvir', 'Pahva', 'satvir@gmail.com', 3000)
    var emp4 = new employeeModel('Aman', 'Gupta', 'aman@gmail.com', 2500)
    this.employees = ko.observableArray([emp1, emp2, emp3, emp4]);

    this.selectEmployee = function (emp) {
        Current.selectedEmployee(emp);
    }
    this.deleteEmployee = function (emp) {
        if(confirm('Are you sure to delete ?'))
            Current.employees.remove(emp);
    }
    this.addMondy = function () {
        Current.selectedEmployee().salary(Current.selectedEmployee().salary() + Number(Current.AmountToAdd()));

        for(x in Current.employees()) {

            alert(Current.employees()[x].salary());
        }
    }
    this.mouseOverEvent = function (emp) {
        Current.hoverEmployee(emp);
        
    }
    this.mouseOutEvent = function () {
        Current.hoverEmployee(null);

    }
    this.addEmployee = function () {
        alert(JSON.stringify(this.newEmployee()));
        
    }
}

employeeModelObject = new employeesViewModel();
ko.applyBindings(employeeModelObject);

