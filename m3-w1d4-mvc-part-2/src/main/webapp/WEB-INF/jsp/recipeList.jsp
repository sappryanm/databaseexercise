<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>

<html>
<head>
    <meta name="viewport" content="width=device-width" />
    <title>Recipe List View</title>
    <link rel="stylesheet" href="css/site.css" />
</head>
<body>
    <header>
        <h1>MVC Exercises - Views Part 2: Models</h1>        
    </header>
    <nav>
        <ul>
            <li><a href="#">Board Layout</a></li>
            <li><a href="#">Tile Layout</a></li>
            <li><a href="#">Tile Layout</a></li>
        </ul>
        
    </nav>
    <section id="main-content">
	<h1>Recipes</h1>
	<ul>
	<c:set var='imageID' value="0"/>
	<c:set var='intID' value="1"/>
	<c:set var="nexImageID" value="${imageID + int1}" />		
	<c:forEach var="recipe" items="${recipes}">
	<c:choose>
		<c:when test="${recipe.averageRating < 2}">
			<img src="img/1-star.png" />
		</c:when>
		<c:when test="${recipe.averageRating < 3}">
			<img src="img/2-star.png" />
		</c:when>
		<c:when test="${recipe.averageRating < 4}">
			<img src="img/3-star.png" />
		</c:when>
		<c:when test="${recipe.averageRating < 5}">
			<img src="img/4-star.png" />
		</c:when>
		<c:otherwise>
			<img src="img/5-star.png" />
		</c:otherwise>
	</c:choose>	
		
		<img src="<c:url value="img/recipe${recipe.recipeId}.jpg"/> " />
		<li>${recipe.name}</li>
		<div>
		<img src ="<c:url value="${starCount}"/> "/>

		</div>		
	</c:forEach>
    </ul>


    </section>
</body>
</html>