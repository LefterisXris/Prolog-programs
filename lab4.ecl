%4
rotate_left(Pos, [X,Y], [Y,X]).

rotate_left(Pos, List, RotatedList) :-
	append(TempList1, TempList2, List),
	length(TempList1, Pos),
	append(TempList2, TempList1, RotatedList).

%5.a
atom(hydrogen,[h1,h2,h3,h4,h5,h6,h7]).
atom(carbon,[c1,c2,c3,c4,c5,c6,c7]).
atom(chlorine,[cl]).

atom_bonds_to(h3, c3).
atom_bonds_to(c3, h2).
atom_bonds_to(c3, h5).
atom_bonds_to(c3, c4).
atom_bonds_to(c4, c1).
atom_bonds_to(c1, h1).
atom_bonds_to(c1, c2).
atom_bonds_to(c2, cl).
atom_bonds_to(c2, c5).
atom_bonds_to(c5, h4).
atom_bonds_to(c4, c6).
atom_bonds_to(c6, h6).
atom_bonds_to(c6, c7).
atom_bonds_to(c7, h7).
atom_bonds_to(c7, c5).

%5.b
carbon(X) :-
	atom(carbon, List),
	member(X, List).
	

hydrogen(X) :-
	atom(hydrogen, List),
	member(X, List).


bonded(X,Y) :-
	atom_bonds_to(X,Y).

bonded(X,Y) :-
	atom_bonds_to(Y,X).

%5.c
methyl(X) :-
	carbon(X),
	bonded(X, Hydrogen1),
	hydrogen(Hydrogen1),
	bonded(X, Hydrogen2),
	hydrogen(Hydrogen2),
	bonded(X, Hydrogen3),
	hydrogen(Hydrogen3),
	Hydrogen1 \= Hydrogen2,
	Hydrogen2 \= Hydrogen3,
	Hydrogen1 \= Hydrogen3.
	

