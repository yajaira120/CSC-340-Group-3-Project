<!DOCTYPE html>

<html>
    <head>
        <title> All Providers </title>
        <link rel="stylesheet" type="text/css" href="/css/style.css">
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

                                                            <#if sessionProvider??>
                                                                <!-- Only show if the user is logged in -->
                                                                <li><a href="/provider/details/${sessionProvider.provider_id}">My Account</a></li>
                                                                <li><a href="/logout">Logout</a></li>
                                                            <#else>
                                                                <li><a href="/account-type-login">Log In</a></li>
                                                                <li><a href="/account-type-signup">Sign Up</a></li>
                                                            </#if>
                                                                <li><a href="/SysAdmin.html">Admin Panel</a></li>
                </ul>
            </div>
        </div>

        <div class="provider-list">
            <h1> ${title} </h1>
            <a href= "/provider/createProviderForm"> Create New provider </a>

            <form action="/provider/name">
                <input type="text" name="search" placeholder="Search By Name ">
            </form>

            <!-- providers Table -->
            <table class= "provider-table">
                <tr>
                    <th> ID </th>
                    <th> Name </th>
                    <th> Address </th>
                    <th> Date of Birth </th>
                    <th> Email </th>
                    <th> Phone Number </th>
                    <th> Insurance Provider </th>
                    <th> Medical History </th>
                </tr>
                <#list providerList as provider>
                <tr>
                    <td> ${provider.provider_id!"N/A"} </td>
                    <td> ${provider.name!"N/A"}</td>

                    <td> ${provider.dob?c!"N/A"}</td>
                    <td> ${provider.email!"N/A"}</td>



                </tr>
                </#list>
            </table>
        </div>

    </body>
</html>