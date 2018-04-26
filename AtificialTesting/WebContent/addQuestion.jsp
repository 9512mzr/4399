<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<form class="contact" action="" method="post" id="form">
            <div class="row clearfix">
                <div class="lbl">
                    <label for="name">
                        question</label>
                </div>
                <div class="ctrl">
                    <input type="text" id="question" name="question" placeholder="">
                </div>
            </div>
            <div class="row clearfix">
                <div class="lbl">
                    <label for="email">
                        option1</label>
                </div>
                <div class="ctrl">
                    <input type="text" id="option1" name="option1" data-required="true" 
                         placeholder="">
                </div>
            </div>
            <div class="row clearfix">
                <div class="lbl">
                    <label for="email">
                        option2</label>
                </div>
                <div class="ctrl">
                    <input type="text" id="option2" name="option2" data-required="true" 
                         placeholder="Ex: 111-258-444">
                </div>
            </div>
            <div class="row clearfix">
                <div class="lbl">
                    <label for="subject">
                        option3</label>
                </div>
                <div class="ctrl">
                    <input type="text" name="option3" id="option3" >
                </div>
            </div>
           <div class="row clearfix">
                <div class="lbl">
                    <label for="subject">
                        option4</label>
                </div>
                <div class="ctrl">
                    <input type="text" name="option4" id="option4" placeholder="">
                </div>
                <div class="row clearfix">
                <div class="lbl">
                    <label for="subject">
                       answer</label>
                </div>
                <div class="ctrl">
                    <input type="text" name="answer" id="answer" placeholder="">
                </div>
            </div>
            <div class="submit">
            	<input type="submit" name="submit" value="submit"  >
            	
            </div>
            </form>
</body>
</html>