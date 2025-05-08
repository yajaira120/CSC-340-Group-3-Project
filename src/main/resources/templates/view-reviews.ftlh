<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>All Reviews - Admin Panel</title>
    <link rel="stylesheet" href="/css/style.css">
</head>
<body>

<h1>All Reviews</h1>

<#if message??>
    <p style="color: green;">${message}</p>
</#if>
<#if error??>
    <p style="color: red;">${error}</p>
</#if>

<table border="1">
    <thead>
        <tr>
            <th>Review ID</th>
            <th>Provider</th>
            <th>Patient</th>
            <th>Rating</th>
            <th>Comment</th>
            <th>SysAdmin Comment</th>
            <th>Actions</th>
        </tr>
    </thead>
    <tbody>
    <#list reviews as review>
        <tr>
            <td>${review.review_id}</td>
            <td>${review.provider.name}</td>
            <td>${review.patient.name}</td>
            <td>${review.rating}</td>
            <td>${review.comment}</td>
            <td>${review.sysadmin_comment!""}</td>
            <td>
                <form method="post" action="/reviews/admin/comment/${review.review_id}">
                    <input type="text" name="sysadmin_comment" placeholder="Enter admin comment" required />
                    <button type="submit">Add Comment</button>
                </form>
            </td>
        </tr>
    </#list>
    </tbody>
</table>

</body>
</html>