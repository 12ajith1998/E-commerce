<%@include file="AdminHome.jsp"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>
<body>

<form action="<c:url value="/addSupplier"/>" method="post">
<table align="center">

<tr>
		<td colspan="2"><b>Supplier</b></td>
</tr>

<tr>
		<td> SupplierName</td>
		<td> <input type="text" name="supplierName" class="form-control" required/></td>
</tr>

<tr>
		<td> SupplierDesc</td>
		<td> <textarea cols="20" rows="7" class="form-control" name="supplierDesc" required></textarea></td>
</tr>



<tr>

	<td colspan="2">
			<center>
						<input type="submit" value="addSupplier" class=" btn btn-block mybtn btn-primary tx-tfm">
			</center>
	</td>
</tr>
</table>
</form>


<br></br>

<table align="center" border="1" width="400">
	
	<tr>
		<td>SL</td>
		<td>SupplierName</td>
		<td>SupplierDesc</td>
		<td colspan="2">
			<center>
			 	Options
			</center>
		</td>
	</tr>
	<c:forEach items="${supplierList}" var="supplier">
	<tr>
		<td>${supplier.supplierId} </td>
		
	
	
	<td>${supplier.supplierName}</td>
	
	<td>${supplier.supplierDesc}</td>
	
	
	
	<td>
		<a href="<c:url value="/editSupplier/${supplier.supplierId}"/>">Edit</a>
	</td>
	
	<td>
		<a href="<c:url value="/deleteSupplier/${supplier.supplierId}"/>">Delete</a>  
	</td>
	 
	</tr>
	
	
	</c:forEach>
	
</table>
</body>
<%@include file="Footer.jsp"%>
</html>
	