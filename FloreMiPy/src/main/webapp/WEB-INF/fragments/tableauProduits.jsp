	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	<form>
	<input type="text" style="width: 100%; ">
	<table style="width:100%;">
	<thead>
		<tr>
			<td>Image</td>
			<td width="50%">Produit</td>
			<td width="5%">Quantité en Stock</td>
			<td>Delai approvisionnement</td>
			<td style="width: 138px; ">Quantité Voulue</td>
			<td width="20%" style="width: 104px; ">Ajouter au panier</td>
		</tr>
	</thead>
	<tbody>
	<c:forEach items="aa, aaa, aaaa" var="item">
		<tr>
			<%-- <td>${item.image}</td>
			<td>${item.name}</td>
			<td>${item.quantity}</td>
			<td>${item.delay}</td>
			<td><input type="number" value="1"></td>
			<td><input type="checkbox" id="${item.id}"></td> --%>
			<td>Joly</td>
			<td>fleur de prungom</td>
			<td>12</td>
			<td>la vie</td>
			<td><input type="number" value="1"></td>
			<td><input type="checkbox" id="${item.id}"></td>
		</tr>
	</c:forEach>
	</tbody>
	</table>
	
	</form>