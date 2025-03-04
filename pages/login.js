function loginUser() {
    // Get input values
    let username = document.getElementById("username").value;
    let password = document.getElementById("password").value;

    // Set your fixed login credentials
    const validUsername = "SAD";
    const validPassword = "UNCG";

    // Check if entered credentials match
    if (username === validUsername && password === validPassword) {
        localStorage.setItem("isLoggedIn", "true"); // Store login status
        localStorage.setItem("currentUser", username); // Store username
        window.location.href = "sysadmin.html"; // Redirect to SysAdmin
        return false; // Prevent form submission
    } else {
        document.getElementById("error-message").innerText = "Invalid login credentials!";
        return false; // Prevent form submission
    }
}
