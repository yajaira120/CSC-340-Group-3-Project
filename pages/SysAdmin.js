function banUser() {
    alert("User has been banned.");
}

function suspendUser() {
    alert("User has been suspended.");
}

function banUser() {
    alert("User has been banned."); // Placeholder action
}

function suspendUser() {
    alert("User has been suspended."); // Placeholder action
}

function logoutUser() {
    localStorage.removeItem("isLoggedIn"); // Remove login status
    localStorage.removeItem("currentUser"); // Remove stored user
    window.location.href = "login.html"; // Redirect back to login
}
