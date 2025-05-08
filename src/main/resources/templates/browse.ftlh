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


        <div class="browse_content">


            <div class="search">
                <form action="/search" method="get">
                    <input type = "text" class="search-input" placeholder="Search...">

                    <input type= "text" class="search-input" name = "location" class="location" placeholder="Location...">

                    <input type="text" class="search-input" name = "insurance" class="insurance" placeholder="Insurance...">

                    <button class="search-submit">
                        <img src="/images/search-icon.png" alt="search" style="width:20px; height:20px;">
                    </button>
                </form>
            </div>


            <div class="provider_id-list">
                    <#list providerList as provider_id>
                        <div class="provider_id-card">
                            <img src="/images/icon_1.png" alt="Provider 1" class="provider_id-image">

                            <div class="provider_id-info">
                                <h2 class="provider_id-name">${provider_id.name!"N/A"}</h2>
                                <p class="provider_id-location">${provider_id.location!"N/A"}</p>
                                <p class="provider_id-specialty">${provider_id.specialty!"N/A"}</p>

                                <div class="rating-and-button">
                                    <p class="provider_id-rating"> Rating: ${provider_id.rating!"N/A"}</p>

                                    <a href="/provider_id/browse/${provider_id.provider_id}" class="profile-button">View Profile</a>
                                </div>
                            </div>
                        </div>
                    </#list>
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