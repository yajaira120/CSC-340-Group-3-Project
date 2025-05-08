<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>SysAdmin - Review Moderation</title>
    <link rel="stylesheet" href="/css/style.css">
</head>
<body>
    <div class="header">
        <h1>Review Moderation Panel</h1>
        <a href="/home">← Back to Dashboard</a>
    </div>

    <main>
        <#if reviews?? && reviews?size > 0>
            <table>
                <thead>
                    <tr>
                        <th>Review ID</th>
                        <th>Patient</th>
                        <th>Provider</th>
                        <th>Rating</th>
                        <th>Comment</th>
                        <th>SysAdmin Comment</th>
                        <th>Action</th>
                    </tr>
                </thead>
                <tbody>
                    <#list reviews as review>
                        <tr>
                            <td>${review.review_id}</td>
                            <td>${review.patient.name}</td>
                            <td>${review.provider.name}</td>
                            <td>${review.rating}</td>
                            <td>${review.comment}</td>
                            <td>
                                <form action="/reviews/comment/${review.review_id}" method="post">
                                    <textarea name="comment" rows="3" cols="30">${review.sysadmin_comment!""}</textarea>
                                    <br>
                                    <button type="submit">Update Comment</button>
                                </form>
                            </td>
                            <td>
                                <form action="/reviews/delete/${review.review_id}" method="post" onsubmit="return confirm('Are you sure you want to delete this review?');">
                                    <input type="hidden" name="_method" value="delete">
                                    <button type="submit">Delete</button>
                                </form>
                            </td>
                        </tr>
                    </#list>
                </tbody>
            </table>
        <#else>
            <p>No reviews found.</p>
        </#if>
    </main>
</body>
</html>