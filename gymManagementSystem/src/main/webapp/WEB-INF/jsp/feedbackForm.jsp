<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
<head>
    <title>Feedback Form</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .form-container {
            background-color: #ffffff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 700px;
        }

        h1 {
            font-size: 24px;
            margin-bottom: 20px;
            text-align: center;
        }

        label {
            display: block;
            font-weight: bold;
            margin-bottom: 5px;
        }

        input[type="text"],
        input[type="email"],
        textarea {
            width: 100%;
            padding: 8px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }

        textarea {
            resize: vertical;
            height: 100px;
        }

        .button-container {
            display: flex;
            justify-content: space-between;
        }

        button {
            background-color: #4CAF50;
            color: white;
            padding: 10px 15px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        button:hover {
            background-color: #45a049;
        }

        button[type="reset"] {
            background-color: #f44336;
        }

        button[type="reset"]:hover {
            background-color: #d32f2f;
        }
    </style>
</head>
<body>
    <div class="form-container">
        <h1>Feedback Form</h1>
        <form  action="/submitFeedback"  method="post">
            <label for="name">Name:</label>
            <input type="text" id="name" name="name" required />

            <label for="email">Email:</label>
            <input type="email" id="email" name="email" required />

            <label for="comments">How was your experience?</label>
            <textarea id="comments" name="comment" required></textarea>

            <div class="button-container">
                <button type="submit">Submit</button>
                <button type="reset">Reset</button>
            </div>
        </form>
    </div>
</body>
</html>
