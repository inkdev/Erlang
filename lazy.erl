-module(lazy).
-export([lazy_map/2,lazy_foldl/3]).
lazy_map(_,[])->
	fun()->
	[] end.
lazy_foldl(Func,Acc,[H|T])->
	fun()->
		[Func(H,Acc)|lazy_foldl(Func,Func(H,Acc),T)]
	end;
lazy_foldl(_,Acc,[])->
	fun()->
		Acc
	end.

