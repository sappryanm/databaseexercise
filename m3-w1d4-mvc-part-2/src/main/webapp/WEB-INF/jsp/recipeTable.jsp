<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>

<html>
<head>
    <meta name="viewport" content="width=device-width" />
    <title>Recipe Table View</title>
    <link rel="stylesheet" href="css/site.css" />
</head>
<body>
    <header>
        <h1>MVC Exercises - Views Part 2: Models</h1>        
    </header>
    <nav>
        <ul>
            <li><a href="#">Link 1</a></li>
            <li><a href="#">Link 2</a></li>
        </ul>
        
    </nav>
<div class="section">
	<h1>Recipes</h1>
		<table>
			<tr>
			</tr>
			<tr>
				<td></td>
				<c:forEach var="recipe" items="${recipes}">
					<td><img src="<c:url value="img/recipe${recipe.recipeId}.jpg"/> " /></td>
				</c:forEach>
			</tr>
			
			<tr>
				<td class="headers"> Name</td>
				<c:forEach var="recipe" items="${recipes}">
					<td>${recipe.name}</td>
				</c:forEach>
			</tr>
			<tr>
				<td class="headers"> Type</td>
				<c:forEach var="recipe" items="${recipes}">
					<td>${recipe.recipeType} </td>
				</c:forEach>
			</tr>
			<tr>
				<td class="headers">Cook Time</td>
				<c:forEach var="recipe" items="${recipes}">
					<td>${recipe.cookTimeInMinutes}</td>
				</c:forEach>
			</tr>
			<tr>
				<td class="headers">Ingredients</td>
				<c:forEach var="recipe" items="${recipes}">
					<td>${recipe.ingredients.size()} ingredients</td>
				</c:forEach>
			</tr>
			<tr>
			<td class="headers">Rating</td>
				<c:forEach var="recipe" items="${recipes}">
			<c:choose>
				<c:when test="${recipe.averageRating < 2}">
					<td><img class="stars t" src="img/1-star.png" /></td>
				</c:when>
				<c:when test="${recipe.averageRating < 3}">
					<td><img class="stars t" src="img/2-star.png" /></td>
				</c:when>
				<c:when test="${recipe.averageRating < 4}">
					<td><img class="stars t" src="img/3-star.png" /></td>
				</c:when>
				<c:when test="${recipe.averageRating < 5}">
					<td><img class="stars t" src="img/4-star.png" /></td>
				</c:when>
				<c:otherwise>
					<td><img class="stars t" src="img/5-star.png" /></td>
				</c:otherwise>
			</c:choose>	

				</c:forEach>
			</tr>
			
			


		
			
	
	</table>
	
    
</div>
</body>
</html>