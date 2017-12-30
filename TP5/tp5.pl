%delegaux est vrai ssi res contient les meme élément que L dans le
% meme d'ordre, sauf ceux qui sont égaux à res
delegaux([],_,[]).
delegaux([X|R],X,Res):-delegaux(R,X,Res).
delegaux([T|R],X,[T|Res]):-T\==X, delegaux(R,X,Res).


%delmultiple est vrai ssi res contient les meme élément que L dans le
% meme d'ordre, sauf ceux qui sont des multiple de X
delmultiple([],_,[]).
delmultiple([T|R],X,Res):-T mod X =:= 0, delmultiple(R,X,Res).
delmultiple([T|R],X,[T|Res]):-T mod X =\= 0, delmultiple(R,X,Res).




%cas de base
entre(Min,Min,[Min]).
entre(Min,Max,[Min|R]):-Min =< Max, M is Min + 1, entre(M,Max,R).

%entre2(Min,Min,Min).
%entre2(Min, Max, Val):-Min =< Max, M is Min + 1, entre(M,Max,R)




mot([r,o,t,i,s]).
mot([l,o,i]).
mot([l,o,t,o,s]).
mot([l,o,t,s]).
mot([r,o,t,i,n]).
mot([l,o,i,r,s]).

diff([T|R],[T|R2]):-diff(R,R2).
diff([T1|R],[T2|R]):-T1 \== T2.
%diff([T],[]).
%diff([],[T]).

correct(M,ok):-mot(M).
correct(M,M2):-mot(M2),diff(M,M2).

