-module(filter).
-export([filter/2]).
filter([],_N)->[];
filter([H|T],N) when H=<N->[H|filter(T,N)];
filter([_|T],N)->filter(T,N).

