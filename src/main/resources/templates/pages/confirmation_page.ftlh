<!DOCTYPE html>

<html>
    <head>
        <title> Medlink </title>
        <link rel="stylesheet" type="text/css" href="/css/style.css">
    </head>

    <body>

        <div class="header">
            <div class="logo">
                <img src = "/images/logo-medlink.png" alt="Medlink" width="100" height="100"/>
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

        <div class="body_of_confirmation">
        <div class="confirmation">
            <h1> Account Creation Successful!</h1>

            <p> Thank you for signing up to Medlink! You can now start browsing and making appointments with healthcare
                providers near you or you can start by managing your profile.
            </p>

            <button class="confirmation_buttons">
                <a href="/browse"> <p> Start Browsing </p> </a>
            </button>

            <button class="confirmation_buttons">
                <a href="${patient.patient_id}">
                <p> Go to Profile </p>
                </a>
            </button>

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