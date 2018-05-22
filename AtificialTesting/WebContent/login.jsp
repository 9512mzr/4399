<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en" class="no-js">
    <head>
        <meta charset="UTF-8" />
        <title>登录</title>
        <link rel="stylesheet" type="text/css" href="${ctx }/static/css/demo.css" />
        <link rel="stylesheet" type="text/css" href="${ctx }/static/css/style.css" />
		<link rel="stylesheet" type="text/css" href="${ctx }/static/css/animate-custom.css" />
    </head>
    <body>
        <div class="container">
            <div class="ass">
            </div>			
                <div id="container_demo" >
                    <!-- hidden anchor to stop jump http://www.css3create.com/Astuce-Empecher-le-scroll-avec-l-utilisation-de-target#wrap4  -->
                    <a class="hiddenanchor" id="toregister"></a>
                    <a class="hiddenanchor" id="tologin"></a>
                    <div id="wrapper">
                        <div id="login" class="animate form">
                            <form  action="teacherlogin" method="post"> 
                                <h1>Log in</h1> 
                                <p> 
                                    <label for="username" class="uname" data-icon="u" >您的ID</label>
                                    <input id="username" name="userid" required="required" type="text" placeholder="your userid"/>
                                </p>
                                <p> 
                                    <label for="password" class="youpasswd" data-icon="p">密码</label>
                                    <input id="password" name="pwd" required="required" type="password" placeholder="your password" /> 
                                </p>
                                <p class="keeplogin"> 
									<input type="checkbox" name="loginkeeping" id="loginkeeping" value="loginkeeping" /> 
									<label for="loginkeeping">记住登录状态</label>
								</p>
                                <p class="login button"> 
                                    <input type="submit" value="Login" /> 
								</p>
                                <p class="change_link">
									<a href="#toregister" class="to_register">加入我们</a>
								</p>
                            </form>
                        </div>

                        <div id="register" class="animate form">
                            <form  action="${ctx }/registtea" autocomplete="on"> 
                                <h1> Sign up </h1> 
                                <p> 
                                    <label for="usernamesignup" class="uname" data-icon="u">Your username</label>
                                    <input id="usernamesignup" name="nickName" required="required" type="text" placeholder="" />
                                </p>
                                <p> 
                                    <label for="emailsignup" class="youmail" data-icon="e" > Your ID</label>
                                    <input id="emailsignup" name="id" required="required" type="text" placeholder=""/> 
                                </p>
                                <p> 
                                    <label for="passwordsignup" class="youpasswd" data-icon="p">Your password </label>
                                    <input id="passwordsignup" name="passWord" required="required" type="password" placeholder=""/>
                                </p>
                                <p> 
                                    <label for="passwordsignup_confirm" class="youpasswd" data-icon="p">Please confirm your password </label>
                                    <input id="passwordsignup_confirm" name="passWord" required="required" type="password" placeholder=""/>
                                </p>
                                <p class="signin button"> 
									<input type="submit" value="Sign up"/> 
								</p>
                                <p class="change_link">  
									<a href="#tologin" class="to_register"> Go and log in </a>
								</p>
                            </form>
                        </div>	
                    </div>
                </div>  
        </div>
    </body>
</html>