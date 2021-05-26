<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>login</title>
    <link rel="stylesheet" href="style.css">
    
</head>

<body>
    <br><br>
    <div class="cont">
        <div class="form sign-in">
        <br>
        <%
     
        if(session.getAttribute("key")=="no")
            {out.println("<h2>Invalid Username or Password,<br>Please try again...!</h2>");
        	 session.removeAttribute("key"); }
        else{
        	out.println("<h2>Welcome back,</h2>");
        }
        	
        %>
        
            
            <form action="Login" method="post">
            <label>
                <span>Username</span>
                <input type="text" name="uname"/>
            </label>
            <label>
                <span>Password</span>
                <input type="password" name="pass" />
            </label>
            <p class="forgot-pass">Forgot password?</p>
            
            <button type="submit" class="submit">Sign In</button>
            </form>
            
            <button type="button" class="fb-btn">Connect with <span>facebook</span></button>
        </div>
        <div class="sub-cont">
            <div class="img">
                <div class="img__text m--up">
                    <h2>New here?</h2>
                    <p>Sign up and discover great amount of new opportunities!</p>
                </div>
                <div class="img__text m--in">
                    <h2>One of us?</h2>
                    <p>If you already has an account, just sign in. We've missed you!</p>
                </div>
                <div class="img__btn">
                    <span class="m--up">Sign Up</span>
                    <span class="m--in">Sign In</span>
                </div>
            </div>
            <div class="form sign-up">
            <br>
                <h2>Time to feel like home,</h2>
                <form action="SignUp" method="post">
                <label>
                    <span>Name</span>
                    <input type="text" name="uname" required="required" />
                </label>
                <label>
                    <span>Password</span>
                    <input type="password" name="pass" required="required"/>
                </label><br>
                <button type="submit" class="submit">Sign Up</button>
                </form>
                <button type="button" class="fb-btn">Join with <span>facebook</span></button>
            </div>
        </div>
    </div>

    <script>
        document.querySelector('.img__btn').addEventListener('click', function() {
            document.querySelector('.cont').classList.toggle('s--signup');
        });
    </script>
</body>

</html>