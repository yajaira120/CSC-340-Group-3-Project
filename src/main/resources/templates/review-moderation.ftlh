<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Review Moderation</title>
    <link rel="stylesheet" href="/css/sysadmin.css">
</head>
<body>
    <div class="header">
        <h1>Moderate Reviews</h1>
        <p>Review and comment on submitted feedback</p>
        <hr>
    </div>

    <section class="moderation-tools">
        <#if message??>
            <div style="background-color: #e6ffed; color: #22543d; padding: 10px; border-radius: 5px; margin-bottom: 1rem;">
                ${message}
            </div>
        </#if>

        <#list reviews as review>
            <div class="review-box">
                <p><strong>Review ID:</strong> ${review.review_id}</p>
                <p><strong>Patient:</strong> ${review.patient.name}</p>
                <p><strong>Provider:</strong> ${review.provider.name}</p>
                <p><strong>Rating:</strong> ${review.rating}</p>
                <p><strong>Comment:</strong> ${review.comment}</p>

                <form method="POST" action="/reviews/${review.review_id}/comment">
                    <label for="comment-${review.review_id}">Admin Comment:</label><br>
                    <textarea id="comment-${review.review_id}" name="comment" rows="3" cols="60">${review.sysadminComment!""}</textarea><br>
                    <button type="submit">Save Comment</button>
                </form>
                <hr>
            </div>
        </#list>
    </section>
</body>
</html>