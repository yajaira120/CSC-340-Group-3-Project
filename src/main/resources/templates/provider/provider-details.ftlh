<!DOCTYPE html>

<html>
    <head>
        <title> Provider </title>
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

        <div class="provider-detail">

            <div class="provider-image-container">
                <img src="/images/icon_1.png" alt="Dr" class="provider-image">
                <div class="provider-rating">Rating: ${provider.rating!"N/A"}</div>
            </div>
            <div class="provider-info">
                <h1 class="provider-name">${provider.name!"N/A"}</h1>
                <p class="provider-location">${provider.location!"N/A"}</p>
                <p class="provider-specialty">${provider.specialty!"N/A"}</p>
                <p class="provider-credentials">${provider.qualifications!"N/A"}</p>

                <br>
                <br>

                <div class="calendar">
                    <p>Available Date and Times:</p>
                        <ul class="availability-list">
                            <li>
                                <strong> October 1, 2025 </strong>

                                <div class="time-slots">
                                    <a href="form_for_appointment.html">09:00 AM</a>
                                    <a href="form_for_appointment.html">10:00 AM</a>
                                    <a href="form_for_appointment.html">11:00 AM</a>
                                </div>
                            </li>

                            <li>
                                <strong> October 5, 2025 </strong>
                                <div class="time-slots">
                                    <a href="form_for_appointment.html">01:00 PM</a>
                                    <a href="form_for_appointment.html">02:30 PM </a>
                                </div>
                            </li>

                            <li>
                                <strong> October 10, 2025 </strong>
                                <div class="time-slots">
                                    <a href="form_for_appointment.html">09:00 AM</a>
                                    <a href="form_for_appointment.html">10:00 AM</a>
                                </div>
                            </li>

                            <li>
                                <strong> October 15, 2025 </strong>
                                <div class="time-slots">
                                    <a href="form_for_appointment.html">12:00 PM</a>
                                    <a href="form_for_appointment.html">03:00 PM</a>
                                    <a href="form_for_appointment.html">03:30 PM</a>
                                </div>
                            </li>

                        </ul>
                </div>

                <h2 class="reviews-heading">Reviews</h2>
                <div class="review">
                    <p class="review-author">Emily R. :</p>
                    <p class="review-text">Dr. Doe was fantastic! He took the time to explain everything clearly and made me feel at ease.</p>
                </div>
                <div class="review">
                    <p class="review-author">Michael T. :</p>
                    <p class="review-text">Great experience, very professional and knowledgeable. Highly recommend!</p>
                </div>

                <a href="write_review.html" class="write_review_button"> Write a Review </a>

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