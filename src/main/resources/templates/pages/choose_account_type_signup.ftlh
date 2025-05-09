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

        <div class="wrapper">
            <div class="choose_account">
                <h2> Sign Up: Select Account Type </h2>

                <div class="account_options">
                    <a class="account_chosen" href="/patients/create-patient-form">
                        <img src="images/user_image.png" alt="User" class="account_image">
                        <div><p> User </p> </div>

                        <br>
                    </a>

                    <div class="spacer"></div>

                    <a class="account_chosen" href="/provider/provider-create">
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
            </footer>
        </div>

    </body>
</html>