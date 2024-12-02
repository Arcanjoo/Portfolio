<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "contato";

// Cria a conexão
$conn = new mysqli($servername, $username, $password, $dbname);

// Verifica a conexão
if ($conn->connect_error) {
    die("Conexão falhou: " . $conn->connect_error);
}

// Verifica se os dados do formulário foram enviados
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Sanitiza os dados recebidos
    $nome = $conn->real_escape_string($_POST['nome']);
    $email = $conn->real_escape_string($_POST['email']);
    $mensagem = $conn->real_escape_string($_POST['mensagem']);

    // Prepara a consulta SQL
    $sql = "INSERT INTO contatos (nome, email, mensagem) VALUES (?, ?, ?)";

    // Prepara a declaração
    if ($stmt = $conn->prepare($sql)) {
        // Associa os parâmetros
        $stmt->bind_param("sss", $nome, $email, $mensagem);

        // Executa a declaração
        if ($stmt->execute()) {
            echo "Mensagem enviada com sucesso!";
        } else {
            echo "Erro: " . $stmt->error;
        }

        // Fecha a declaração
        $stmt->close();
    } else {
        echo "Erro na preparação da consulta: " . $conn->error;
    }
}

// Fecha a conexão
$conn->close();
?>
