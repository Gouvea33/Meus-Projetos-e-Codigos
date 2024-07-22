/* Caracteres especiais (e escape) */

/* No Progress 4GL a maneira normal de escrever um caractere especial é precedê-lo 
com um caractere til (~). */

// Se você quiser exibir o til, ele deve ser escapado!


MESSAGE "A single tilde: ~~" VIEW-AS ALERT-BOX.

MESSAGE "At sign: ~100" SKIP
        "Tab~tseparated~twords!" SKIP
        "A linefeed:~n"
        "Escaping a quote sign: ~"This is a quote!~"" SKIP VIEW-AS ALERT-BOX.
