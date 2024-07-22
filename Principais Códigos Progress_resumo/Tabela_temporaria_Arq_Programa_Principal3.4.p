// Programa principal:


{ttFile.i}

CREATE ttFile.
ASSIGN ttFile.fname = "c:\temp\".

CREATE ttFile.
ASSIGN ttFile.fname = "c:\Windows\".

CREATE ttFile.
ASSIGN ttFile.fname = "c:\Windoose\".

RUN checkFiles.p(INPUT-OUTPUT TABLE ttFile).

FOR EACH ttFile:
    DISPLAY ttFile.
END.



