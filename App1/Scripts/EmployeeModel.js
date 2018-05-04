/// <reference path="knockout-3.4.2.js" />
function employeeModel(fname,lName,email,sal,projests) {
    this.firstName = fname;
    this.lastName = lName;
    this.email = email;
    this.salary = sal;
    this.projects = projests;
}

function employeesViewModel() {
    var emp1 = new employeeModel('UK', 'Verma', 'uk@gmail.com', 1000, ["Proj-01", "Proj-03", "Proj-09", ])
    var emp2 = new employeeModel('Sandeep', 'Yadav', 'sandeep@gmail.com', 2000, ["Proj-07", "Proj-01", "Proj-06", ])
    var emp3 = new employeeModel('Satvir', 'Pahva', 'satvir@gmail.com', 3000, ["Proj-02", "Proj-05", "Proj-08", ])

    this.employees = ko.observableArray([emp1, emp2, emp3]);
    this.totalEmployees = ko.computed(function () {
        return this.employees().length;
    }, this)

    this.totalSalary = ko.computed(function () {
        var totAmout = 0;
        var cnt = 0;
        for (x in this.employees()) {
            totAmout = totAmout + Number( this.employees()[x].salary);
        }        
        return totAmout;
    }, this)
    
}

employeeModelObject = new employeesViewModel();
ko.applyBindings(employeeModelObject);