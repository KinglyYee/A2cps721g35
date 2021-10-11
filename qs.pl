qs(nil, nil).
qs(next(H,T), S) :- part(H, T, Left, Right), qs(Left, Ls), qs(Right, Bs), mergeLists(Ls, next(H, Bs), S).

part(X, nil, nil, nil).
part(X, next(H,T), next(H, Ls), Rs) :- H =< X, part(X, T, Ls, Rs).
part(X, next(H,T), Ls, next(H, Rs)) :- H > X, part(X, T, Ls, Rs).

mergeLists(nil, R, R).
mergeLists(next(H1, T1), Bs, next(H1, R)) :- mergeLists(T1, Bs, R).
