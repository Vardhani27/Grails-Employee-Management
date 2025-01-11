<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <title>Edit Employee</title>
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
            max-width: 600px;
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

        form div {
            margin-bottom: 15px;
        }

        label {
            display: block;
            font-weight: bold;
            margin-bottom: 5px;
            color: #333;
        }

        input[type="text"], input[type="email"], input[type="number"] {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
            font-size: 16px;
            margin-bottom: 10px;
        }

        input[type="text"]:focus, input[type="email"]:focus, input[type="number"]:focus {
            border-color: #00796b;
            outline: none;
        }

        g\:submitButton {
            background-color: #00796b;
            color: white;
            border: none;
            padding: 10px 20px;
            border-radius: 4px;
            font-size: 16px;
            cursor: pointer;
            width: 100%;
        }

        g\:submitButton:hover {
            background-color: #004d40;
        }

        .back-link {
            display: block;
            text-align: center;
            margin-top: 20px;
            font-size: 14px;
        }

        .back-link a {
            color: #00796b;
            text-decoration: none;
        }

        .back-link a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>

<div class="container">
    <h1>Edit Employee</h1>

    <!-- Display flash messages -->
    <g:if test="${flash.message}">
        <div class="message">${flash.message}</div>
    </g:if>

    <!-- Form to edit the employee -->
    <g:form controller="employee" action="update" method="post">
        <input type="hidden" name="id" value="${employee?.id}"/>

        <div>
            <label for="name">Name</label>
            <g:textField name="name" value="${employee?.name}" required="true"/>
        </div>
        <div>
            <label for="email">Email</label>
            <g:textField name="email" value="${employee?.email}" required="true"/>
        </div>
        <div>
            <label for="salary">Salary</label>
            <g:textField name="salary" value="${employee?.salary}" required="true"/>
        </div>
        <div>
            <g:submitButton name="submit" value="Update Employee"/>
        </div>
    </g:form>

    <!-- Link to go back to the list of employees -->
    <div class="back-link">
        <g:link controller="employee" action="index">Back to List</g:link>
    </div>
</div>

</body>
</html>
