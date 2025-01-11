package Employee

class UrlMappings {
    static mappings = {
        "/employee/create"(view:"/employee/create")
        "/employee/edit"(view:"/employee/edit")
        "/employee/show"(view : "/employee/show")
        "/employee"(view : "/employee/index", )

        "/api/employee/create"(controller: "Employee", action: "save", method: "POST")
        "/api/employee/$id?"(controller: "employee", action: "show", method:"GET")
        "/api/employee"(controller: "employee", action: "index", method:"GET")
        "/api/employee/create"(controller: "employee", action: "create", method:"POST")
        "/api/employee/edit"(controller: "employee", action: "update", method:"PATCH")


        "/$controller/$action?/$id?(.$format)?" {
            constraints {
                // Apply constraints here
            }
        }

        "/"(view:"/index")
        "500"(view:'/error')
        "404"(view:'/notFound')



    }
}
