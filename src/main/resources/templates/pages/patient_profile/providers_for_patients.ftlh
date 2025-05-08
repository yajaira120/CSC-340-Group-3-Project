<!DOCTYPE html>

<html>
    <head>
        <title> Healthcare Providers </title>
        <link rel="stylesheet" type="text/css" href="../style.css">
    </head>

    <body>

        <div class="header">
            <div class="logo">
                <img src = "../images/logo-medlink.png" alt="Medlink" width="100" height="100"/>
            </div>
            <h1> <a href="../Home.html"> Medlink </a> </h1>

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

        <div class="user_profile_container">
            <div class="left_sidebar">
                <div class="profile_section">
                    <label for ="file_input">
                        <img id="profile_img" src="../images/default_profile.jpg" alt="Profile Picture">
                    </label>

                    <input type="file" id="profile_picture" accept="image/*" style="display:none;">

                </div>

                <h1 id="user_name"> John Doe </h1>

            <div class="nav_links">
                <ul>
                    <li><a href="../user_profile.html"> Patient Details </a></li>
                    <li><a href="appointments.html"> Appointments </a></li>
                    <li><a href="healthcare_providers.html"> Healthcare Providers & Reviews </a></li>
                    <li><a href="account_details_user.html"> Account Details </a></li>
                </ul>
            </div>
            </div>

            <main class="list_of_providers">
                <h2>Healthcare Providers</h2>
                <div class="provider_list">
                    <div class="provider_id">
                        <h3>Dr. John Doe</h3>
                        <p><strong>Specialty:</strong> Dermatology</p>
                        <p><strong>Rating:</strong> ★★★★☆ (4.7/5)</p>
                        <button class="view_button">
                            <a href="../browse.html">View Profile</a>
                        </button>
                    </div>
                    <div class="provider_id">
                        <h3>Dr. Mike Johnson</h3>
                        <p><strong>Specialty:</strong> Pediatrics</p>
                        <p><strong>Rating:</strong> ★★★☆☆ (3.9/5)</p>
                        <button class="view_button">
                            <a href="../browse.html">View Profile</a>
                        </button>

                    </div>
                    <div class="provider_id">
                        <h3>Dr. Lisa White</h3>
                        <p><strong>Specialty:</strong> Internal Medicine</p>
                        <p><strong>Rating:</strong> ★★★★★ (5/5)</p>
                        <button class="view_button">
                            <a href="../browse.html">View Profile</a>
                        </button>
                    </div>
                    <div class="provider_id">
                        <h3>Dr. Alex Cheng</h3>
                        <p><strong>Specialty:</strong> Orthopedics</p>
                        <p><strong>Rating:</strong> ★★★★☆ (4.6/5)</p>
                        <button class="view_button">
                            <a href="../browse.html">View Profile</a>
                        </button>
                    </div>
                </div>
            </main>

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