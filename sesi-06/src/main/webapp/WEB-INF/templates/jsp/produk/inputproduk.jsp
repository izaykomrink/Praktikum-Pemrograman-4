<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
<title>Input Barang</title>
</head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<body>
<h1>INPUT BARANG</h1><hr>
<spring:form modelAttribute="produk">
<table border="1">
	<tr>
		<td>Kode Barang</td>
		<td><spring:input path="kode" /></td>
		<td><spring:errors path="kode" /></td>
	</tr>
	<tr>
		<td>Nama Barang</td>
		<td><spring:input path="nama" /></td>
		<td><spring:errors path="nama" /></td>
	</tr>
	<tr>
		<td>Harga Barang</td>
		<td><spring:input path="harga" /></td>
		<td><spring:errors path="harga" /></td>
	</tr>
	<tr>
		<td>&nbsp;</td>
		<td><input type="submit" value="Simpan"> </td>
	</tr>
</table>
</spring:form>     
</body>
</html>
