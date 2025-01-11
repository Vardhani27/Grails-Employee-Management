<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <title>Employee Details</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .container {
            background-color: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 800px;
            overflow: hidden;
        }

        h1 {
            text-align: center;
            color: #333;
            margin-bottom: 20px;
        }

        .message {
            background-color: #e0f7fa;
            color: #00796b;
            padding: 10px;
            border-radius: 4px;
            margin-bottom: 20px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 20px;
        }

        th, td {
            padding: 12px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }

        th {
            background-color: #00796b;
            color: white;
        }

        td {
            background-color: #fafafa;
        }

        g\:link {
            color: #00796b;
            text-decoration: none;
            font-weight: bold;
        }

        g\:link:hover {
            text-decoration: underline;
        }

        .links {
            text-align: center;
            margin-top: 20px;
        }
    </style>
</head>
<body>

<div class="container">
    <h1>Employee Details</h1>

    <!-- Display flash messages -->
    <g:if test="${flash.message}">
        <div class="message">${flash.message}</div>
    </g:if>

    <!-- Show employee details -->
    <table>
        <tr>
            <th>Name</th>
            <td>${employee.name}</td>
        </tr>
        <tr>
            <th>Email</th>
            <td>${employee.email}</td>
        </tr>
        <tr>
            <th>Salary</th>
            <td>${employee.salary}</td>
        </tr>
        <tr>
            <th>Created At</th>
            <td>${employee.created}</td>
        </tr>
    </table>

    <!-- Links to edit employee or go back to list -->
    <div class="links">
        <g:link controller="employee" action="update" id="${employee.id}">Edit</g:link> |
        <g:link controller="employee" action="index">Back to List</g:link>
    </div>
</div>

</body>
</html>
