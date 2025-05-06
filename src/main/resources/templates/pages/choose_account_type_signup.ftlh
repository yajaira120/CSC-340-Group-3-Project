<!DOCTYPE html>

<html>
    <head>
        <title> Medlink </title>
        <link rel="stylesheet" type="text/css" href="/css/style.css">
    </head>

    <body>

        <div class="header">
            <div class="logo">
                <img src = "images/logo-medlink.png" alt="Medlink" width="100" height="100"/>
            </div>
            <h1> <a href="/home"> Medlink </a> </h1>

            <div class="navbar">
                <ul>
                    <li> <a href = "/home"> Home </a></li>
                    <li> <a href = "/browse"> Browse </a></li>
                    <li> <a href = "choose_account_type_login.html"> Log In </a></li>
                    <li> <a href = "/account-type-signup"> Sign Up </a></li>
                    <li> <a href="SysAdmin.html"> Admin Panel </a></li> <!-- New Link for sysadmin -Seth -->
                </ul>
            </div>
        </div>

        <div class="wrapper">
            <div class="choose_account">
                <h2> Sign Up: Select Account Type </h2>

                <div class="account_options">
                    <a class="account_chosen" href="/patients/createPatientForm">
                        <img src="images/user_image.png" alt="User" class="account_image">
                        <div><p> User </p> </div>

                        <br>
                    </a>

                    <div class="spacer"></div>

                    <a class="account_chosen" href="form_for_provider.html">
                        <img src="images/provider_image.png" alt="Provider" class="account_image">
                        <div> <p> Provider </p> </div>

                        <br>
                    </a>

                </div>

                <p> Already have an account? <a href="/account-type-login"> Login </a> </p>

                <br>
                <br>
                <br>
            </div>

        </div>


        <div class="bottom_header">
            <footer>
                <div class="footer_content">
                    <div class="footer_left">
                        <p class="footer_title"> Medlink </p>
                        <ul class="footer_links">
                            <li> <a href="Home.html"> Home </a> </li>
                            <li> <a href="browse.html"> Browse </a></li>
                            <li> <a href="choose_account_type_login.html"> Log In </a> </li>
                            <li> <a href="choose_account_type.html"> Sign Up </a></li>
                            <li> <a href="SysAdmin.html"> Admin Panel </a></li> <!-- New Link for sysadmin -Seth -->
                        </ul>
                    </div>

                </div>
            </footer>
        </div>

    </body>
</html>