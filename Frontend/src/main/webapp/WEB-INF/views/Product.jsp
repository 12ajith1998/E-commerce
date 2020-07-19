<%@include file="AdminHome.jsp"%>

<html>
   

<body>
      
      <form:form action = "addProduct" modelAttribute="product" method="post" enctype="multipart/form-data">
      <table align="center">
      
      <tr>
      
		<td colspan="2"><b>Product</b></td>
		
	  </tr>
      
      <tr>
         <td>ProductName</td>
         <td><form:input path ="productName" class="form-control" required="true"/></td>
      </tr>
            
            <tr>
               <td>Stock</td>
               <td><form:input path ="stock" class="form-control" required="true"/></td>
            </tr>
            <tr>
               <td>Price</td>
               <td><form:input path ="price" class="form-control" required="true"/></td>
            </tr>
            <tr>
               <td>Category</td>
               <td><form:select path ="categoryId" class="form-control">
               	   <form:option value="0" label="Select List"/>	
               	   <form:options items="${categoryList}"/>
               	   </form:select>
               </td>
               
            </tr>
            <tr>
               <td>Supplier</td>
               <td><form:select path ="supplierId" class="form-control">
               	   <form:option value="0" label="Select List"/>	
               	   <form:options items="${supplierList}"/>
               	   </form:select>
               </td>

            </tr>
            <tr>
               <td>ProductDesc</td>
               <td><form:textarea cols="20" rows="7" class="form-control" path="productDesc" required="true"/></td>
            </tr>
            
            <tr>
               <td>ProductImage</td>
               <td><form:input type="file" path ="productimage" required="true"/></td>
            </tr>
            
            <tr>
               <td colspan = "2">
                  <input type = "submit" value = "addProduct" class=" btn btn-block mybtn btn-primary tx-tfm"/>
               </td>
            </tr>
         </table>  
      </form:form>
   </body>


<br></br>

<table align="center" border="1" width="400">
	
	<tr>
		<td>SL</td>
		<td>ProductName</td>
		<td>Stock</td>
		<td>Price</td>
		<td>Category</td>
		<td>Supplier</td>
		<td>ProductDesc</td>
		<td colspan="2">
			<center>
			 	Options
			</center>
		</td>
	</tr>
	<c:forEach items="${productList}" var="product">
	<tr>
		<td>${product.productId} </td>

	<td>${product.productName}</td>
	<td>${product.stock}</td>
	<td>${product.price}</td>
	<td>${product.categoryId}</td>
	<td>${product.supplierId}</td>
	<td>${product.productDesc}</td>
	
		
	
	<td>
		<a href="<c:url value="/editProduct/${product.productId}"/>">Edit</a>
	</td>
	
	<td>
		<a href="<c:url value="/deleteProduct/${product.productId}"/>">Delete</a>  
	</td>
	 
	</tr>
	
	
	</c:forEach>
	
</table>
</body>
<%@include file="Footer.jsp"%>
</html>
	

