<%-- 
    Document   : listarItensVenda
    Created on : 21/05/2020, 16:46:37
    Author     : rapha
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista de itens para a venda</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    </head>
    <body>
        <div align="center">
            <table border="3" cellpadding="5">

                <th>ProdutoID</th>
                <th>Filial</th>
                <th>Descricao</th>
                <th>QuantidadeEstoque</th>
                <th>valorUnitario</th>
                <th>categoria</th>


                <c:forEach var="c" items="${Produto}">
                    <tr>

                        <td>${c.id}</td>
                        <td>${c.filial}</td>
                        <td>${c.descricao}</td>
                        <td>${c.quantidade}</td>
                        <td>${c.valor}</td>
                        <td>${c.categoria}</td>
                        <td> 
                            <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
                            <form action="ListarItensVenda" method="POST">
                                <input name="ItensVendaID"  size=1 value="${c.id}">                              
                                &nbsp;&nbsp;&nbsp;&nbsp;
                                <button class="btn btn-outline-danger" type="submit">Selecionar</button>  
                            </form> 
                    </tr>
                </c:forEach>

                <tr></tr>
            </table>

            <param name="ItensVendaID" value="${c.id}">
            <a href="index.html">Início</a>

    </body>
</html>