nth(1, [H|_], H).
nth(I, [_|T], H) :- I > 1, I1 is I - 1, nth(I1, T, H).

remove(_, [], []).
remove(L, [L|T], X) :- remove(L, T, X).
remove(L, [H|T], [H|X]) :- \+ L = H, remove(L, T, X).

splitEvenOdd([], [], []).
splitEvenOdd([H|T], [H|X], Y) :- 0 is mod(H, 2), splitEvenOdd(T, X, Y).
splitEvenOdd([H|T], X, [H|Y]) :- \+ 0 is mod(H, 2), splitEvenOdd(T, X, Y).

lessThanEq([], [], []).
lessThanEq([], [], X).
lessThanEq([H1|T1], [], [H3|T3]) :- lessThanEq(T1, [], T3).
lessThanEq([], [H2|T2], [H3|T3]) :- lessThanEq([], T2, T3).
lessThanEq([H1|T1], [H2|T2], [H3,H4|T3]) :- lessThanEq(T1, T2, T3).

nextRow([H], [H]).
nextRow([H1,H2|T1], [X|Y]) :- nextRow([H2|T1], Y), X is H1 + H2.
row(1, [1]).
row(N, X) :- N1 is N - 1, row(N1, X1), nextRow([0|X1], X).