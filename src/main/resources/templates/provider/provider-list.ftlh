<!DOCTYPE html>

<html>
    <head>
        <title> All Patients </title>
        <link rel="stylesheet" type="text/css" href="/css/style.css">
    </head>

    <body>
        <div class="header">
            <div class="logo">
                <img src="/images/logo-medlink.png" alt="Medlink" width="100" height="100"/>
            </div>
            <h1> <a href="/home"> Medlink </a> </h1>

            <div class="navbar">
                <ul>
                    <li> <a href = "/home"> Home </a></li>
                    <li> <a href = "/browse"> Browse </a></li>
                    <li> <a href = "/account-type-login"> Log In </a></li>
                    <li> <a href = "/account-type-signup"> Sign Up </a></li>
                    <li> <a href="/sysadmin-login"> Admin Panel </a></li> <!-- New Link for sysadmin -Seth -->
                </ul>
            </div>
        </div>

        <div class="patient-list">
            <h1> ${title} </h1>
            <a href= "/patients/createPatientForm"> Create New Patient </a>

            <form action="/patients/name">
                <input type="text" name="search" placeholder="Search By Name ">
            </form>

            <!-- Patients Table -->
            <table class= "patients-table">
                <tr>
                    <th> ID </th>
                    <th> Name </th>
                    <th> Address </th>
                    <th> Date of Birth </th>
                    <th> Email </th>
                </tr>
                <#list patientList as patient>
                <tr>
                    <td> ${provider.provider_id} </td>
                    <td> ${provider.name}</td>
                    <td> ${provider.location}</td>
                    <td> ${provider.dob?c}</td>
                    <td> ${provider.email}</td>

                </tr>
                </#list>
            </table>
        </div>

    </body>
</html>