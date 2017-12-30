% Exercice 1
habite(paul , paris) .
habite(luc , paris) .
habite(marc , paris) .
habite(jean , toulouse) .
habite(fred , toulouse) .
habite(louis , toulouse) .
pratique(marc , foot) .
pratique(marc , rugby) .
pratique(marc , judo) .
pratique(paul , tennis) .
pratique(paul , foot) .
pratique(luc , rugby) .
pratique(luc , basket) .
pratique(jean , judo) .
pratique(jean , tennis) .
pratique(fred , basket) .
pratique(fred , rugby) .
pratique(fred , judo) .
collectif(rugby) .
collectif(foot) .
collectif(basket) .
collectif(hockey) .
individuel(tennis) .
individuel(golf) .
individuel(judo) .
rel1(X,Y) :- pratique(X,Y), collectif(Y) , ! .
rel2(X,Y) :- collectif(Y), pratique(X,Y) , ! .

%4 définir un nouveau prédicat sport
sport(S):-collectif(S).
sport(S):-individuel(S).

%parisien qui pratique rugby
rugParis(S):-habite(S,paris),pratique(S,rugby),!.

%13 collectif pratique à paris
%habite(X,paris),rel1(X,_).

%14
unJoueur(X,S):-pratique(X,S),!.

%15
%chaque ville un représentant de cette ville
ville(paris).
ville(toulouse).
villeF(V):-ville(V).

unSportif(V,X,S):-habite(X,V),!,pratique(X,S).
%villeF(V),unSportif(V,X,S).

