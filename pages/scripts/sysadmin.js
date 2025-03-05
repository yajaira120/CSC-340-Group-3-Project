document.addEventListener("DOMContentLoaded", function () {
    console.log("SysAdmin script loaded successfully.");
    
    // Load banned and suspended users on page load
    loadBannedUsers();
    loadSuspendedUsers();

    // Select all buttons and add event listeners
    document.querySelectorAll(".ban-btn").forEach(button => {
        button.addEventListener("click", function () {
            let username = this.getAttribute("data-username");
            let role = getUserRole(username);
            banUser(username, role);
        });
    });

    document.querySelectorAll(".suspend-btn").forEach(button => {
        button.addEventListener("click", function () {
            let username = this.getAttribute("data-username");
            let role = getUserRole(username);
            suspendUser(username, role);
        });
    });

    document.querySelectorAll(".profile-btn").forEach(button => {
        button.addEventListener("click", function () {
            let username = this.getAttribute("data-username");
            viewProfile(username);
        });
    });
});

// Function to Get User Role
function getUserRole(username) {
    if (username === "John Doe") return "Customer";
    if (username === "Jane Smith") return "Provider";
    return "Unknown";
}

// Function to Ban User
function banUser(username, role) {
    let bannedUsers = JSON.parse(localStorage.getItem("bannedUsers")) || [];

    // Check if user is already banned (Prevents duplicates)
    if (bannedUsers.some(user => user.username === username)) {
        alert(username + " is already banned.");
        return;
    }

    // Add user to the banned list
    bannedUsers.push({ username, role });
    localStorage.setItem("bannedUsers", JSON.stringify(bannedUsers));

    // Remove from User Management
    removeUserFromManagement(username);

    alert(username + " has been banned.");
    loadBannedUsers();
}

// Function to Suspend User
function suspendUser(username, role) {
    let suspendedUsers = JSON.parse(localStorage.getItem("suspendedUsers")) || [];

    // Check if user is already suspended (Prevents duplicates)
    if (suspendedUsers.some(user => user.username === username)) {
        alert(username + " is already suspended.");
        return;
    }

    // Add user to the suspended list
    suspendedUsers.push({ username, role });
    localStorage.setItem("suspendedUsers", JSON.stringify(suspendedUsers));

    // Remove from User Management
    removeUserFromManagement(username);

    alert(username + " has been suspended.");
    loadSuspendedUsers();
}

// Function to Remove User from User Management
function removeUserFromManagement(username) {
    let rows = document.querySelectorAll("#user-management table tr");

    rows.forEach(row => {
        let userCell = row.querySelector("td");
        if (userCell && userCell.innerText === username) {
            row.remove(); // Remove the row from the table
        }
    });
}

// Function to Load Banned Users
function loadBannedUsers() {
    let bannedUsers = JSON.parse(localStorage.getItem("bannedUsers")) || [];
    let bannedList = document.getElementById("banned-users-list");
    bannedList.innerHTML = "";

    bannedUsers.forEach(user => {
        let row = `<tr>
            <td>${user.username}</td>
            <td>${user.role}</td>
            <td><button class="unban-btn" data-username="${user.username}">Unban</button></td>
        </tr>`;
        bannedList.innerHTML += row;
    });

    // Add event listeners for unbanning
    document.querySelectorAll(".unban-btn").forEach(button => {
        button.addEventListener("click", function () {
            let username = this.getAttribute("data-username");
            unbanUser(username);
        });
    });
}

// Function to Load Suspended Users
function loadSuspendedUsers() {
    let suspendedUsers = JSON.parse(localStorage.getItem("suspendedUsers")) || [];
    let suspendedList = document.getElementById("suspended-users-list");
    suspendedList.innerHTML = "";

    suspendedUsers.forEach(user => {
        let row = `<tr>
            <td>${user.username}</td>
            <td>${user.role}</td>
            <td><button class="unsuspend-btn" data-username="${user.username}">Unsuspend</button></td>
        </tr>`;
        suspendedList.innerHTML += row;
    });

    // Add event listeners for unsuspending
    document.querySelectorAll(".unsuspend-btn").forEach(button => {
        button.addEventListener("click", function () {
            let username = this.getAttribute("data-username");
            unsuspendUser(username);
        });
    });
}

// Function to Unban User
function unbanUser(username) {
    let bannedUsers = JSON.parse(localStorage.getItem("bannedUsers")) || [];
    bannedUsers = bannedUsers.filter(user => user.username !== username);
    localStorage.setItem("bannedUsers", JSON.stringify(bannedUsers));

    alert(username + " has been unbanned.");
    loadBannedUsers();

    // Restore user to User Management
    restoreUserToManagement(username);
}

// Function to Unsuspend User
function unsuspendUser(username) {
    let suspendedUsers = JSON.parse(localStorage.getItem("suspendedUsers")) || [];
    suspendedUsers = suspendedUsers.filter(user => user.username !== username);
    localStorage.setItem("suspendedUsers", JSON.stringify(suspendedUsers));

    alert(username + " has been unsuspended.");
    loadSuspendedUsers();

    // Restore user to User Management
    restoreUserToManagement(username);
}

// Function to Restore User to User Management
function restoreUserToManagement(username) {
    let role = getUserRole(username);
    let userTable = document.querySelector("#user-management table");

    let newRow = document.createElement("tr");
    newRow.innerHTML = `
        <td>${username}</td>
        <td>${role}</td>
        <td>
            <button class="ban-btn" data-username="${username}">Ban</button>
            <button class="suspend-btn" data-username="${username}">Suspend</button>
            <button class="profile-btn" data-username="${username}">View Profile</button>
        </td>
    `;

    userTable.appendChild(newRow);

    // Reattach event listeners for new buttons
    newRow.querySelector(".ban-btn").addEventListener("click", function () {
        banUser(username, role);
    });

    newRow.querySelector(".suspend-btn").addEventListener("click", function () {
        suspendUser(username, role);
    });

    newRow.querySelector(".profile-btn").addEventListener("click", function () {
        viewProfile(username);
    });
}

// Function to View User Profile
function viewProfile(username) {
    localStorage.setItem("selectedUser", username);
    window.location.href = "profile.html";
}

function logoutUser() {
    localStorage.removeItem("isLoggedIn"); // Remove login status
    localStorage.removeItem("currentUser"); // Remove stored user
    window.location.href = "login.html"; // Redirect back to login
}


// Function to Toggle Visibility of Sections
function toggleSection(sectionId) {
    let section = document.getElementById(sectionId);

    if (!section) {
        console.error("Section not found: " + sectionId);
        return;
    }

    if (section.style.display === "none" || section.style.display === "") {
        section.style.display = "block";
    } else {
        section.style.display = "none";
    }
}


