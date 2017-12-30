estDans(X,[X|_Suite]).
estDans(X,[_Y,Suite]):-estDans(X,Suite).
%1 ?- estDans(5,[5,6,5,7]).
%true
%false.


estDans2(X,[X|_Suite]).
estDans2(X,[Y|Suite]):-X \= Y,estDans2(X,Suite).
%2 ?- estDans2(5,[5,6,5,7]).
%true
%false.


habite(paul,paris).
habite(luc,paris).
habite(marc,paris).
habite(jean,toulouse).
habite(paul,toulouse).
habite(paul,toulouse).
%des gens qui habitent à Toulouse
%4 ?- habite(R,toulouse).
%R = jean
%R = paul
%R = paul.

%donner un nom toulousain
%5 ?- habite(R,toulouse),!.
%R = jean.


estDans3(X,[X|_Suite]):-!.
estDans3(X,[_Y|Suite]):-estDans(X,Suite).
%6 ?- estDans3(5,[5,6,5,7]).
%true.
%7 ?- estDans3(5,[4,6,5,7]).
%false.

p(X):-q(X),!,r(X).
p(a).
q(b).
q(a).
r(a).
%8 ?- p(X).
%false.


%p(X):-q(X),!,r(X).
%p(a).
%q(b).
%q(a).
%r(a).
%12 ?- p(X).
%X = a.


%np(X) vrai si p(X) faux
np(X):-p(X),!,fail.

plusGrand(X,Y,X):-X>Y,!.
plusGrand(X,Y,Y).

plusGrand2(X,Y,X):-X>Y.
plusGrand2(X,Y,Y):-X=<Y.
%21 ?- plusGrand2(1,3,X).
%X = 3.
%22 ?- plusGrand2(5,3,X).
%X = 5


yy(M,E,L):-xx(M,O,E,L).
xx(M,N,E,[E|L]):-P is N+1,!,xx(M,P,E,L).
xx(M,N,E,[_|L]):-xx(M,N,E,L).
xx(M,M,_,[]).

