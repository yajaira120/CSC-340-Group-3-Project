document.addEventListener("DOMContentLoaded", function () {
    document.getElementById("login-form").addEventListener("submit", function (event) {
        event.preventDefault(); // Prevent form submission

        let username = document.getElementById("username").value;
        let password = document.getElementById("password").value;

        // Hardcoded valid credentials (Can be moved to backend later)
        const validCredentials = [
            { username: "SAD", password: "UNCG" },
            { username: "Admin", password: "1234" } // Example of multiple users
        ];

        // Check if the credentials match
        let isValidUser = validCredentials.some(user => user.username === username && user.password === password);

        if (isValidUser) {
            localStorage.setItem("isLoggedIn", "true"); // Store login state
            localStorage.setItem("currentUser", username); // Store username
            window.location.href = "sysadmin.html"; // Redirect to admin panel
        } else {
            document.getElementById("error-message").innerText = "Invalid username or password.";
        }
    });
});

// Function to go back to home
function goBackToHome() {
    window.location.href = "Home.html"; // Navigate back to home page
}
