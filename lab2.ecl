%%% Erotima 5 apo ExecSet 2.
%%% a)

%%% divides/2
%%% O arithmos X dierei akrivos ton eauto tou.
divides(X,X).

%%% divides/2
%%% Elegxei an diereite o arithmos X me ton arithmo Y akrivos.
divides(X,Y) :-
	Temp is Y-X,
	Temp > 0,
	divides(X,Temp).
	
	
	
%%% b)

%%% divides/3
%%% o arithmos X dierei ton eauto toy 1 fora.
divides(X,X,1).

%%% o aritmos 0 X dierei ton arithmo 0, 0 fores.
divides(0,X,0).

%%% Dexetai toys arithmous X kai Y kai vriskei poios einai o dieretis tous.
divides(X,Y,Z) :-
	Temp is Y-X,
	Temp > 0,
	divides(X,Temp,NewZ),
	Z is NewZ+1.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%	

%%% Erotima 8 apo ExecSet 2.
%%% int_in_range/3 
%%% Ektuponei tous arithmous mesa sto diastima [Min,Max]

int_in_range(Min, Max, X) :-
	Min =< Max,
	X is Min.

int_in_range(Min, Max, Result) :-
	NewMin is Min+1,
	NewMin =< Max,
	int_in_range(NewMin, Max, Result).