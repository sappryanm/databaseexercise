<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="movieHeader.jsp" %>
	<c:set var="ID" value="${param.movieId}" />
        <h1>${movie.name} (${movie.yearReleased})</h1>
        <p><b>Runtime: </b>${movie.runningTime} minutes</p>
        <p>${movie.description}</p>
        	<h2>Cast</h2>
        	<ul>
        	<c:forEach var="movies" items="${movie.cast}">
        	<li>${movies}
        	</li>
        	</c:forEach>
        </ul>
        <h2>Show Times</h2>
        <table>
        	<tr>
        		<th>Start Time</th>
        		<th>Theatre</th>
        	</tr>
        	<c:forEach var="showtimes" items="${movie.showTimes}">
        		<tr>
        			<td>${showtimes.startTime}</td>
        			<td>@${showtimes.theatre}</td>
     			</tr>
        	</c:forEach>
        </table>
        <a href="movieList">Back to List</a>
    </section>
</body>
</html>
