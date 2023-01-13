<html>
	<body>
		<h2>We welcome the below student on board. </h2>
		
		<h2>${students.firstName}(${students.selectSex}) ${students.lastName} from ${students.country}. Your expertise is in ${students.selectLanguage}</h2>
	</body>
</html>

<!-- here we are accessing the data using the model name
and fields name is matching with the one added in the form
which matches with the private fields of the Student model or bean....

Internally for student.lastName, spring calls student.getLastName
 -->

