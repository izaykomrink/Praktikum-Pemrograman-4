<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %><%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %><html lang="id"><head><title>Entry Data</title></head><body><h1>Entry Data</h1>	<time>					<c:set var="now" value="<%=new java.util.Date()%>"/>	<div><i>		<fmt:formatDate pattern="EEEE,dd-MM-yyyy - H:m:s" value="${now}"/>	</i></div>	</time>		<form type="text" method="POST" action="input-entry-data.jsp">        <fieldset>			<table>				<tr>					<td>Kode Barang</td>					<td><input type="text" name="kode" plaseholder="Kode Barang"></td>					<td>Nama Barang</td>					<td><input type="text" name="nama" plaseholder="Nama Barang"></td>					<td>Harga Barang</td>					<td><input type="text" name="harga" plaseholder="Harga Barang"></td>					<td><input type="submit" value="Input"></td>				</tr>			</table>		</fieldset>		</form></body></html>