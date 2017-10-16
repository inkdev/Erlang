-module(changedna).
-export([dna/1,changedna/2]).
dna(X)->changedna(X,[]).
changedna([],Acc)->Acc;
changedna([H|T],Acc)->
	case H of
		g->changedna(T,Acc++[c]);
		c->changedna(T,Acc++[g]);
		t->changedna(T,Acc++[a]);
		a->changedna(T,Acc++[u])
	end.



