<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Home</title>
  <style>
         * {
        background-color: aquamarine;
        margin: 0px;
        padding: 0px;

    }

    .wrapper {
        width: 970px;
        margin: auto;
        margin-top: 20px;
    }
    .title{
        text-align: center;
        font-size: 5em;
    }
    .error{
        text-align: center;
        font-size: 50px;
        color: purple;
    }
    .input{
        position: relative;
        left: 350px;
        margin-top: 20px;
    }
    .field{
        background-color: white;
    }
    .errmessage{
          color: purple:
    }
    .button {
      margin-top: 10px;
	  background-color: #004A7F;
	  -webkit-border-radius: 10px;
	  border-radius: 10px;
	  border: none;
	  color: #FFFFFF;
	  cursor: pointer;
	  font-family: Arial;
	  font-size: 15px;
	  padding: 5px 5px;
	  text-align: center;
	  text-decoration: none;
	}
		@keyframes glowing {
	  0% { background-color: #B20000; box-shadow: 0 0 3px #B20000; }
	  50% { background-color: #FF0000; box-shadow: 0 0 40px #FF0000; }
	  100% { background-color: #B20000; box-shadow: 0 0 3px #B20000; }
	}
	.button {
	  -webkit-animation: glowing 1500ms infinite;
	  -moz-animation: glowing 1500ms infinite;
	  -o-animation: glowing 1500ms infinite;
	  animation: glowing 1500ms infinite;
	}

    </style>
</head>
<body>
    <div class="wrapper">
        <h4 class ="error"><c:out  value="${error}"/></h4>
        <h4 class="title">What is the code?</h4>
        <form class="input" action="/congrats" name="code">Enter Code
            <input class="field" name="code"><br>
            <button class="button" type="submit">Try code!!</button>
        </form>
    </div>
</body>
</html>