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
        </div>					<div class="jumbotron jumbotron-fluid p-1">
            <div class="container-fluid mr-5"> 
                <h1 class="display-5">Cadastro de Clientes</h1>


                <div class="form-group">
                    <form action="CadastroClienteServlet" method="POST">

                        <div class="form-row border">
                            <div class="form-group col-md-auto">
                                <label> Nome </label>
                                <input type="text" class="form-control" name= "nome">
                            </div>

                            <div class="form-group col-md-5px">
                                <label>Email</label>
                                <input type="text" class="form-control" name= "email" placeholder="digite seu e-mail aqui"/>
                            </div>

                            <div class="form-group col-md-auto">
                                <label>CPF</label>
                                <input type="text" class="form-control" name= "cpf"/>
                            </div>

                            <div class="form-group col-md-auto">
                                <label> Endere�o </label>
                                <input type="text" class="form-control" name= "endereco">
                            </div>

                            <div class="form-group col-md-auto">
                                <label> Telefone </label>
                                <input type="text" class="form-control" name= "telefone">
                            </div>

                            <div class="form-group col-md-auto">
                                <label> G�nero </label>
                                <input type="text" class="form-control" name= "genero">
                            </div>

                            <div class="form-group col-md-auto">
                                <label> Estado Civil </label>
                                <input type="text" class="form-control" name= "estadoCivil">
                            </div>

                        </div>  

                        <div class="container m-3">
                            <button class="btn btn-outline-success" type="submit" >Criar</button>
                            <button class="btn btn-outline-secondary" type="reset" >limpar</button> 
                        </div>
                    </form>
                </div>
                <div align="center">                     
                    <a href="index.html">In�cio</a>   
                </div>
                <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
                </body>
                </html>