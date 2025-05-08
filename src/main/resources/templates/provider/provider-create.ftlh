<!DOCTYPE html>
<html>
<head>
    <title>Create New Provider</title>
</head>
<body>
    <h1>Create New Provider</h1>
    <form action="/provider/save" method="post">
        <label for="firstName">First Name:</label><br>
        <input type="text" id="firstName" name="firstName"><br><br>

        <label for="lastName">Last Name:</label><br>
        <input type="text" id="lastName" name="lastName"><br><br>

        <label for="email">Email:</label><br>
        <input type="email" id="email" name="email"><br><br>

        <label for="specialty">Specialty:</label><br>
        <input type="text" id="specialty" name="specialty"><br><br>

        <input type="submit" value="Create Provider">
    </form>
    <br>
    <a href="/provider/all">Back to Provider List</a>
</body>
</html>