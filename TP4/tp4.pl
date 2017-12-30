%exo1
list1([T|_],[T]).
list2([T1,T2|_],[T1,T2]).
perm12([T1,T2|R],[T2,T1|R]).

%exo2
%tant que la liste contient un seul �l�ment
%E est �gal � le premier �l�ment de la liste
membre(E,[E|_]).

%tant que la liste contient plusieurs �l�ments
membre(E,[_|Q]):-membre(E,Q).

%exo3
dernier(X,[X]).
dernier(X,[_|R]):-dernier(X,R).

%exo4
%cas de base
%liste vide
rangpair([],[]).
%liste contenante un �l�ment
rangpair([_],[]).
rangpair([_,D|R],[D|Reste]):-rangpair(R,Reste).

%exo5
%cas de base
consn(0,[0]).
consn(N,[N|R]):-N>=0, N1 is N-1, consn(N1,R).
%version 2
%consn(0,[0]).
%consn(N,[N|R]):-N>=0, N is N1+1, consn(N1,R).
