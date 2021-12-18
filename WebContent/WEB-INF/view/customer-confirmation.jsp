<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE  html>

<html>

<head>

	<title>Customer Confirmation</title>
	
</head>

<body>
THE  customer is confirmed: ${customer.firstName} ${customer.lastName}

<br><br>

Free passes: ${customer.freePasses}

<br><br>

postal Code: ${customer.postalCode}

</body>


</html>
