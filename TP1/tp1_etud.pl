%% TP n°1 - utilisation d'une base de donnees Les Atrides
pere(atlas, dioné).
pere(zeus, tantale).
pere(zeus, hélène).
pere(tantale, pélops).
pere(tantale, niobé).
pere(pélops, atrée).
pere(pélops, thyeste).
pere(pélops, pithée).
pere(catrée, aérope).
pere(pithée, éthra).
pere(thyeste, égisthe).
pere(égée, thésée).
pere(atrée, agamemnon).
pere(atrée, ménélas).
pere(agamemnon, oreste).
pere(agamemnon, iphigénie).
pere(agamemnon, électre).
pere(ménélas, hermione).
pere(ménélas, nicostrate).

mere(léda, hélène).
mere(dioné, pélops).
mere(dioné, niobé).
mere(hippodamie, atrée).
mere(hippodamie, thyeste).
mere(hippodamie, pithée).
mere(éthra, thésée).
mere(aérope, agamemnon).
mere(aérope, ménélas).
mere(clytemnestre, oreste).
mere(clytemnestre, iphigénie).
mere(clytemnestre, électre).
mere(hélène, hermione).
mere(hélène, nicostrate).

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

%X et Y ont même père et même mère
frereousoeur(X,Y):-pere(Z,X),pere(Z,Y),mere(W,X),mere(W,Y),X\=Y.

% ancetre(X, Y) est vrai si X est un ancêtre de Y
ancetre(X,Y):-pere(X,Y).
ancetre(X,Y):-mere(X,Y).
ancetre(X,Y):-grandparant(X,Y).
ancetre(X,Y):-frereousoeur(X,Y).
