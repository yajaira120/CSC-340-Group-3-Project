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

        <div class = "header-image">
            <img src = "/images/header-image.png" alt="header-image">
        </div>


        <div class="content">
            <br>
            <br>

            <div class="intro">
                <p> Find a healthcare provider near you! </p>
            </div>

            <br>

            <div class="search">
                <form>
                    <input type = "text" class="search-input" placeholder="Search...">

                    <input type= "text" class="search-input" name = "location" class="location" placeholder="Location...">

                    <input type="text" class="search-input" name = "insurance" class="insurance" placeholder="Insurance...">

                    <button class="search-submit">
                        <img src="/images/search-icon.png" alt="search" style="width:20px; height:20px;">
                    </button>
                </form>
            </div>

            <br>
            <br>

            <div class="areas_of_specialty">

                <h2> Top Areas of Specialty </h2>

                <div class="gallery">
                    <a href="/browse">
                        <div class="specialty">
                            <p> Emergency Care </p>
                        </div>
                        <img src = "/images/emergency_care.png" height="100px" width="100px">
                    </a>
                </div>

                <div class="gallery">
                    <a href="/browse">
                        <div class="specialty">
                            <p> Primary Care </p>
                        </div>
                        <img src = "/images/primary_care.png" height="100px" width="100px">
                    </a>
                </div>

                <div class="gallery">
                    <a href="/browse">
                        <div class="specialty">
                            <p> Dentistry </p>
                        </div>
                        <img src = "/images/dentistry.png" width="100px" height="100px">
                    </a>
                </div>

                <div class="gallery">
                    <a href="/browse">
                        <div class="specialty">
                            <p> Eye Doctor </p>
                        </div>
                        <img src = "/images/eye_doctor.png" width="100px" height="100px">
                    </a>
                </div>

                <div class="gallery">
                    <a href="/browse">
                        <div class="specialty">
                            <p> Neurologist </p>
                        </div>
                        <img src = "/images/neurologist.png" width="100px" height="100px">
                    </a>
                </div>

            </div>

            <br>
            <br>
            <br>
            <br>



            <section class="explanation">
                <h2> What is Medlink? </h2>

                <br>

                <div class="user_sections">
                <div class="sections">
                    <p> Find Local Healthcare Providers </p>

                    <img src="/images/find_local_hp.png" alt="Find Local Healthcare Providers" height="280px" width="300px">
                    <button class="button_sections">
                        <a href="/browse"> <p> See Providers </p> </a>
                    </button>

                </div>

                <div class = "sections">
                    <p> Book Appointments </p>

                    <img src="/images/book_appointment.png" alt="Book Appointments" height="300px" width="350px">

                    <button class="button_sections">
                        <a href="/account-type-signup"> <p> Book Now</p> </a>
                    </button>

                </div>

                <div class="sections">
                    <p> Write Reviews </p>

                    <img src="/images/write_review.png" alt="Write Reviews" height="300px" width="320px">

                    <button class="button_sections">
                        <a href="/account-type-login"> <p> Write a Review </p> </a>
                    </button>
                </div>

                </div>

                <br>
                <br>
                <br>
                <br>

            </section>



            <section class="explanation">
                <h2> For Providers </h2>

                <div class="provider_sections">

                    <div class="sections">
                        <p> Connect With Patients </p>

                        <img src="/images/connect_with_patients.png" alt="Connect With Patients" height="280px" width="300px">

                        <button class="button_sections">
                            <a href="/account-type-signup"> <p> Connect Now </p> </a>
                        </button>

                    </div>

                    <div class = "sections">
                        <p> Display Availability </p>

                        <img src="/images/display_availability.png" alt="Display Availability" height="300px" width="350px">

                        <button class="button_sections">
                            <a href="/account-type-signup"> <p> Create Account </p> </a>
                        </button>

                    </div>

                    <div class="sections">
                        <p> Read Reviews </p>

                        <img src="/images/read_reviews.png" alt="Read Reviews" height="300px" width="320px">

                        <button class="button_sections">
                            <a href="providerlogin.html"> <p> Read Reviews </p> </a>
                        </button>
                    </div>

                </div>

                <br>
                <br>
                <br>
                <br>
            </section>

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