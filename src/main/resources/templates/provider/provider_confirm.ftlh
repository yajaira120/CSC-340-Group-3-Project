<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Provider Created Successfully</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            padding: 20px;
        }

        h1 {
            color: #2E8B57;
        }

        .confirmation-message {
            margin-bottom: 20px;
            font-size: 1.2em;
        }

        .confirmation-buttons {
            margin-top: 20px;
        }

        .confirmation-buttons a {
            display: inline-block;
            padding: 10px 20px;
            margin-right: 10px;
            background-color: #2E8B57;
            color: white;
            text-decoration: none;
            border-radius: 4px;
        }

        .confirmation-buttons a:hover {
            background-color: #1e603b;
        }

        .debug-info {
            margin-top: 20px;
            font-size: 0.9em;
            color: #888;
        }
    </style>
</head>
<body>

<h1>Provider Profile Created</h1>

<div class="confirmation-message">
    <p>Your profile has been successfully created!</p>
</div>

<#if provider?? && provider.provider_id??>
    <div class="confirmation-buttons">
        <a href="/provider/details/${provider.provider_id}">Go to Profile Page</a>
    </div>
<#else>
    <div class="confirmation-message" style="color: red;">
        <p>Error: Provider ID not found. Cannot link to profile page.</p>
    </div>
</#if>

<div class="debug-info">
    <p>DEBUG: Provider ID = ${provider.provider_id!"N/A"}</p>
</div>

</body>
</html>
