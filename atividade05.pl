pai(darth_vader, luke).
pai(darth_vader, leia).
pai(leia, ben_solo).
pai(han_solo, ben_solo).


tio(A, B):-
    pai(Z, A),
    pai(Z, C),
    A\=C,
    pai(C, B).

avo(A, B):-
    pai(A, C),
    pai(C, B).

mestre(yoda, luke).
mestre(luke, ben_solo).
mestre(obi_wan, anakin).

hierarquia_jedi.
hierarquia_jedi(A):-
    jedi(A),
    write(A), nl,
    mestre(B, A),
    hierarquia_jedi(B).

mestre(darth_sidious, darth_vader).
mestre(darth_sidious, darth_maul).

se_tornou(anakin, darth_vader).
sith(darth_sidious).
sith(darth_vader).
sith(darth_maul).
jedi(yoda).
jedi(luke).
jedi(ben_solo).
jedi(obi_wan).
jedi(anakin).

darkside(A):-
    se_tornou(A, B),
    sith(B),
    jedi(A).
    
matou(obi_wan, [darth_maul]).
matou(darth_vader, [obi_wan, darth_sidious]).

matou_quem(A):-
    matou(A, B),
    escrever_lista(B),

escrever_lista([]).
escrever_lista([A|B]):-
    write(A), nl,
    escrever_lista(B).