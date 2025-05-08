<!DOCTYPE html>

<html>
    <head>
        <title> Edit Account </title>
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
                    <li> <a href = "/home"> Home </a></li>
                    <li> <a href = "/browse"> Browse </a></li>
                    <li> <a href = "/account-type-login"> Log In </a></li>
                    <li> <a href = "/account-type-signup"> Sign Up </a></li>
                    <li> <a href="/sysadmin-login"> Admin Panel </a></li> <!-- New Link for sysadmin -Seth -->
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

            <div class="edit_account_container">
                <h2>Edit Account Details</h2>
                    <div class="form_group">
                        <label for="name">Name:</label>
                        <input type="text" id="name" name="name" value="John Doe" required>
                    </div>
                    <div class="form_group">
                        <label for="email">Email:</label>
                        <input type="email" id="email" name="email" value="johndoe@email.com" required>
                    </div>
                    <div class="form_group">
                        <label for="password">Password:</label>
                        <input type="password" id="password" name="password" placeholder="******">
                    </div>

                    <button type="submit" class="save_button">
                        <a href= "account_details_user.html"> Save Changes </a>
                    </button>

                    <button type="button" class="cancel_button">
                        <a href="account_details_user.html"> Cancel </a>
                    </button>
            </div>

        </div>

        <div class="bottom_header">
            <footer>
                <div class="footer_content">
                    <div class="footer_left">
                        <p class="footer_title"> Medlink </p>
                        <ul class="footer_links">
                           <li> <a href = "/home"> Home </a></li>
                    <li> <a href = "/browse"> Browse </a></li>
                    <li> <a href = "/account-type-login"> Log In </a></li>
                    <li> <a href = "/account-type-signup"> Sign Up </a></li>
                    <li> <a href="/sysadmin-login"> Admin Panel </a></li> <!-- New Link for sysadmin -Seth -->
                        </ul>
                    </div>

                </div>
            </footer>
        </div>

    </body>
</html>