        //adiciona.js

    var botao = document.querySelector("#adicionar-paciente");

    botao.addEventListener("click", function(event) {

    	event.preventDefault(); //impede comportamento padrao

    	var campoNome = document.querySelector("#campo-nome");
    	var campoPeso = document.querySelector("#campo-peso");
    	var campoAltura = document.querySelector("#campo-altura");


    	var pacienteNovo = "<tr class='paciente'>"+
    							"<td class='info-nome'>" + campoNome.value + "</td>"+
    							"<td class='info-peso'>" + campoPeso.value + "</td>"+
    							"<td class='info-altura'>" + campoAltura.value + "</td>"+
    							"<td class='info-imc'></td> "+
    						"</tr>";

    	var tabela = document.querySelector("table"); // seleciona sempre o primeiro elemento
    	tabela.innerHTML = tabela.innerHTML + pacienteNovo;


        
        if(campoNome.value == "" ){

        alert("Preencha o campo nome,peso e altura em sequencia.Caso contrario atualize com F5 para calculo de todos IMCs.");

        return false;
        }
        if(campoPeso.value == ""){

        alert("Preencha o campo nome,peso e altura em sequencia.Caso contrario atualize com F5 para calculo de todos IMCs.");

        return false;
        }
        if(campoAltura.value == ""){

        alert("Preencha o campo nome,peso e altura em sequencia.Caso contrario atualize com F5 para calculo de todos IMCs.");

        return false;
        }


      });

