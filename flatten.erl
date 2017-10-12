-module(flatten).
-export([concat/2,concatinate/1,flatten/1]).
concat([],[])->[];
concat([],L)->L;
concat([H|T],L)->[H|concat(T,L)].
concatinate([])->[];
concatinate([X|T])->concat(X,concatinate(T)).
flatten([])->[];
flatten([H|Tail]) when is_list(H)->concat(flatten(H),flatten(Tail));
flatten([H|Tail])->[H|flatten(Tail)].

 

