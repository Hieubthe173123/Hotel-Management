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
            width: 300px;
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
            margin-top: 5px;
            margin-bottom: 10px;
        }

        .login-form input[type="submit"]:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <div class="login-container">
        <h2>Login</h2>
        <form class="login-form" action="login" method="POST">
            <div class="alert alert-danger" role="alert">
                <p class="text-danger">${mess}</p>
                
            </div><br/>
            <label for="username">Tên Đăng Nhập:</label>
            <input type="text" id="username" name="username"/>
            <br/>   
            <label for="password">Mật Khẩu:</label>
            <input type="password" id="password" name="password"/>
            <br/>
           
            <input href="home"type="submit" value="Đăng Nhập"/><br/>
            
            <h8>Bạn chưa có tài khoản ? <a href="register.jsp">Đăng kí</a></h8>
            
        </form>
    </div>
</body>
</html>