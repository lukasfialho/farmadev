<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="d" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="e" uri="http://java.sun.com/jsp/jstl/core" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>

        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">

        <title>'FarmaSis</title>
        <style>
            a{
                font-family: verdana;
                font-size:18px;
                color:#5298C7;
                text-decoration: none;	
            }
        </style> 

        <script type="text/javascript"></script>
    </head>
    <img src="logo_farmasis.jpg" height="80" width="180">
    <img src="logo_drogaria.jpg" height="80" width="180" align="right">
    <body>
        <h4 style="text-align: center;"> </h4>
        <div id="retangulo" style="text-align:center; width:100%; height:30px; background-color:#23EBA7">
            <a href="cadastroCliente.jsp">Cadastro de Cliente</a>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <a href="ListarClientes">Listar Clientes</a>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <a href="relatorioFiliais.jsp">Relatorio por filial</a>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <a href="relatorioProduto.jsp">Relatorio por produto</a>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <a href="relatorioClientes.jsp">Relatorio por Cliente</a>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <a href="cadastroProduto.jsp">Cadastro de produto</a>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <a href="listarProdutos.jsp">Listar Produtos</a>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <a href="ListarClienteVenda">venda</a>
        </div>
        <div class="jumbotron jumbotron-fluid p-1">
            <div class="container-fluid mr-5"> 
                <h1 class="display-5">Pré-venda</h1>

                <body>   
                    <label> Filial: </label>
                    <input name="filial"  size=1 id="FIL" value="${fil}"> 
                    <c:forEach var="c" items="${cli}">

                        <div class="form-group">
                            <div class="form-row border ">
                                <div class="form-group col-md-5px">
                                    <label> ID: </label>
                                    <input name="ID" class="form-control" size=1 value="${c.id}">
                                </div>
                                <div class="form-group col-md-5px">
                                    <label> nome: </label>
                                    <input name="nome" class="form-control" value="${c.nome}">
                                </div>
                                <div class="form-group col-md-5px">
                                    <label> CPF: </label>
                                    <input name="CPF" class="form-control" value="${c.cpf}">
                                </div>
                            </div>
                        </div>

                    </c:forEach>  



                    <form action="ListarClienteVenda">

                        <button class="btn btn-primary" type="submit">Buscar</button>  <br><br>
                    </form>  



                    <form action="ItensVendaServlet">   



                        <d:forEach var="d" items="${itens}"> 
                            <div class="form-group">
                                <div class="form-row ">
                                    <div class="form-group col-md-5px">

                                        ID:  <input name="Produto" class="form-control" size=1 value="${d.id}">
                                    </div>
                                    <div class="form-group col-md-5px">

                                        descricao:   <input name="Descricao" class="form-control" value="${d.descricao}">
                                    </div>
                                    <div class="form-group col-md-5px">

                                        Quantidade:   <input name="Quantidade" class="form-control" id="qtd" oninput="Calc()" value="">
                                    </div>
                                    <div class="form-group col-md-5px">

                                        Valor unitário:   <input name="ValorUnitario" class="form-control" id="Vu" value="${d.valor}">
                                    </div>
                                    <div class="form-group col-md-5px">

                                        Total: <input name="Total" class="form-control" id="Total" >
                                    </div> 
                                    <div class="form-group col-md-5px">

                                        quantidade <input name="quantidade" class="form-control" id="quantidade" value="${d.quantidade}">
                                    </div> 
                                    <div class="form-group col-md-5px" >
                                        <br>
                                        <button class="btn btn-outline-success"  type="submit">Adicionar a lista</button><br>
                                    </div> 
                                </div>      
                            </div>

                            <script>
                                function Calc() {
                                    var N1 = eval(document.getElementById("qtd").value);
                                    var N2 = eval(document.getElementById("Vu").value);
                                    var N3 = eval(document.getElementById("quantidade").value);
                                    var total = (N1 * N2);
                                    if (N3<N1) alert("Quantidade superior ao estoque!");
                                    else Total.value = total;

                                }
                            </script>

                        </d:forEach>  


                    </form> 

                    <div align="center">
                        <table class="table-responsive-xl" width="10%" >
                            <thead class="table-dark" >


                            <th scope="col">Produto </th>
                            <th scope="col">Descrição</th>
                            <th scope="col">Quantidade</th>
                            <th scope="col">ValorUnitario</th>
                            <th scope="col">Total</th>
                            </thead>

                            <e:forEach var="e" items="${item}">
                                <tr> 
                                    <td>${e.produtoID}</td>
                                    <td>${e.descricao}</td>
                                    <td>${e.quantidade}</td>
                                    <td>${e.valorUnitario}</td>
                                    <td>${e.total}</td>
                                </tr>
                            </e:forEach>

                            <tr></tr>
                        </table>


                        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
                        <br>
                        <form action="ListarItensVenda">



                            <button class="btn btn-outline-info" type="submit">Adicionar</button>  <br>
                            &nbsp;&nbsp;&nbsp;&nbsp;
                        </form> <br><br>

                        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
                        <br>
                        <form action="ItensVendaServlet" method="POST">
                            <button class="btn btn-outline-info" type="submit">Limpar lista</button>  <br>
                            &nbsp;&nbsp;&nbsp;&nbsp;
                        </form> <br><br>
                        <form action="ConcluirVenda">
                            <div class="form-inline" style="float:right;">

                            </div>
                            <label> Desconto  </label>
                            <input name="Desconto" class="form-control" id="De" value="0" onmouseout="descCalc()" >
                            <label> Total da Venda: </label>
                            <input name="TotalV" id="TV"  class="form-control" value="${tvenda}" >
                            <label> Total Venda com desconto: </label>
                            <input name="TotalVenda" id="TotalVenda"class="form-control" >

                            <script>
                                function descCalc() {
                                    var N4 = eval(document.getElementById("De").value);
                                    var N5 = eval(document.getElementById("TV").value);
                                    var total1 = (N5 - N4);
                                    if (total1 > 0) {
                                        TotalVenda.value = total1;
                                    } else {
                                        alert("Desconto maior que o total!!");
                                    }
                                }
                            </script>


                            <form action="ConcluirVenda">

                                <button class="btn btn-outline-success" type="submit">Concluir</button>  <br>

                                &nbsp;&nbsp;&nbsp;&nbsp;
                            </form> 
                            <a href="index.html">Início</a>
                            </body>
                            </html>

