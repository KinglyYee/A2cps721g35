/*
----------------- CPS 721 Assignment 2 ------------------
Zhi Long Peng (zpeng) | student #: 500901658 | section 6
Kingly Ye (k4yee) | student #: 500910530 | section 7
*/

memberTree(E, tree(E, Left, Mid, Right)).
memberTree(E, tree(X, Left, Mid, Right)) :- memberTree(E, Left).
memberTree(E, tree(X, Left, Mid, Right)) :- memberTree(E, Mid).
memberTree(E, tree(X, Left, Mid, Right)) :- memberTree(E, Right).

subsFirst(X, Y, void, void).
subsFirst(X, Y, tree(X, L1, M1, R1), tree(Y, L1, M1, R1)).
subsFirst(X, Y, tree(X1, L1, M1, R1), tree(X1, L2, M1, R1)) :- not X = X1, memberTree(X, L1), subsFirst(X, Y, L1, L2).
subsFirst(X, Y, tree(X1, L1, M1, R1), tree(X1, L1, M2, R1)) :- not X = X1, memberTree(X, M1), subsFirst(X, Y, M1, M2).
subsFirst(X, Y, tree(X1, L1, M1, R1), tree(X1, L1, M1, R2)) :- not X = X1, memberTree(X, R1), subsFirst(X, Y, R1, R2).
