-module(reverse).
-export([reverse/1]).
reverse(List) -> reverse(List, []).
reverse([H|T], Acc) -> reverse(T, [H|Acc]);
reverse([], Acc) -> Acc.
