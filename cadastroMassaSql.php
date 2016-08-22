<?php
	// Estabelecendo conexão
			$con = mysqli_connect("localhost","root","","shopperdb");
			if(!$con){
					exit('Erro de Conexão! ('. mysqli_connect_errno(). ')'. mysqli_connect_error());
			}

	 // Abrindo o arquivo em modo leitura
	 $arquivo = fopen ('BancoDeTeste.csv', 'r');

	 // Lendo o conteúdo do arquivo
	 while(!feof($arquivo))
	 {
	  // Pega os dados da linha
	  $linha = fgets($arquivo, 1024);

	  // Divide as Informações das celular para poder salvar
	  $dados = explode(';', $linha);

	  // Verifica se o Dados Não é o cabeçalho ou não esta em branco
	  if($dados[0] != 'nome' && !empty($linha))
	  {
	   $sqlEndereco = ("INSERT INTO endereco VALUES ('','$dados[5]','$dados[6]','$dados[7]','$dados[8]','$dados[9]')");
	   mysqli_query($con,$sqlEndereco);
	   // "Pegando" o idEndereco referente ao ultimo registro adicionado 
	   $enderecoInserido = ("SELECT idEndereco FROM endereco ORDER BY idEndereco DESC LIMIT 1");
	   mysqli_query($con,$enderecoInserido);
	   $stmEndereco = $con->prepare($enderecoInserido);
			$stmEndereco->execute();
			$stmEndereco->bind_result($dadoEndereco);
			while ($stmEndereco->fetch()){
				print "";
			}
	   
	   $sqlCartao = ("INSERT INTO cartao_cliente VALUES ('',$dados[10],$dados[11])");
	   mysqli_query($con,$sqlCartao);
	   // "Pegando" o idCartao_Cliente referente ao ultimo registro adicionado
	   $cartaoInserido = ("SELECT idCartao FROM cartao_cliente ORDER BY idCartao DESC LIMIT 1");
	   mysqli_query($con,$cartaoInserido);
	   $stmCartao = $con->prepare($cartaoInserido);
			$stmCartao->execute();
			$stmCartao->bind_result($dadoCartao);
			while ($stmCartao->fetch()){
				print "";
			}
		

	   $sqlCliente = ("INSERT INTO cliente VALUES ('',$dadoEndereco,$dadoCartao,'$dados[0]','$dados[1]','$dados[2]','$dados[3]','$dados[4]')");
	   mysqli_query($con,$sqlCliente);
	  }
	 }

	 // Fecha arquivo aberto
	 fclose($arquivo);
?>
<html>
	<head>
	</head>
	<body>
		<p><a href="index.php">Voltar a Home Page</a>
	</body>
</html>