-module(concat).
-export([concat/2,concatinate/1]).
concat([],[])->[];
concat([],L)->L;
concat([H|T],L)->[H|concat(T,L)].
concatinate([])->[];
concatinate([X|T])->concat(X,concatinate(T)).

