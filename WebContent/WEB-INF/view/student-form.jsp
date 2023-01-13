<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html>
	<body>
		<form:form action="processForm" modelAttribute="students">
			
			First name: <form:input path="firstName" />
			<!-- path attribute actually binds form field to the bean(model) 
			property for which we define getters and setters -->
			<br><br>
			
			Last name: <form:input path="lastName" />
			<br><br>
			
			Country:
			<form:select path="country">
				<form:options items="${students.countryOptions}" />					
			</form:select>
			<br><br>
			
			Language:
			Java: <form:radiobutton path="selectLanguage" value="Java"/>
			C#: <form:radiobutton path="selectLanguage" value="C#"/>
			RUBY: <form:radiobutton path="selectLanguage" value="RUBY"/>
			Nodejs: <form:radiobutton path="selectLanguage" value="Nodejs"/>
			<br><br>
			
			Sex:
			Male: <form:checkbox path="selectSex" value="Male"/>
			Female: <form:checkbox path="selectSex" value="Female"/>
			Binary: <form:checkbox path="selectSex" value="Binary"/>
			Other: <form:checkbox path="selectSex" value="Other"/>
			<br><br>
			
			<input type="submit" value="Submit" />
		</form:form>
	</body>
</html>
<!-- 
when mvc form is loaded, spring mvc will call
student.getFirstName() and student.getLastName()
 
when mvc form is submitted, spring mvc calls
student.setFirstName and student.setLastName

All this happens internally.

student.countryOptions will turn to student.getCountryOptions as getter method is already defined.
-->

