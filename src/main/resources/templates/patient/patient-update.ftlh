<!DOCTYPE html>

<html>
    <head>
        <title> Update Patient Information </title>
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
                    <li> <a href="SysAdmin.html"> Admin Panel </a></li> <!-- New Link for sysadmin -Seth -->
                </ul>
            </div>
        </div>

        <div class="user_form">
            <div class="signup_container">
                <h2> ${title}</h2>

                <form id="signup_form" action="/patients/update/${patient_id}" method="post">
                    <input type="hidden" name="patientId" value="${patient.patient_id}"/>

                    <label for="name"> Name: </label>
                    <input type="text" id="name" name="name" value="${patient.name}" placeholder="Full Name...">

                    <label for="address"> Address: </label>
                    <input type="text" id="address" name="address" value="${patient.address}" placeholder="Street Address, City, State/Province, Zip Code, Country...">

                    <label for="dob"> Date of Birth: </label>
                    <input type="Date" id="dob" name="dob" value="${patient.dob}">

                    <label for="email"> Email: </label>
                    <input type="email" id="email" name="email" value="${patient.email}" placeholder="Email...">

                    <label for="password"> Password: </label>
                    <input type="password" id="password" name="password" value="${patient.password}" placeholder="Password">

                    <button type="submit"> Save </button>
                    <button type="cancel"> <a href="/home"> Cancel </a> </button>
                </form>

            </div>
        </div>

        <div class="bottom_header">
            <footer>
                <div class="footer_content">
                    <div class="footer_left">
                        <p class="footer_title"> Medlink </p>
                        <ul class="footer_links">
                            <li> <a href="/home"> Home </a> </li>
                            <li> <a href="/browse"> Browse </a></li>
                            <li> <a href="/account-type-login"> Log In </a> </li>
                            <li> <a href="/account-type-signup"> Sign Up </a></li>
                            <li> <a href="SysAdmin.html"> Admin Panel </a></li> <!-- New Link for sysadmin -Seth -->
                        </ul>
                    </div>
                </div>
            </footer>
        </div>


    </body>
</html>