<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
	import="java.util.List"
	import="model.*"
	import="ejb.*"
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<title>FreeArt</title>
</head>
<body>
	<h3>Panier</h3>
	<%
		List<Image> imgList = (List<Image>)request.getAttribute("listeImages");

		if (!imgList.isEmpty())
		{
			out.print("<ul>");
			for(Image img : imgList)
			{
				out.print("<li><img src=\"" + img.getSource() + "\" alt=\"" + img.getNom() + "\"></li>");
			}
			out.print("</ul>");
			%>
				<form method="GET" action="Download">
					<!-- <input type="hidden" name="action" value="download"/> -->
					<input type="submit" name="boutonDownload" value="TÚlÚcharger les images du panier"/>
				</form>
			<%
		}
		else 
		{
			out.print("<p>Panier vide .</p>");
		}
	%>
</body>
</html>