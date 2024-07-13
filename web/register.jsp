<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .login-container {
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            padding: 20px;
            width: 500px;
        }

        .login-container h2 {
            text-align: center;
            margin-bottom: 20px;
        }

        .login-form input[type="text"],
        .login-form input[type="password"] {
            width: 91%;
            padding: 10px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        .login-form input[type="submit"] {
            width: 100%;
            padding: 10px;
            border: none;
            border-radius: 4px;
            background-color: #007bff;
            color: #fff;
            cursor: pointer;
            margin-top: 10px;
        }

        .login-form input[type="submit"]:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <div class="login-container">
        <h2>Register</h2>
        <form class="login-form" action="signup" method="POST">
            <label for="username">Tên Đăng Nhập:</label>
            <input type="text" id="username" name="username"/>
            <br/>   
            <label for="password">Mật Khẩu:</label>
            <input type="password" id="password" name="password"/>
           <label for="password">Nhập Lại Mật Khẩu:</label>
            <input type="password" id="re_pass" name="re_pass"/>
            <br/>
            <input type="submit" value="Đăng Kí"/>
            
        </form>
    </div>
</body>
</html>