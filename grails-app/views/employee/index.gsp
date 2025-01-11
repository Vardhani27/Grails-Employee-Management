<!DOCTYPE html>
<html lang="en">

<head>
    <meta name="layout" content="main">
    <title>Employee List</title>

    <!-- Including Inline CSS for Styling -->
    <style>
        /* General page and body styling */
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f9f9f9;
            margin: 0;
            padding: 0;
            color: #333;
        }

        h1 {
            text-align: center;
            margin-top: 30px;
            font-size: 2em;
            color: #333;
        }

        /* Container for centering content */
        .container {
            width: 90%;
            max-width: 1200px;
            margin: 30px auto;
            padding: 20px;
            background-color: white;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        /* Table styling */
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
            text-align: left;
        }

        th, td {
            padding: 15px;
            border: 1px solid #ddd;
            text-align: left;
        }

        th {
            background-color: #00796b;
            color: white;
        }

        td {
            background-color: #fafafa;
        }

        tr:hover {
            background-color: #f1f1f1;
        }

        /* Link styling */
        a {
            color: #00796b;
            text-decoration: none;
            font-weight: bold;
        }

        a:hover {
            text-decoration: underline;
        }

        /* Action Links */
        .action-links {
            display: inline-block;
            margin-right: 10px;
        }

        /* Create New Employee Button */
        .create-link {
            display: block;
            width: max-content;
            margin-top: 20px;
            padding: 10px 20px;
            text-align: center;
            background-color: #00796b;
            color: white;
            border-radius: 4px;
            font-size: 16px;
            text-decoration: none;
            font-weight: bold;
        }

        .create-link:hover {
            background-color: #004d40;
        }
    </style>
</head>

<body>

    <!-- Main Container -->
    <div class="container">
        <h1>Employee List</h1>

        <!-- Table to display employees -->
        <table>
            <thead>
                <tr>
                    <th>Name</th>
                    <th>Email</th>
                    <th>Salary</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
                <g:each in="${employees}" var="employee">
                    <tr>
                        <td>${employee.name}</td>
                        <td>${employee.email}</td>
                        <td>${employee.salary}</td>
                        <td>
                            <!-- Action Links -->
                            <span class="action-links">
                                <g:link controller="employee" action="show" id="${employee.id}">View</g:link> |
                                <g:link controller="employee" action="update" id="${employee.id}">Edit</g:link> |
                                <g:link controller="employee" action="delete" id="${employee.id}" onclick="return confirm('Are you sure?')">Delete</g:link>
                            </span>
                        </td>
                    </tr>
                </g:each>
            </tbody>
        </table>

        <!-- Link to create a new employee -->
        <a href="/employee/create" class="create-link">Create New Employee</a>
    </div>

</body>

</html>
