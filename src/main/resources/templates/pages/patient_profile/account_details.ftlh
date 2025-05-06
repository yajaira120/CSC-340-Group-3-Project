<!DOCTYPE html>

<html>
    <head>
        <title> Account Details </title>
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
                    <li> <a href="../SysAdmin.html"> Admin Panel </a></li> <!-- New Link for sysadmin -Seth -->
                </ul>
            </div>
        </div>

        <div class="user_profile_container">
            <div class="left_sidebar">
                <div class="profile_section">
                    <label for ="file_input">
                        <img id="profile_img" src="/images/default_profile.jpg" alt="Profile Picture">
                    </label>

                    <input type="file" id="profile_picture" accept="image/*" style="display:none;">

                </div>

                <h1 id="user_name"> ${patient.name} </h1>

            <div class="nav_links">
                <ul>
                    <li><a href="${patient.patient_id}> Patient Details </a></li>
                    <li><a href="/patient-appointments"> Appointments </a></li>
                    <li><a href="/providers-for-patients"> Healthcare Providers & Reviews </a></li>
                    <li><a href="/account-details"> Account Details </a></li>
                </ul>
            </div>
            </div>


        <div class="account_container">
            <div class="account_details">
                <h2> Account Details </h2>

                <div class="account_info">
                    <p><strong>Email:</strong> ${patient.email}</p>
                    <p><strong>Joined:</strong> January 1, 2022</p>
                    <p><strong>Last Login:</strong> October 1, 2023</p>
                </div>

                <button class="edit_button">
                    <a href="/edit-account-details"> Edit Account Details</a>
                </button>

            </div>
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
                            <li> <a href="/account-type-login> Log In </a> </li>
                            <li> <a href="/account-type-signup"> Sign Up </a></li>
                            <li> <a href="../sysadmin.html"> Admin Panel </a></li> <!-- New Link for sysadmin -Seth -->
                        </ul>
                    </div>

                </div>
            </footer>
        </div>

    </body>
</html>