%%%count_odd/2

count_odd([],0).
	
count_odd([H],C) :-
	C is H mod 2.
	
count_odd([H|T], Out) :-
	count_odd(T, Count),
	count_odd(H, CountH),
	Out is Count + CountH.

count_odd(H,C) :-
	C is H mod 2.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
	
%%% replace/4

replace(X,Y,[X],[Y]).

replace(X,Y,[X|T], [Y|T]).

replace(X,Y,[H|T],[H|T2]) :-
	replace(X,Y,T,T2).





