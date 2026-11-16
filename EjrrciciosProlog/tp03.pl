%%01

par(0) :- !.
par(1):- fail.
par(N) :- N > 1, N2 is N - 2, par(N2).


%%02
mi_suma(0, 0) :- !.
mi_suma(N, S) :-
    N > 0,
    par(N), !,
    N1 is N - 1,
    mi_suma(N1, S1),
    S is N + S1.
mi_suma(N, S) :-
    N > 0,
    N1 is N - 1,
    mi_suma(N1, S).
   
%%03
   
pote(_,0,1):-!.
pote(B,E,V):- 
	E>0, E1 is E-1,
	pote(B,E1,V1),
	V is B * V1.

%%04

fibonacci(0, 0) :- !.
fibonacci(1, 1) :- !.
fibonacci(N, F) :-
    N > 1,
    N1 is N - 1,
    N2 is N - 2,
    fibonacci(N1, F1),
    fibonacci(N2, F2),
    F is F1 + F2.
%%05

and(0, 0, 0).
and(0, 1, 0).
and(1, 0, 0).
and(1, 1, 1).
or(0, 0, 0).
or(0, 1, 1).
or(1, 0, 1).
or(1, 1, 1).
not(0, 1).
not(1, 0).
circuito(Q1, Q2, S):-
    not(Q1, NQ1),
    not(Q2, NQ2),
    and(NQ1, Q2, And1),
    and(Q1, NQ2, And2),
    or(And1, And2, S).

%%06

sintoma(juan, fiebre).
sintoma(juan, tos).
sintoma(maria, dolor_cabeza).
sintoma(maria, estornudos).
sintoma(pedro, dolor_garganta).
sintoma(pedro, fiebre).

enfermedad(gripe, fiebre).
enfermedad(gripe, tos).
enfermedad(resfrio, estornudos).
enfermedad(anginas, dolor_garganta).
enfermedad(anginas, fiebre).
enfermedad(migrana, dolor_cabeza).

diagnostico(P, S, E) :-
    sintoma(P, S),
    enfermedad(E, S).
%%07



predecesor([], []) :- !.
predecesor([X], [X]) :- !.


predecesor([X, Y | Cola], [X | R]) :-
    chequear([X, Y | Cola], R).


chequear([_], []) :- !.
chequear([X, Y | Cola], [Y | R]) :- Y >= X, !, chequear([Y | Cola], R).
chequear([_, Y | Cola], R):- chequear([Y | Cola], R).

%%08

rotador(L,0,L):-!.
rotador([],_,[]):-!.
rotador([X | Cola], N, LR) :-
	N>0,
	append(Cola, [X], LR1), 
	N1 is N-1,
	rotador(LR1,N1,LR).


%%09
sumato(S1,[]):- S1=0, !.
sumato(S,[X|Cola]):-
	
	sumato(S1, Cola),
	S is X+S1.

%%10
cntidad([],S):- S=0, !.
cntidad([_|Cola], S):-
	
	cntidad(Cola, S1),
	S is 1+S1.
	
%%11

ultimo([U], U) :- !.
ultimo([_|Cola], U):-
	
	ultimo(Cola, U).
%%12	
	
	

inversa([], []):-!.

inversa([X|Cola],LI):- inversa(Cola, LI1), 
append(LI1,[X], LI). 





	





    
  
