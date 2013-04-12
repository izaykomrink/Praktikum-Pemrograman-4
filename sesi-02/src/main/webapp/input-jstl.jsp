<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" 
           uri="http://java.sun.com/jsp/jstl/core" %>
		   
<html lang='id'>
	<head>
	</head>
	<body>
		<time>				
			<c:set var="now" value="<%=new java.util.Date()%>"/>
			<div><i>
				<fmt:formatDate pattern="EEEE,dd-MM-yyyy - H:m:s" value="${now}"/>
			</i></div>
		</time>
	<hr />
	<h2>Hasil Verifikasi</h2>
	<form type="text" method="POST" action="input.jsp">
		Nama	: <%= request.getParameter("nama") %><br />
		Email 	: <%= request.getParameter("email") %><br />
		Tanggal Lahir 	: <%= request.getParameter("lahir") %><br />
		Alamat 	: <%= request.getParameter("alamat") %><br />
		<input type="submit" value="Simpan" />
	</form>
	</body>
</html>