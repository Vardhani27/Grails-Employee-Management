package Employee

import groovy.transform.CompileStatic

import javax.transaction.Transactional

@Transactional
class EmployeeService {

    def listEmployees() {
        return Employee.list()
    }

    def getEmployee(Long id) {
        return Employee.get(id)
    }

    def saveEmployee(Employee employee) {
        employee.save(flush: true)

    }

    def deleteEmployee(Long id) {
        Employee employee = Employee.get(id)
        employee.delete(flush: true)
    }

    def updateEmployee(Employee employee) {
        employee.save(flush: true)
    }
}
