<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
  <head>
    <title>首页</title>
    <style> 
     body{
        background-image:url(images/ico/beijing2.webp);
        background-size: 100% 100% ;
      }      
      a{
        text-decoration: none;
        color: black;
        font-size: 18px;
      }  
      #login-box {
  		display: flex;
  		flex-direction: column;
  		justify-content: center;
  		align-items: center;
  		height: 100vh;
		}

	  #login-box h3 {
  		margin-bottom: 50px;
		}

      h3{
        width: 180px;
        height: 38px;
        line-height: 40px;
        background: deepskyblue;
        border-radius:8px;
        text-align: center; 
      }
      input[type=submit]{
        margin-top: 20px;
        background-color: deepskyblue;
        color: white;
        border: none;
        padding: 10px 20px;
        border-radius: 5px;
        font-size: 16px;
        cursor: pointer;
      }
      #admin-login-box {
  		display: flex;
  		justify-content: center;
		}

	  #admin-login {
  		margin-top: 100px;
  		color: deepskyblue;
  		font-size: 18px;
		}
    </style>
  </head> 
  <body>
	<div id="login-box">
      <h3><a href="${pageContext.request.contextPath}/book/allBook">进入书籍页面</a></h3>
      <form action="${pageContext.request.contextPath}/user/login" method="post">
      <div id="admin-login">管理员后台登录</div>
        <table>
          <tr>
            <td><input type="submit" value="登录"></td>
          </tr>
        </table>
      </form>
    </div>
  </body>
</html>
