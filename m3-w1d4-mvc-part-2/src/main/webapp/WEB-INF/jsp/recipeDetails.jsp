<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="recipeHeader.jsp"%>

<c:set var="ID" value="${param.recipeId}" />
	<img src="img/recipe${ID}.jpg" class ="detailImage"/>
	<h2 class="alignLeft">${recipe.name}</h2>
	<p class="alignLeftType">${recipe.recipeType}</p>
	<h4 class="alignLeft"><b>Cook Time</b> ${recipe.cookTimeInMinutes} minutes</h4>
	<p class="alignLeft">${recipe.description}</p>
	<div class="space"></div>
	<h4><b>Ingredients</b></h4>
	<ul>
		<c:forEach var="ingredient" items="${recipe.ingredients}">
		<li class="ordered">${ingredient.quantity} ${ingredient.name}</li>
		</c:forEach>
	</ul>
	<div class="line"></div>
	<h4><b>Preparation</b></h4>
	<ol>
		<c:forEach var="prep" items="${recipe.preparationSteps}">
			<li class="numbered">${prep}</li>
		</c:forEach>
	</ol>



<%@include file="recipeFooter.jsp"%>