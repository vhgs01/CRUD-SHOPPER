<html>
    <head>
        <meta content="text/html; charset=utf-8" />
        <title>Listagem de Clientes- Shopper</title>
    </head>
    <body>
        <?php
        $con = mysqli_connect("localhost","root","","shopperdb");
        if(!$con){
                exit('Erro de Conexão! ('. mysqli_connect_errno(). ')'. mysqli_connect_error());
        }
        
        $idCliente = $_POST['idCliente'];
		$nomeAtt = $_POST['nome'];
		$telefoneAtt = $_POST['telefone'];
		$emailAtt = $_POST['email'];
		$dataNascimentoAtt = $_POST['dataNascimento'];
		$empresaAtt = $_POST['empresa'];
		$enderecoAtt = $_POST['endereco'];
		$cidadeAtt = $_POST['cidade'];
		$cepAtt = $_POST['cep'];
		$estadoAtt = $_POST['estado'];
		$paisAtt = $_POST['pais'];
		$numCartaoAtt = $_POST['numCartao'];
		$numCvvAtt = $_POST['numCvv'];		
		
		$sql="SELECT 
				CL.nome,
				CL.telefone,
				CL.email,
				CL.dataNascimento,
				CL.empresa,
				CL.idEndereco,
				CL.idCartao,
				EN.endereco,
				EN.cidade,
				EN.cep,
				EN.estado,
				EN.pais,
				CAR.numeroCartao,
				CAR.cvv
				FROM 
				cliente as CL
				INNER JOIN endereco AS EN
				ON 
				CL.idEndereco = EN.idEndereco
				INNER JOIN cartao_cliente AS CAR
				ON
				CL.idCartao = CAR.idCartao
				WHERE CL.idCliente = $idCliente";
        
         $stm = $con -> prepare ($sql);
         $stm -> execute();
         $stm-> bind_result ($nome, $telefone, $email, $dataNascimento, $empresa, $idEndereco, $idCartao, $endereco, $cidade, $cep, $estado, $pais, $numeroCartao, $cvv);
		 
		 while($stm->fetch()){
		 echo '';
		 }
		 
		 $updateEndereco = "UPDATE endereco SET endereco = '$enderecoAtt' , cidade = '$cidadeAtt' , cep = '$cepAtt' , estado = '$estadoAtt', pais = '$paisAtt' WHERE idEndereco = $idEndereco";
		 
		 if(mysqli_query($con, $updateEndereco))
                echo '';
            else
                echo 'Erro na atualizacao'.  mysqli_connect_error($con);
		 
		 $updateCartao = "UPDATE cartao_cliente SET numeroCartao = $numCartaoAtt, cvv = $numCvvAtt WHERE idCartao = $idCartao";
		 
		 if(mysqli_query($con, $updateCartao))
			 echo '';
		 else
			 echo 'Erro na atualizacao'. mysqli_connect_error($con);
		
		$updateCliente = "UPDATE cliente SET nome = '$nomeAtt', telefone = '$telefoneAtt', email = '$emailAtt', dataNascimento = '$dataNascimentoAtt', empresa = '$empresaAtt' WHERE idCliente = $idCliente";
		
		if(mysqli_query($con, $updateCliente))
			echo 'Cliente atualizado com sucesso!';
		else
			echo 'Erro na atualizacao'. mysqli_connect_error($con);
		
		?>	

        <br>
        <a href="index.php">Voltar</a>
    </body>
</html>