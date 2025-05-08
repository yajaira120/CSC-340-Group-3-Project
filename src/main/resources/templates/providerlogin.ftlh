<!DOCTYPE html>
<html lang="en">
<head>
    <title>Medlink - Provider Login</title>
    <link rel="stylesheet" href="/css/style.css">
</head>

<body>
    <div class="header">
        <div class="logo">
            <img src="/images/logo-medlink.png" alt="Medlink" width="100" height="100"/>
        </div>
        <h1><a href="/home">Medlink</a></h1>

        <div class="navbar">
            <ul>
                <li><a href="/browse">Browse</a></li>
                <li><a href="/provider/login">Log In</a></li>
                <li><a href="/provider/signup">Sign Up</a></li>
            </ul>
        </div>
    </div>

    <main class="main-container">
        <div class="signup-container">
            <h2>Provider Sign In</h2>
            <#if error??>
                <div style="color:red;">${error}</div>
            </#if>
            <form class="form-grid" action="/provider/login" method="POST">
                <div class="form-group">
                    <label for="email">Email:</label>
                    <input type="email" id="email" name="email" required>
                </div>
                <div class="form-group">
                    <label for="password">Password:</label>
                    <input type="password" id="password" name="password" required>
                </div>
                <div class="form-group full-width">
                    <button type="submit" class="submit-btn">Sign In</button>
                </div>
            </form>
        </div>
    </main>
</body>
</html>