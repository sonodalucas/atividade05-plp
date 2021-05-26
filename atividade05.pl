pai(darth_vader, luke).
pai(darth_vader, leia).
pai(leia, ben_solo).

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

mestre(darth_sidious, darth_vader).
mestre(darth_sidious, darth_maul).

se_tornou(anakin, darth_vader).
sith(darth_sidious).
sith(darth_vader).
sith(darth_maul).
jedi(yoda).
jedi(ben_solo).
jedi(obi_wan).
jedi(anakin).

darkside(A):-
    se_tornou(A, B),
    sith(C),
    B\=C,
    mestre(C, B),
    jedi(D),
    A\=D,
    mestre(D, A).

matou(obi_wan, darth_maul).
matou(darth_vader, obi_wan).
matou(luke, darth_vader).

matou_quem(A):-
    matou(A, B),
    write(B), nl.
