%exercice 2
pair(X):-0 is X mod 2.

impair(X):-pair(X),!,fail.
impair(_).

nb([],0,0).
nb([X|L],P,I):-pair(X),nb(L,M,I), P is M + 1.
nb([X|L],P,I):-impair(X),nb(L,P,N),I is N + 1.

%Exercice 3
listPair(0,[0]).
listPair(N,[N|LP]):-N>0,pair(N), M is N-2,listPair(M,LP).
listPair(N,LP):-N>0,impair(N), M is N-1,listPair(M,LP).

nbPair(0,0).
nbPair(N,N):-N>0,pair(N),M is N-2,nbPair(M,M). %à vérifier
nbPair(N,Elt):-N>0,impair(N),M is N-1,nbPair(M,Elt).


