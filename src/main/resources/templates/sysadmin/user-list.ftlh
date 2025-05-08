<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>User Management</title>
    <link rel="stylesheet" href="/css/sysadmin.css">
</head>
<body>
    <h1>User Management</h1>

    <table>
        <thead>
            <tr>
                <th>ID</th>
                <th>Username</th>
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
                <td>${user.username}</td>
                <td>${user.email}</td>
                <td>${user.role}</td>
                <td>${user.accountStatus}</td>
                <td>
                    <form method="post" action="/users/${user.id}/status" style="display:inline;">
                        <input type="hidden" name="_method" value="put">
                        <input type="hidden" name="status" value="BANNED">
                        <button type="submit">Ban</button>
                    </form>

                    <form method="post" action="/users/${user.id}/status" style="display:inline;">
                        <input type="hidden" name="_method" value="put">
                        <input type="hidden" name="status" value="ACTIVE">
                        <button type="submit">Unban</button>
                    </form>

                    <form method="post" action="/users/${user.id}" style="display:inline;">
                        <input type="hidden" name="_method" value="delete">
                        <button type="submit">Delete</button>
                    </form>
                </td>
            </tr>
        </#list>
        </tbody>
    </table>
</body>
</html>