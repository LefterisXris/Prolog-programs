% Ερώτηση 4)

%%% figure/2
%%% Orizontai ta prota 8 sximata
figure(1, middle(triangle, square)).
figure(2, middle(circle, triangle)).
figure(3, middle(square, circle)).
figure(4, middle(square, square)).
figure(5, middle(square, triangle)).
figure(6, middle(triangle, circle)).
figure(7, middle(circle, square)).
figure(8, middle(triangle, triangle)).

%%% Orizontai ta upoloipa 8 sximata
figure(9, low_left(circle, circle)).
figure(10, up_left(circle, circle)).
figure(11, low_right(circle, circle)).
figure(12, up_right(circle, circle)).
figure(13, up_left(square, square)).
figure(14, low_left(square, square)).
figure(15, up_right(square, square)).
figure(16, low_right(square, square)).


%%% relation/3
%%% Orizontai oi sxeseis metaksu sximaton
relation(middle(S1,S2), middle(S2,S1), inverse).
relation(middle(S1,S1), middle(S2,S2), double).

relation(low_left(S1,S1), low_left(S2,S2), double_and_same).
relation(low_right(S1,S1), low_right(S2,S2), double_and_same).
relation(up_left(S1,S1), up_left(S2,S2), double_and_same).
relation(up_right(S1,S1), up_right(S2,S2), double_and_same).

relation(low_left(S1,S1), up_right(S2,S2), reflection).
relation(low_right(S1,S1), up_left(S2,S2), reflection).

%%% analogy/4
%%% Kanonas pou dosmenou 3 eikonon (kodikos eikonas) vriskei tin tetarti vasei 
%%% ti sxesi pou prokuptei oti exei i proti me tin deuteri.
analogy(S1,S2,S3,Answer) :-
	figure(S1, State1),
	figure(S2, State2),
	figure(S3, State3),
	relation(State1,State2,Relation),
	relation(State3,Answer_State,Relation),
	figure(Answer,Answer_State).
% example: analogy(1,5,3,X).
	

%%% show/5
%%% Vriskei poies eikones mporoun na exoun tin sxesi Rel (metavliti)	
show(A,B,Rel,Fig1, Fig2) :-
	relation(A,B,Rel),
	figure(Fig1,A),
	figure(Fig2,B).
% example: show(A,B,inverse,X,Y).

%%% hasRelation/3
%%% Elegxei an mia eikona exei sxesi me mia alli.
hasRelation(S1,S2,Answer) :-
	figure(S1, State1),
	figure(S2, State2),
	relation(State1,State2,Answer).

