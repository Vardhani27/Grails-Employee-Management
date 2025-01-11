package Employee

import grails.converters.JSON
import grails.rest.RestfulController
import grails.validation.ValidationException

//import grails.gorm.transactions.Transactional

//@Transactional
class EmployeeController extends RestfulController{

    static responseFormats = ['json', 'xml']
    //static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE", create:"POST"]
    //static scaffold = Employee

    EmployeeController() {
        super(Employee)
    }

    def employeeService

    def index() {
        respond employeeService.listEmployees()
    }

    def create() {
        respond new Employee(params)
    }

    def show() {
        respond employeeService.getEmployee(id)

    }

    def save(Employee employee) {
            employeeService.saveEmployee(employee)
        log.info "Hello World"
            redirect(action: "index")
    }

    def delete(Long id) {
            employeeService.deleteEmployee(id)
            redirect action: "index"
    }

    def update(Employee employee) {
        if (!employee) {
            notFound()
            return
        }

        employeeService.updateEmployee(employee)
        redirect action: "show", id: employee.id

    }

    protected void notFound() {
        flash.message = "Employee not found."
        redirect action: "index"
    }
}