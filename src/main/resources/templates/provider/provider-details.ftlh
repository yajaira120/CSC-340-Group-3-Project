<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>${title}</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            padding: 40px;
            background-color: #f2f2f2;
        }
        .profile-card {
            background-color: #ffffff;
            border-radius: 8px;
            padding: 30px;
            max-width: 600px;
            margin: auto;
            box-shadow: 0 4px 10px rgba(0,0,0,0.1);
        }
        .profile-card h1 {
            color: #333;
            margin-bottom: 20px;
        }
        .profile-card p {
            font-size: 16px;
            margin: 10px 0;
        }
        .profile-card .label {
            font-weight: bold;
        }
    </style>
</head>
<body>

<div class="profile-card">
    <h1>Provider Profile</h1>

    <p><span class="label">First Name:</span> ${provider.name}</p>

    <p><span class="label">Email:</span> ${provider.email}</p>
    <p><span class="label">Description:</span> ${provider.description}</p>
    <p><span class="label">National Provider Number:</span> ${provider.national_provider_num}</p>
    <p><span class="label">Medical License Number:</span> ${provider.med_license_num}</p>
    <p><span class="label">Username:</span> ${provider.provider_username}</p>
    <p><span class="label">Password:</span> ${provider.provider_password}</p>
    <p><span class="label">Date of Birth:</span> ${provider.dob}</p>

    <br>
    <a href="/provider/all">← Back to All Providers</a>
</div>

</body>
</html>
