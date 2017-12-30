vol(it386,blagnac,cdg).
vol(af55,cdg,heathrow).
vol(af56,blagnac,gatw).
vol(it387,blagnac,orly).
vol(it856,marignane,cdg).
vol(it857,marignane,orly).
vol(af65,marignane,heathrow).
vol(af66,marignane,gatwick).
vol(tat32,blagnac,marignane).

vol(aaa,marignane,cdg).
vol(tat31,cdg,marignane).
vol(aa0,marignane,blagnac).

aeroport(paris,orly).
aeroport(paris,cdg).
aeroport(londres,heathrow).
aeroport(londres,gatwick).
aeroport(toulouse,blagnac).
aeroport(marseille,marignane).

%VD ville d�part VA ville arriv�e, N num�ro du vol
liaison(N,VD,VA) :- vol(N,D,A),aeroport(VD,D),aeroport(VA,A).

voyagea(AD,AA):-vol(_,AD,AA),vol(_,AA,AD).
voyagea(AD,AA):-vol(_,AD,X),vol(_,Y,AA),voyagea(X,Y).
