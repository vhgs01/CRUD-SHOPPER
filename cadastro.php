<html>
    <head>
        <meta content="text/html; charset=utf-8" />
        <title>Teste CRUD - Shopper</title>
    </head>
    <body>
        <form action="cadastroSQL.php" method="post">
            <h3><b>Preencha os campos</b></h3><hr>
            <p>
             <p>
                 Nome:<br>
                <input type="text" name="nome"/>    
            </p>
             <p>
                 Telefone:<br>
                <input type="text" name="telefone" placeholder="Ate 11 digitos"/>
  
            </p>
             <p>
                 E-mail:<br>
                <input type="text" name="email"/>    
            </p>
             <p>
                 Data de nascimento :<br>
                <input type="text" name="dataNascimento" placeholder="YYYYMMDD"/>    
            </p>
            Empresa:<br>
                <input type="text" name="empresa"/>    
            </p>
            <hr>
            <p>
                Endereco:<br>
                <input type="text" name="endereco"/>    
            </p>
            <p>
                Cidade:<br>
                <input type="text" name="cidade"/>
            </p>
            <p>
                CEP:<br>
                <input type="text" name="cep" placeholder="00000000"/>
            </p>
			<p>
                Estado:<br>
                <input type="text" name="estado"/>
            </p>
			<p>
                Pais:<br>
                <input type="text" name="pais"/>
            </p>
			<hr>
            <p>
                Numero do Cartao:<br>
                <input type="text" name="numCartao" placeholder="Ate 19 digitos"/>    
            </p>
			<p>
                Numero do CVV:<br>
                <input type="text" name="numCvv" placeholder="Ate 4 digitos"/>    
            </p>
            <p>
                <input type="submit" value="Enviar">
                <input type="reset" value="Limpar">
				<p>
				<a href="index.php">Voltar</a>
				</p>
            </p>
        </form>
    </body>
</html>