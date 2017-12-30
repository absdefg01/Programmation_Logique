%exercice 3
%estPair(X):-X mod 2 =:= 0.
%cas de base
syracuse(M,M,0).
syracuse(M,S,N):-N > 0, N1 is N-1, syracuse(M,S1,N1),S1 mod 2 =:=0, S is S1/2.
syracuse(M,S,N):-N > 0, N1 is N-1, syracuse(M,S1,N1),S1 mod 2 =:=1, S is ((3*S1)+1).


membre(X,[X|_]).
membre(X,[Y|R]):-X =\= Y, membre(X,R).

estDans3(X,[X|_Suite]):-!.
estDans3(X,[_Y|Suite]):-estDans3(X,Suite).

