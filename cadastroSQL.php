<html>
    <head>
        <meta content="text/html; charset=utf-8" />
        <title>Teste CRUD - Shopper</title>
    </head>
    <body>
        <?php
		// Estabelecendo conexão
        $con = mysqli_connect("localhost","root","","shopperdb");
        if(!$con){
                exit('Erro de Conexão! ('. mysqli_connect_errno(). ')'. mysqli_connect_error());
        }
		
		// Atribuindo valor as variáveis
        $nome = $_POST['nome'];
		$telefone = $_POST['telefone'];
		$email = $_POST['email'];
		$dataNascimento = $_POST['dataNascimento'];
		$empresa = $_POST['empresa'];
		$endereco = $_POST['endereco'];
		$cidade = $_POST['cidade'];
		$cep = $_POST['cep'];
		$estado = $_POST['estado'];
		$pais = $_POST['pais'];
		$numCartao = $_POST['numCartao'];
		$numCvv = $_POST['numCvv'];
		
				
		// Inserindo os dados na tabela endereco
		$sqlEndereco = ("INSERT INTO endereco VALUES ('','$endereco','$cidade','$cep','$estado','$pais')");
		// "Pegando" o idEndereco referente ao ultimo registro adicionado 
		$enderecoInserido = ("SELECT idEndereco FROM endereco ORDER BY idEndereco DESC LIMIT 1");
                    
            if(!mysqli_query($con, $sqlEndereco)) {
                die("Falha ao criar um novo endereco".  mysqli_error($con));                
                
            }
			$stmEndereco = $con->prepare($enderecoInserido);
			$stmEndereco->execute();
			$stmEndereco->bind_result($dadoEndereco);
			while ($stmEndereco->fetch()){
				print "";
			}
        
		
		// Inserindo os dados na tabela cartao_cliente
		$sqlCartao = ("INSERT INTO cartao_cliente VALUES ('',$numCartao,$numCvv)");
		// "Pegando" o idCartao_Cliente referente ao ultimo registro adicionado
		$cartaoInserido = ("SELECT idCartao FROM cartao_cliente ORDER BY idCartao DESC LIMIT 1");
		
		if(!mysqli_query($con, $sqlCartao)) {
                die("Falha ao criar um novo cartao".  mysqli_error($con));                
                
            }
			$stmCartao = $con->prepare($cartaoInserido);
			$stmCartao->execute();
			$stmCartao->bind_result($dadoCartao);
			while ($stmCartao->fetch()){
				print "";
			}
			
		// Inserindo os dados na tabela cliente
		$sqlCliente = ("INSERT INTO cliente VALUES ('',$dadoEndereco,$dadoCartao,'$nome','$telefone','$email','$dataNascimento','$empresa')");
		if(!mysqli_query($con, $sqlCliente)) {
                die("Falha ao criar um novo Cliente".  mysqli_error($con));                
                
            }
		echo "Cliente inserido com sucesso!";
		mysqli_close($con);
        ?>
		
        <p><a href="index.php">Voltar a Home Page</a>
    </body>
</html>