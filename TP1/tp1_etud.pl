%% TP n�1 - utilisation d'une base de donnees Les Atrides
pere(atlas, dion�).
pere(zeus, tantale).
pere(zeus, h�l�ne).
pere(tantale, p�lops).
pere(tantale, niob�).
pere(p�lops, atr�e).
pere(p�lops, thyeste).
pere(p�lops, pith�e).
pere(catr�e, a�rope).
pere(pith�e, �thra).
pere(thyeste, �gisthe).
pere(�g�e, th�s�e).
pere(atr�e, agamemnon).
pere(atr�e, m�n�las).
pere(agamemnon, oreste).
pere(agamemnon, iphig�nie).
pere(agamemnon, �lectre).
pere(m�n�las, hermione).
pere(m�n�las, nicostrate).

mere(l�da, h�l�ne).
mere(dion�, p�lops).
mere(dion�, niob�).
mere(hippodamie, atr�e).
mere(hippodamie, thyeste).
mere(hippodamie, pith�e).
mere(�thra, th�s�e).
mere(a�rope, agamemnon).
mere(a�rope, m�n�las).
mere(clytemnestre, oreste).
mere(clytemnestre, iphig�nie).
mere(clytemnestre, �lectre).
mere(h�l�ne, hermione).
mere(h�l�ne, nicostrate).

%X est un enfant de Y
enfant(X,Y):-pere(Y,X).
entant(X,Y):-mere(Y,X).

%X est grandpere de Y
grandpere(X,Y):-pere(X,Z),pere(Z,Y).
grandpere(X,Y):-pere(X,Z),mere(Z,Y).

%X est grandmere de Y
grandmere(X,Y):-mere(X,Z),pere(Z,Y).
grandmere(X,Y):-mere(X,Z),mere(Z,Y).

%X est grandparant de Y
grandparant(X,Y):-grandpere(X,Y).
grandparant(X,Y):-grandmere(X,Y).

%X et Y ont m�me p�re et m�me m�re
frereousoeur(X,Y):-pere(Z,X),pere(Z,Y),mere(W,X),mere(W,Y),X\=Y.

% ancetre(X, Y) est vrai si X est un anc�tre de Y
ancetre(X,Y):-pere(X,Y).
ancetre(X,Y):-mere(X,Y).
ancetre(X,Y):-grandparant(X,Y).
ancetre(X,Y):-frereousoeur(X,Y).
