/* Recurs�o */

// Uma fun��o pode chamar a si mesma e, portanto, recorrer.


FUNCTION factorial INTEGER (num AS INTEGER).

    IF num = 1 THEN 
        RETURN 1.
    ELSE 
        RETURN num * factorial(num - 1).

END FUNCTION.

DISPLAY factorial(5).



/* Com configura��es padr�o (par�metro de inicializa��o), a sess�o Progress n�o 
ser� capaz de lidar com n�meros muito grandes neste exemplo.Factorial(200) 
preencher� a pilha e gerar� um erro.*/
