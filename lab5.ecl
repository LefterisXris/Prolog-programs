%3
lunion([],List2,List2).

lunion([H1|T1],List2,[H1|List3]):-
	not(member(H1,List2)),!,
	lunion(T1, List2, List3).
	
lunion([H1|T1],List2,List3):-
	lunion(T1, List2, List3).



%8
reduce(_, [], []).

reduce(Operation, [X,Y], Result) :-
	Op =..[Operation, X, Y, Result],
	call(Op).

reduce(Operation, [H|T], Result) :-
	reduce(Operation, T, TailRes),
	Op =..[Operation, H, TailRes, Result],
	call(Op).