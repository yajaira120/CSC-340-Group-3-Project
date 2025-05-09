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
                    <li><a href="${patient.patient_id}"> Patient Details </a></li>
                    <li><a href="/patients/patient-appointments"> Appointments </a></li>
                    <li><a href="/patients/providers-for-patients"> Healthcare Providers & Reviews </a></li>
                </ul>
            </div>
            </div>

            <div class="main_content_profile">
                <h3> Patient Details </h3>
                <p><strong> Name: </strong> ${patient.name!"N/A"} </p>
                <p><strong> Date of Birth: </strong> ${patient.dob!"N/A"} </p>
                <p><strong> Address: </strong> ${patient.address!"N/A"} </p>
                <p><strong> Phone Number: </strong> ${patient.phone_number!"N/A"} </p>
                <p><strong> Email: </strong> ${patient.email!"N/A"} </p>
                <p><strong> Insurance Provider: </strong> ${patient.insurance_provider!"N/A"} </p>

                <h4> Medical History: </h4>
                <p> ${patient.medical_history!"N/A"}</p>

                <button>
                    <a href="/patients/update/${patient.patient_id}"> Update </a>
                </button>

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