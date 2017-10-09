-module(print).
-export([print/1,print_rem/1]).
print(1)->io:format("Number:~p~n",[1]);
print(N) when N>1 -> print(N-1),io:format("Number:~p~n",[N]).
print_rem(1)->1;
print_rem(N) when N rem 2==0->print_rem(N-1),io:format("Number:~p~n",[N-1]);
print_rem(N)->print_rem(N-1).


