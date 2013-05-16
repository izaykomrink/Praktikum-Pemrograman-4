<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt" %>

<html>
<head>
<title>Daftar Produk</title>
</head>
<body>
<h1>DAFTAR PRODUK</h1><hr>
<a href="inputproduk">Tambah Produk</a><p>
<c:choose>
	<c:when test="${empty daftarProduk}">
	<h3>Data Kosong</h3>
	</c:when>
	<c:otherwise>
	<table border="1">
	<tr>
		<th>No</th>
		<th>Kode</th>
		<th>Nama</th>
		<th>Harga</th>
		<th>Terakhir Update</th>
		<th>Aksi</th>
	</tr>
	<c:forEach items="${daftarProduk}" var="p" varStatus="i">
	<tr>
		<td align="center">${i.count}</td>
		<td>${p.kode}</td>
		<td>${p.nama}</td>
		<td><fmt:formatNumber value="${p.harga}" type="number"></fmt:formatNumber></td>
		<td align="center"><fmt:formatDate value="${p.terakhirUpdate}" pattern="EEEE, dd MMM yyyy"></fmt:formatDate></td>
		<td>
			<a href="inputproduk?id=${p.id}">edit</a>
            <a href="delete?id=${p.id}">hapus</a>
		</td>
	</tr>
	</c:forEach>
	</table>
	</c:otherwise>
</c:choose>
</body>
</html>
