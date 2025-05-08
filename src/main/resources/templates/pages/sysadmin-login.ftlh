<!DOCTYPE html>
<html>
<head>
    <title>SysAdmin Login</title>
    <link rel="stylesheet" href="/css/style.css">
</head>
<body>
    <div class="wrapper">
        <h2>SysAdmin Login</h2>
        <form method="POST" action="/sysadmin-login">
            <label>Username:</label>
            <input type="text" name="username" required />
            <br/>
            <label>Password:</label>
            <input type="password" name="password" required />
            <br/>
            <button type="submit">Login</button>
            <p style="color:red;">${error!}</p>
        </form>
    </div>
</body>
</html>