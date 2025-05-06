<!DOCTYPE html>

<html>
    <head>
        <title> Appointments </title>
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
                    <li> <a href = "../Home.html"> Home </li>
                    <li> <a href = "../browse.html"> Browse </a></li>
                    <li> <a href = "../choose_account_type_login.html"> Log In </a></li>
                    <li> <a href = "../choose_account_type.html"> Sign Up </a></li>
                    <li> <a href="../SysAdmin.html"> Admin Panel </a></li> <!-- New Link for sysadmin -Seth -->
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

            <div class="appointments_container">
                <h1> Appointments </h1>

                <div class="appointments_section">
                    <h2> Upcoming Appointments</h2>
                    <div class="appointment">
                        <p><strong>Date:</strong> May 24, 2025</p>
                        <p><strong>Time:</strong> 10:00 AM</p>
                        <p><strong>Provider:</strong> Dr. Jane Smith</p>
                        <p><strong>Location:</strong> ABC Health Clinic</p>
                        <p><strong>Details:</strong> Routine Check-up.</p>
                    </div>

                    <div class="appointment">
                        <p><strong>Date:</strong> September 12, 2025</p>
                        <p><strong>Time:</strong> 2:30 PM</p>
                        <p><strong>Provider:</strong> Dr. Alan Brown</p>
                        <p><strong>Location:</strong> XYZ Medical Center</p>
                        <p><strong>Details:</strong> Consultation for stomachache.</p>
                    </div>

                </div>

                <div class="appointments_section">
                    <h2>Past Appointments</h2>
                    <div class="appointment">
                        <p><strong>Date:</strong> December 1, 2023</p>
                        <p><strong>Time:</strong> 11:00 AM</p>
                        <p><strong>Provider:</strong> Dr. John Doe</p>
                        <p><strong>Location:</strong> ABC Health Clinic</p>
                        <p><strong>Details:</strong> Follow-up visit after treatment.</p>
                        <button class="review_button">
                            <a href="../write_review.html"> Write a Review </a></button>
                        </button>
                    </div>

                    <br>

                    <div class="appointment">
                        <p><strong>Date:</strong> November 12, 2023</p>
                        <p><strong>Time:</strong> 3:00 PM</p>
                        <p><strong>Provider:</strong> Dr. Michael Johnson</p>
                        <p><strong>Location:</strong> XYZ Medical Center</p>
                        <p><strong>Details:</strong> Annual physical examination.</p>
                        <button class="review_button">
                            <a href= "../write_review.html"> Write a Review </a>
                        </button>
                    </div>
                </div>

            </div>

        </div>

        <div class="bottom_header">
            <footer>
                <div class="footer_content">
                    <div class="footer_left">
                        <p class="footer_title"> Medlink </p>
                        <ul class="footer_links">
                            <li> <a href="../Home.html"> Home </a> </li>
                            <li> <a href="../browse.html"> Browse </a></li>
                            <li> <a href="../choose_account_type_login.html"> Log In </a> </li>
                            <li> <a href="../choose_account_type.html"> Sign Up </a></li>
                            <li> <a href="../sysadmin.html"> Admin Panel </a></li> <!-- New Link for sysadmin -Seth -->
                        </ul>
                    </div>

                </div>
            </footer>
        </div>

    </body>
</html>