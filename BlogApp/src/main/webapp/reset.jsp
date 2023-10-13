<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sign in page</title>
    <link rel="stylesheet" href="shineup.css">
</head>
<body>
    <!--<header>
        <h1>Tech Update</h1>

    </header>
    -->
    <div class="container">
        <div class="img">
            <img src="./img/job-7291427_1280.png" alt="img">
        </div>
        <div class="form">
            <form method="post" action="reset">
                <table >
                   
                    <tr>
                        <td>Email: </td>
                        <td><input type="email" name="Uemail" required></td>
                    </tr>
                    <tr>
                        <td>Password: </td>
                        <td><input type="password" name="upwd" required></td>
                    </tr>
                     <tr>
                        <td>Confirm Password: </td>
                        <td><input type="password" name="cupwd" required></td>
                    </tr>
                    <tr>
                    	<td>
                    		<p id="errMsg"></p>
                    	</td>
                    </tr>
<%--                <%@ page=" %>  --%>
                    
                    
                </table>

                

                <div class="btns">
                    <input class="btn" type="submit" value="Submit">
                    <input class="btn" type="reset" value="Reset">
                </div>
            </form>
            
            
        </div>
    </div>
    <script>
		
	</script>
</body>
</html>