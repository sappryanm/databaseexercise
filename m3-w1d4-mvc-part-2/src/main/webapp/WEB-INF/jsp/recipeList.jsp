<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="recipeHeader.jsp" %>

<div class="section">
	<h1>Recipes</h1>
	<div class=container>		
	<c:forEach var="recipe" items="${recipes}">
		
			<div class=column>
			<img src="<c:url value="img/recipe${recipe.recipeId}.jpg"/> " />
			<h3><a href="recipeDetails?recipeId=${recipe.recipeId}" />${recipe.name}</a></h3>
			<c:choose>
				<c:when test="${recipe.averageRating < 2}">
					<img class="stars" src="img/1-star.png" />
				</c:when>
				<c:when test="${recipe.averageRating < 3}">
					<img class="stars" src="img/2-star.png" />
				</c:when>
				<c:when test="${recipe.averageRating < 4}">
					<img class="stars" src="img/3-star.png" />
				</c:when>
				<c:when test="${recipe.averageRating < 5}">
					<img class="stars" src="img/4-star.png" />
				</c:when>
				<c:otherwise>
					<img class="stars" src="img/5-star.png" />
				</c:otherwise>
			</c:choose>	

			<img src ="<c:url value="${starCount}"/> "/>

			<p>${recipe.ingredients.size()} ingredients</p>
			</div>
		
		
	</c:forEach>
	
	
    </div>
</div>
<%@include file="recipeFooter.jsp"%>