/* Recursão */

// Uma função pode chamar a si mesma e, portanto, recorrer.


FUNCTION factorial INTEGER (num AS INTEGER).

    IF num = 1 THEN 
        RETURN 1.
    ELSE 
        RETURN num * factorial(num - 1).

END FUNCTION.

DISPLAY factorial(5).



/* Com configurações padrão (parâmetro de inicialização), a sessão Progress não 
será capaz de lidar com números muito grandes neste exemplo.Factorial(200) 
preencherá a pilha e gerará um erro.*/
