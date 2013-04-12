<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

<html>
<head>
<title>PRODUK DATA</title>
</head>
<body>
 
<sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
     url="jdbc:mysql://localhost/toko" user="root"  password=""/>
 
<sql:query dataSource="${snapshot}" var="result">
SELECT * from produk;
</sql:query>
 
<table border="1">
<tr>
   <th>Kode</th>
   <th>Nama</th>
   <th>Harga</th>
   <th>Update Terakhir</th>
</tr>
<c:forEach var="row" items="${result.rows}">
<tr>
   <td><c:out value="${row.kode}"/></td>
   <td><c:out value="${row.nama}"/></td>
   <td><c:out value="${row.harga}"/></td>
   <td><c:out value="${row.terakhir_update}"/></td>
</tr>
</c:forEach>
</table>
</body>
</html>