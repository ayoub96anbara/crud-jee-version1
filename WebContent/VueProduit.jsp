<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/style.css" type="text/css">
</head>
<body>

	<div>
		<form action="controleur.php" method="post">
			Mot Cle:<input type="text" name="keyword" value="${model.getKeyword() }"><input
				type="submit" value="search" name="action">
		</form>
	</div>
	<div>
	<form action="controleur.php" method="post">
	<input type="hidden" name="mode" value="${model.getMode()}">
	<table>
	
	<c:if test="${model.getMode()=='add'}">
	<tr><th>Ref:</th><td><input type="text"  name="ref" value="${model.getProduit().getReference()}"></td></tr>
	</c:if>
	<c:if test="${model.getMode()=='edit'}">
	<tr><th>Ref:</th><td>${model.getProduit().getReference()}<input type="hidden"  name="ref" value="${model.getProduit().getReference()}"></td></tr>
	</c:if>
	
	
	<tr><th>Designation:</th><td><input type="text" name="des" value="${model.getProduit().getDesignation()}"></td></tr>
	<tr><th>Prix:</th><td><input type="number" name="prix" value="${model.getProduit().getPrix()}" ></td></tr>
	<tr><th>Quantite:</th><td><input type="number" name="quantite" value="${model.getProduit().getQuantite()}"></td></tr>

	</table>
	<input type="submit" value="save" name="action" >
	</form>
	</div>
	<div>
	<p>${model.getErrors()}</p>
	</div>
	<div>
		<table class="table1">
			<tr>
				<th>REF</th>
				<th>DES</th>
				<th>PRIX</th>
				<th>QUANTITE</th>
			</tr>
			<c:forEach items="${model.listProduit }" var="p">
			<tr>
			<td>${p.getReference()}</td>
			<td>${p.getDesignation()}</td>
			<td>${p.getPrix()}</td>
			<td>${p.getQuantite()}</td>
			<td>
			<a href="javascript:confirmer('controleur.php?action=delete&ref=${p.getReference()}')">delete</a>
			</td>
			<td>
			<a href="controleur.php?action=edit&ref=${p.getReference()}">edit</a>
			</td>
			</tr>

			</c:forEach>
		</table>
	</div>
<script type="text/javascript">
   function confirmer(url){
	   var isConfirm=confirm("vous etes sur de supprimer cet element?");
	   if(isConfirm){
		   document.location=url;
	   }
	
}
</script>
</body>
</html>