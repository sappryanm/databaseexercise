<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="bankHeader.jsp" %>

	<section id="main-content">
		
		<h2>Internet Free Checking</h2>
        <table>
        	<tr>
        		<th></th>
        		<th>Nickname</th>
        		<th>Acct Number</th>
        		<th>Balance</th>
        	</tr>
        	<c:forEach var="banks" items="${accounts}">
	        	<tr>
	        		<td><a href="accountDetail?accountId=${banks.id}"/>View</td>
	        		<td>${banks.name}</td>
	        		<td>${banks.accountNumber}</td>
	        		<td>${banks.balance}</td>
	        	</tr>
	        </c:forEach>
        
        </table>
	</section>
	
<%@include file="bankFooter.jsp"%>
