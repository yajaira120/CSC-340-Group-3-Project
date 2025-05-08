<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Moderate Reviews - SysAdmin</title>
    <link rel="stylesheet" href="/css/sysadmin.css">
    <style>
        .review-card {
            border: 1px solid #ccc;
            padding: 1rem;
            margin-bottom: 1rem;
            border-radius: 8px;
            background-color: #fff;
        }

        .moderated {
            border-left: 6px solid #3182ce;
            background-color: #f0f8ff;
        }

        .review-header {
            font-weight: bold;
            margin-bottom: 0.5rem;
        }

        .comment-form {
            margin-top: 1rem;
        }

        textarea {
            width: 100%;
            padding: 0.5rem;
            resize: vertical;
        }

        .submit-btn {
            margin-top: 0.5rem;
            padding: 0.5rem 1rem;
            background-color: #3182ce;
            color: #fff;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        .submit-btn:hover {
            background-color: #2b6cb0;
        }
    </style>
</head>
<body>

<div class="header">
    <h1>Review Moderation Panel</h1>
    <p>View and moderate submitted reviews</p>
    <hr>
</div>

<div class="stats" style="max-width: 900px;">
    <#if message??>
        <p style="color: green;">${message}</p>
    </#if>
    <#if error??>
        <p style="color: red;">${error}</p>
    </#if>

    <#list reviews as review>
        <div class="review-card ${review.sysadminComment?has_content?then('moderated','')}">
            <div class="review-header">
                Review by Patient ID ${review.patient.patient_id} on Provider ID ${review.provider.provider_id}
            </div>
            <p><strong>Rating:</strong> ${review.rating}</p>
            <p><strong>Comment:</strong> ${review.comment}</p>
            <p><strong>Date:</strong> ${review.created_at?string("yyyy-MM-dd HH:mm")}</p>

            <#if review.sysadminComment?has_content>
                <p><strong>Moderated Comment:</strong> <em>${review.sysadminComment}</em></p>
            <#else>
                <form class="comment-form" action="/reviews/comment/${review.review_id}" method="post">
                    <label for="comment">Add SysAdmin Comment:</label><br>
                    <textarea name="comment" rows="3" placeholder="Write admin comment here..."></textarea><br>
                    <button type="submit" class="submit-btn">Submit</button>
                </form>
            </#if>
        </div>
    </#list>
</div>

</body>
</html>