<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<html>
<head>
<title>INPUT DATA</title>
</head>
<body>			
	<h1>Input Data</h1>
			<time>				
				<c:set var="now" value="<%=new java.util.Date()%>"/>
				<div><i>
					<fmt:formatDate pattern="EEEE,dd-MM-yyyy - H:m:s" value="${now}"/>
				</i></div>
			</time>
        <form type="text" method="POST" action="input-jstl.jsp">
            <fieldset>
		<table>
			<tr>
                <td>Nama</td>	<td>:</td>
                <td><input type="text" name="nama" placeholder='Nama' />
                </td>
			</tr>
			<tr>
                <td>Email</td> 	<td>:</td>
                <td><input type="text" name="email" placeholder='Email'/>
                </td>
            </tr>
			<tr>
				<td>Tanggal Lahir</td> 	<td>:</td>
                <td><input type="text" name="lahir" placeholder='Tanggal Lahir'/>
                </td>
            </tr>
			<tr>
				<td>Alamat</td> 	<td>:</td>
                <td><input type="text" name="alamat" placeholder='Alamat'/>
                </td>
            </tr>
			<tr>
				<td><input type="submit" value="Simpan" /></td>
			</tr>
            </fieldset>
        </form>
</body>
</html>