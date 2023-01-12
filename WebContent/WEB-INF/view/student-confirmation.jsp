<html>
	<body>
		<h2>We welcome the below student on board to AMAZON. We hope you would have best time here developing and enjoying. </h2>
		
		<h2>${students.firstName} ${students.lastName} from ${students.country}</h2>
	</body>
</html>

<!-- here we are accessing the data using the model name
and fields name is matching with the one added in the form
which matches with the private fields of the Student model or bean....

Internally for student.lastName, spring calls student.getLastName
 -->

