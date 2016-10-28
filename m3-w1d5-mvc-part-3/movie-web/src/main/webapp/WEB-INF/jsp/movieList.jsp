<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="movieHeader.jsp" %>

        <h2>Local Movie Listing</h2>
        <table>
        	<tr>
        		<th></th>
        		<th>Movie</th>
        		<th>Genre</th>
        		<th>Runtime (min)</th>
        	</tr>
        	<c:forEach var="movies" items="${movies}">
	        	<tr>
	        		<td><a href="movieDetail?movieId=${movies.id}"/>View Times</td>
	        		<td>${movies.name}</td>
	        		<td>${movies.genre}</td>
	        		<td>${movies.runningTime}</td>
	        	</tr>
	        </c:forEach>
        
        </table>
    </section>
</body>
</html>
