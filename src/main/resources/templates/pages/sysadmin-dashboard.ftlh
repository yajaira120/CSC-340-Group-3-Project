<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>SysAdmin Dashboard</title>
    <link rel="stylesheet" href="/css/sysadmin.css">
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
</head>
<body>
    <div class="header">
        <h1>SysAdmin Control Panel</h1>
        <p>Welcome, SAD (SysAdmin)</p>
        <hr>
    </div>

    <section class="stats">
        <h2>System Statistics</h2>
        <ul>
            <li>Total Providers: ${stats.providers}</li>
            <li>Total Patients: ${stats.patients}</li>
            <li>Total Comments: ${stats.comments}</li>
            <li>Total Reviews: ${stats.reviews}</li>
        </ul>
    </section>

    <section class="user-management">
        <h2>User Management</h2>
        <table>
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Email</th>
                    <th>Role</th>
                    <th>Status</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
                <#list users as user>
                <tr>
                    <td>${user.id}</td>
                    <td>${user.email}</td>
                    <td>${user.role}</td>
                    <td>${user.accountStatus}</td>
                    <td>
                        <form action="/users/${user.id}/status" method="post" style="display:inline;">
                            <input type="hidden" name="status" value="${(user.accountStatus == "BANNED")?string("ACTIVE", "BANNED")}">
                            <button type="submit">${(user.accountStatus == "BANNED")?string("Unban", "Ban")}</button>
                        </form>
                        <form action="/users/${user.id}/delete" method="post" style="display:inline;">
                            <button type="submit" onclick="return confirm('Delete this user?')">Delete</button>
                        </form>
                    </td>
                </tr>
                </#list>
            </tbody>
        </table>
    </section>

    <section class="moderation-tools">
        <h2>Moderation Tools</h2>
        <a href="/reviews/view">
            <button class="admin-button">Moderate Reviews</button>
        </a>
    </section>

    <section class="charts">
        <h2>Data Visualizations</h2>
        <div style="display: flex; flex-wrap: wrap; gap: 2rem;">
            <div>
                <h3>Patient vs Provider Ratio</h3>
                <canvas id="userRatioChart" width="300" height="300"></canvas>
            </div>
            <div>
                <h3>Comments per Provider</h3>
                <canvas id="providerCommentsChart" width="300" height="300"></canvas>
            </div>
        </div>
    </section>

    <script>
        const userRatioCtx = document.getElementById('userRatioChart').getContext('2d');
        new Chart(userRatioCtx, {
            type: 'pie',
            data: {
                labels: ['Patients', 'Providers'],
                datasets: [{
                    data: [${patientCount}, ${providerCount}],
                    backgroundColor: ['#4e79a7', '#f28e2b']
                }]
            }
        });

        const providerLabels = [<#list providerCommentCounts?keys as key>'${key}'<#if key_has_next>, </#if></#list>];
        const providerData = [<#list providerCommentCounts?values as val>${val}<#if val_has_next>, </#if></#list>];

        const commentsCtx = document.getElementById('providerCommentsChart').getContext('2d');
        new Chart(commentsCtx, {
            type: 'pie',
            data: {
                labels: providerLabels,
                datasets: [{
                    data: providerData,
                    backgroundColor: [
                        '#59a14f', '#e15759', '#edc949', '#af7aa1',
                        '#ff9da7', '#9c755f', '#bab0ab', '#86bc86'
                    ]
                }]
            }
        });
    </script>
</body>
</html>