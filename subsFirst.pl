memberTree(E, tree(E, Left, Mid, Right)).

subFirst(X, Y, void, void).
subFirst(X, Y, tree(X, L1, M1, R1), tree(Y, L1, M1, R1)).
subFirst(X, Y, tree(X1, L1, M1, R1), tree(X1, L2, M1, R1)) :- \+ memberTree(X, tree(X1, L1, M1, R1)), subFirst(X, Y, L1, L2).
subFirst(X, Y, tree(X1, L1, M1, R1), tree(X1, L1, M2, R1)) :- \+ memberTree(X, tree(X1, L1, M1, R1)), subFirst(X, Y, M1, M2).
subFirst(X, Y, tree(X1, L1, M1, R1), tree(X1, L1, M1, R3)) :- \+ memberTree(X, tree(X1, L1, M1, R1)), subFirst(X, Y, R1, R2).
