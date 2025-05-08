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
                    <li><a href="/home">Home</a></li>
                                                            <li><a href="/browse">Browse</a></li>

                                                            <#if sessionPatient??>
                                                                <!-- Only show if the user is logged in -->
                                                                <li><a href="/patients/details/${sessionPatient.patient_id}">My Account</a></li>
                                                                <li><a href="/logout">Logout</a></li>
                                                            <#else>
                                                                <li><a href="/account-type-login">Log In</a></li>
                                                                <li><a href="/account-type-signup">Sign Up</a></li>
                                                            </#if>
                                                                <li><a href="/SysAdmin.html">Admin Panel</a></li>
                </ul>
            </div>
        </div>

        <div class="patient_id-list">
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
                    <th> Phone Number </th>
                    <th> Insurance Provider </th>
                    <th> Medical History </th>
                </tr>
                <#list patientList as patient_id>
                <tr>
                    <td> ${patient_id.patient_id!"N/A"} </td>
                    <td> ${patient_id.name!"N/A"}</td>
                    <td> ${patient_id.address!"N/A"}</td>
                    <td> ${patient_id.dob?c!"N/A"}</td>
                    <td> ${patient_id.email!"N/A"}</td>
                    <td> ${patient_id.phone_number!"N/A"}</td>
                    <td> ${patient_id.insurance_provider!"N/A"}</td>
                    <td> ${patient_id.medical_history!"N/A"}</td>

                </tr>
                </#list>
            </table>
        </div>

    </body>
</html>