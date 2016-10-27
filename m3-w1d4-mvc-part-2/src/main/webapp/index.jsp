<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
	<head>
		<title>Recipe Views</title>
		
		<style>
			* {
				font-size: 14pt;
			}
		
			td {
				border: 1px solid black;
				padding: .5em;
			}
			
			code {
				color: red;
			}
		</style>
	</head>
	<body>
		<h1>MVC Views Part 2</h1>
		<table>
			<tr>
				<td><a href="nameList">Name List</a></td>
				<td>
					Check out <code>Recipe.java</code> and <code>recipeList.jsp</code> 
					for a simple example of using "request attributes" to pass data between 
					a controller (i.e. Servlet) and a view (i.e. JSP).
				</td>
			</tr>
			<tr>
				<td><a href="personList">Recipe Tables</a></td>
				<td>
					Check out <code>Recipe.java</code> and <code>recipeTable.jsp</code> 
					for an example of how the EL dot operator can be used to access JavaBeans
					properties.
				</td>
			</tr>
		
				
		</table>
	</body>
</html>