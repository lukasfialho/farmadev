<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastro de Cliente</title>
    </head>
    <body>
        <h1>Formulário de Cadastro</h1>
        <form action="CadastroClienteServlet" method="POST">
            Nome:<input type="text" name="nome"/><br>
            Email:<input type="text" name="email"/><br>
            telefone:<input type="text" name="nome"/><br>
            cpf:<input type="text" name="nome"/><br>
            endereco:<input type="text" name="nome"/><br>
            genero:<input type="text" name="nome"/><br>
            estadoCivil:<input type="text" name="nome"/><br>

            <button type="submit" >Enviar</button>
        </form>
    </body>
</html>
