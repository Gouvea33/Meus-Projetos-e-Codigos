<br>
<br>
<?php

$campo_nome = $_GET["f_nome"];
$campo_peso = $_GET["f_peso"];
$campo_altura = $_GET["f_altura"];
$Ind_mas_corp = $_GET["f_peso"];
$Ind_mas_corp = $_GET["f_altura"];


      echo "<br>Prezado(a)<b> $campo_nome </b>,<br><br> confira os dados referentes a sua consulta.";
      
      echo "O seu peso foi <b> $campo_peso </b> quilos. " ;

      echo "A sua altura foi <b> $campo_altura </b> metros.<br><br>" ;

      echo " Seu IMC :<br><br> ";

      function calculo_imc($campo_altura,$campo_peso)
        {

         $Ind_mas_corp = $campo_peso/($campo_altura*$campo_altura);
         return $Ind_mas_corp;

        }

      echo calculo_imc($campo_altura,$campo_peso)." (indice de massa corporal).<br><br>";


      echo " Avisos:<br><br> ";

      echo " Calculo do IMC do ultimo paciente digitado da lista(tabela).<br><br> " ;


      echo " O IMC normal vai de 18 a 25.<br><br> ";


      echo " IMC abaixo de 18 e acima de 25,favor entrar em contato para nova consulta.";
      

      echo "<b> Priorize sua saude e obrigado!</b><br><br> ";


?>


