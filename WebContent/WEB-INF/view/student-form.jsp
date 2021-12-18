<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>


	<title>Student registration form</title>

</head>
<body>
	<form:form action="processForm" modelAttribute="student">

	First name:<form:input path="firstName" />
	
	<br><br>
	
	Last name:<form:input path="lastName" />
	
	<br><br>
	
	Country:
	
	<form:select path="country">
	
		<form:option value= "India" label = "India" />
		<form:option value= "USA" label = "USA" />
		<form:option value= "China" label = "China" />
		<form:option value= "France" label = "France" />
		
	</form:select>
	
	<br><br>
	
	Favorite language:
	
	
	
		Java <form:radiobutton path="favoriteLanguage"  value="Java"/>
		c++ <form:radiobutton path="favoriteLanguage"  value="c++"/>
		python <form:radiobutton path="favoriteLanguage"  value="python"/>
		php <form:radiobutton path="favoriteLanguage"  value="php"/>
	
	<br><br>
	
	Operating Systems
	
		Linux <form:checkbox path="operatingSystems" value="Linux"/>
		ubuntu <form:checkbox path="operatingSystems" value="Ubuntu"/>
		android <form:checkbox path="operatingSystems" value="android"/>
		
	
	<input type = "submit" value="Submit" />

	</form:form>

</body>







</html>