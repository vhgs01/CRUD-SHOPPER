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
        
        $idClienteAtt = $_POST['idCliente'];  
        		
		$sql="SELECT 
				CL.nome,
				CL.telefone,
				CL.email,
				CL.dataNascimento,
				CL.empresa,
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
				WHERE CL.idCliente = $idClienteAtt";
        
         $stm = $con -> prepare ($sql);
         $stm -> execute();
         $stm-> bind_result ($nome, $telefone, $email, $dataNascimento, $empresa, $endereco, $cidade, $cep, $estado, $pais, $numeroCartao, $cvv);
		 
		 while($stm->fetch()){
		 echo "";
		 }
		?>	
		<form action="atualizarSQL.php" method="post">
		<h1><b>Preencha os campos</b></h1><hr>
            <p>
             <p>
                 Nome:<br>
                <input type="text" name="nome" value="<?php echo $nome;?>"/>    
            </p>
             <p>
                 Telefone:<br>
                <input type="text" name="telefone" value="<?php echo $telefone;?>"/>
  
            </p>
             <p>
                 E-mail:<br>
                <input type="text" name="email" value="<?php echo $email;?>"/>    
            </p>
             <p>
                 Data de nascimento:<br>
                <input type="text" name="dataNascimento" value="<?php echo $dataNascimento;?>"/>    
            </p>
            Empresa:<br>
                <input type="text" name="empresa" value="<?php echo $empresa;?>"/>    
            </p>
            <hr>
            <p>
                Endereco:<br>
                <input type="text" name="endereco" value="<?php echo $endereco;?>"/>    
            </p>
            <p>
                Cidade:<br>
                <input type="text" name="cidade" value="<?php echo $cidade;?>"/>
            </p>
            <p>
                CEP:<br>
                <input type="text" name="cep" value="<?php echo $cep;?>"/>
            </p>
			<p>
                Estado:<br>
                <input type="text" name="estado" value="<?php echo $estado;?>"/>
            </p>
			<p>
                Pais:<br>
                <input type="text" name="pais" value="<?php echo $pais;?>"/>
            </p>
			<hr>
            <p>
                Numero do Cartao:<br>
                <input type="text" name="numCartao" value="<?php echo $numeroCartao;?>"/>    
            </p>
			<p>
                Numero do CVV:<br>
                <input type="text" name="numCvv" value="<?php echo $cvv;?>"/>    
            </p>
            <p>
			
			    <input type="hidden" name="idCliente" value="<?php echo $idClienteAtt?>"/>
                <input type="submit" value="Enviar">
            </p>
        
		</form>
        <a href="index.php">Voltar</a>
    </body>
</html>