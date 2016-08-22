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
		$idEndereco = $_POST['idEndereco']; 
		$idCartao = $_POST['idCartao']; 

		$removeCliente="DELETE FROM cliente WHERE idCliente = $idCliente";
        if(mysqli_query($con, $removeCliente))
                echo '';
            else
                echo 'Erro remocao'.  mysqli_connect_error($con);
		
		$removeEndereco="DELETE FROM endereco WHERE idEndereco = $idEndereco";
        if(mysqli_query($con, $removeEndereco))
                echo '';
            else
                echo 'Erro remocao'.  mysqli_connect_error($con);
		 
		$removeCartao="DELETE FROM cartao_cliente WHERE idCartao = $idCartao";
        if(mysqli_query($con, $removeCartao))
                echo '';
            else
                echo 'Erro remocao'.  mysqli_connect_error($con);
		 
		echo "Cliente Removido com sucesso!";
		 
		?>	

        <br>
        <a href="index.php">Voltar</a>
    </body>
</html>