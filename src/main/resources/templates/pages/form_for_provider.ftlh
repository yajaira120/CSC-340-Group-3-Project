<!DOCTYPE html>
<html>
<head>
    <title>Provider Form</title>
</head>
<body>
    <h1>Provider Form</h1>
    <form action="/provider/save" method="post">
        <input type="hidden" name="id" value="${provider.id!}" />

        <label>First Name:</label><br>
        <input type="text" name="firstName" value="${provider.firstName!}" /><br><br>

        <label>Last Name:</label><br>
        <input type="text" name="lastName" value="${provider.lastName!}" /><br><br>

        <label>Email:</label><br>
        <input type="email" name="email" value="${provider.email!}" /><br><br>

        <label>Specialty:</label><br>
        <input type="text" name="specialty" value="${provider.specialty!}" /><br><br>

        <input type="submit" value="Submit" />
    </form>
    <br>
    <a href="/provider/all">Cancel</a>
</body>
</html>