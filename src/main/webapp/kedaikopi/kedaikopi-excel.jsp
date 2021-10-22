<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
	String id = request.getParameter("userid");
	String driver = "com.mysql.cj.jdbc.Driver";
	String connectionUrl = "jdbc:mysql://localhost:3306/";
	String database = "tts";
	String userid = "root";
	String password = "admin";
	try {
	Class.forName(driver);
	} catch (ClassNotFoundException e) {
	e.printStackTrace();
	}
	Connection connection = null;
	Statement statement = null;
	ResultSet resultSet = null;
%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <title>Excel Page</title>
    </head>
    <body>
      		<h3>Daftar Transaksi</h3>
              <table>
			<tr>
				<th>No Transaksi</th>
				<th>Makanan</th>
				<th>Jumlah Mkn</th>
				<th>Minuman</th>
				<th>Jumlah Mnm</th>
				<th>Harga Total</th>
				<th>Verifikasi</th>
			</tr>
			<%
				try{
				connection = DriverManager.getConnection(connectionUrl+database, userid, password);
				statement=connection.createStatement();
				String sql ="select * from tts.keranjang";
				resultSet = statement.executeQuery(sql);
				response.setContentType("application/vnd.ms-excel");
				response.setHeader("Content-Disposition", "inline; filename=transaksi.xls");
				while(resultSet.next()){
			%>
	            <tr>
					<td><%=resultSet.getString("id") %></td>
					<td><%=resultSet.getString("makanan") %></td>
					<td><%=resultSet.getString("jumlahMkn") %></td>
					<td><%=resultSet.getString("minuman") %></td>
					<td><%=resultSet.getString("jumlahMnm") %></td>
					<td><%=resultSet.getString("hargatotal") %></td>
					<td><%=resultSet.getString("verifikasi") %></td>
				</tr>
			<%
				}
				connection.close();
				} catch (Exception e) {
				e.printStackTrace();
				}
			%>
		</table>
    </body>
</html>