<!DOCTYPE html>

<html>
    <head>
        <title> Sign Up as Patient </title>
        <link rel="stylesheet" type="text/css" href="/css/style.css">
        <script src="/js/auth.js"></script>
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

        <div class="user_form">
            <div class="signup_container">
                <h2> ${title}</h2>

                <form id="signup_form" action="/patients/new" method="post">
                    <label for="name"> Name: </label>
                    <input type="text" id="name" name="name" placeholder="Full Name...">

                    <label for="address"> Address: </label>
                    <input type="text" id="address" name="address" placeholder="Street Address, City, State/Province, Zip Code, Country...">

                    <label for="dob"> Date of Birth: </label>
                    <input type="Date" id="dob" name="dob">

                    <label for="email"> Email: </label>
                    <input type="email" id="email" name="email" placeholder="Email...">

                    <label for="phone"> Phone Number: </label>
                    <input type="tel" id="phone" name="phone" placeholder="(000) 000-0000">

                    <label for="password"> Password: </label>
                    <input type="password" id="password" name="password" placeholder="Password">

                    <button type="submit"> Submit </button>
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