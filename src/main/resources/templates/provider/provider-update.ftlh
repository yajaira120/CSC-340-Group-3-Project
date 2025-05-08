<!DOCTYPE html>
<html>
<head>
    <title>Update Provider</title>
    <link rel="stylesheet" href="/css/style.css">
</head>
<body>
    <h2>Update Provider Account</h2>
    <form action="/provider/update/${provider.provider_id}" method="post">
        <label for="name">Name:</label>
        <input type="text" name="name" value="${provider.name}" required><br>

        <label for="email">Email:</label>
        <input type="email" name="email" value="${provider.email}" required><br>

        <label for="provider_password">Password:</label>
        <input type="password" name="provider_password" value="${provider.provider_password}" required><br>

        <label for="specialty">Specialty:</label>
        <input type="text" name="specialty" value="${provider.specialty}"><br>

        <label for="location">Location:</label>
        <input type="text" name="location" value="${provider.location}"><br>

        <!-- Add more fields as needed -->

        <button type="submit">Update</button>
    </form>
</body>
</html>