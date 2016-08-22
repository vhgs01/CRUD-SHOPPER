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
        
        $sql="SELECT 
				CL.idCliente,
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
				CL.idCartao = CAR.idCartao";
        
         $stm = $con -> prepare ($sql);
         $stm -> execute();
         $stm-> bind_result ($idCliente, $nome, $telefone, $email, $dataNascimento, $empresa, $endereco, $cidade, $cep,$estado, $pais, $numeroCartao, $cvv);
         
		 print '<form action="atualizarPreen.php" method="post">';
		 print '<table border="1">';
         print '<tr><td>Selecionar</td><td>Nome</td> <td>Telefone</td><td>Email</td><td>Data Nascimento</td><td>Empresa</td><td>Endereco</td><td>Cidade</td><td>CEP</td><td>Estado</td><td>Pais</td><td>Numero Cartao</td><td>Numero CVV</td></tr>';
                while($stm->fetch()){
                    print '<tr>';
						print '<td><input type="radio" name="idCliente" value="'.$idCliente.'"></td>';
                        print '<td>'.$nome.'</td>';
                        print '<td>'.$telefone.'</td>';
                        print '<td>'.$email.'</td>';
                        print '<td>'.$dataNascimento.'</td>';
                        print '<td>'.$empresa.'</td>';
						print '<td>'.$endereco.'</td>';
						print '<td>'.$cidade.'</td>';
						print '<td>'.$cep.'</td>';
						print '<td>'.$estado.'</td>';
						print '<td>'.$pais.'</td>';
						print '<td>'.$numeroCartao.'</td>';
						print '<td>'.$cvv.'</td>';
					print '</tr>';
                }
		
        print '</table>';
		    $stm->close();
                
        ?>
		<hr>
		<input type="submit" value="Atualizar">
		</form>
        <br>
        <a href="index.php">Voltar</a>
    </body>
</html>