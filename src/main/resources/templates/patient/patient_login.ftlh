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


        <div class="user_form">
            <div class="signup_container">
                <h2> Log In </h2>

                <form id="signup_form" method = "post" action="/patients/login">

                    <label for="email"> Email: </label>
                    <input type="text" id="email" name="email" placeholder="Email" required/>

                    <label for="password"> Password: </label>
                    <input type="password" id="password" name="password" placeholder="Password" required />

                    <button type="submit"> Login </button>
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