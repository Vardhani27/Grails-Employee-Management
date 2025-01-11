package Employee

import grails.rest.*

@Resource(uri='/api/employee', formats=['json', 'xml'])

class Employee {

    String name
    String email
    Integer salary
    Date created = new Date()

    static constraints = {
        name blank: false
        email email: true
        created nullable: false
    }

    static mapping = {
        table "employee" // Verify table name
    }
}
