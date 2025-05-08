<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Update User</title>
</head>
<body>
    <h1>Update User: ${user.firstName} ${user.lastName}</h1>

    <form method="post" action="/ui/admin/users/update">
        <input type="hidden" name="id" value="${user.id}">
        
        <label for="accountStatus">Account Status:</label>
        <input type="text" name="accountStatus" id="accountStatus" value="${user.accountStatus}">
        
        <button type="submit">Update</button>
    </form>
    
    <a href="/ui/admin/users">← Back to User List</a>
</body>
</html>