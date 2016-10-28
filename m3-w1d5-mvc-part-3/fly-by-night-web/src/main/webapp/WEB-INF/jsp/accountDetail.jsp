<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="bankHeader.jsp" %>

	<section id="main-content">
		
		<c:set var="ID" value="${param.accountId}" />
        <h2>Interest Free Checking</h2>
        <p><b>Balance: </b>${account.balance}</p>
        <p><b>Account : </b>${account.accountNumber}</p>
        <p><b>Account Type: </b>${account.accountType}</p>
        <p><b>Transaction History:</b></p>
        <table>
        	<tr>
        		<th>Date</th>
        		<th>Amount</th>
        		<th>Description</th>
        	</tr>
        	<c:forEach var="accounts" items="${account.transactionHistory}">
        		<tr>
        			<td>${accounts.transactionDate}</td>
        			<td>${accounts.amount}</td>
        			<td>${accounts.description}</td>
     			</tr>
        	</c:forEach>
        </table>
        <a href="accountList">Back to List</a>

	</section>
<%@include file="bankFooter.jsp" %>
