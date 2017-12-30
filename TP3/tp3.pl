%exo1
somme(A,B,S):- S is A+B.

%exo2
maximum(A,B,M):-A>=B,M is A.
maximum(A,B,M):-B>A,M is B.

%exo3
sigma(0,0).
sigma(N,Res):-M is N-1, sigma(M,R),Res is R+N.

%exo4
fact(0,F):-F is 1.
fact(N,F):-M is N-1, fact(M,R),F is R*N.

%exo5 C est le diviseur commun
%pgcd(A,A,A).
pgcd(A,B,C):-A=:=B,C is A.
pgcd(A,B,C):-A>B,M is A-B,pgcd(M,B,C).
pgcd(A,B,C):-A<B,M is B-A, pgcd(A,M,C).

%exo6
somme2(BMax,BMin,S):-BMax=:=BMin,S is BMin.
somme2(BMax,BMin,S):-M is BMax-1,somme2(M,BMin,R),S is R+BMax.

%exo7
somme3(B1,B2,S):-B1=:=B2,S is B1.
somme3(B1,B2,S):-B1>B2, M is B1-1,somme3(M,B2,R),S is R+B1.
somme3(B1,B2,S):-B1<B2, M is B2-1,somme3(M,B1,R),S is R+B2.

%exo9
chaineConstruire(L,1,L).
chaineConstruire(L,N,C):-N>1,M is N-1,chaineConstruire(L,M,CC),atom_concat(CC,L,C).

%exo10
chaineDeconstruire(C,L,N):-N>0,M.
