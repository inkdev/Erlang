-module(db).
-export([new/0,write/3,delete/2,read/2,destroy/1,match/2]).
new()->[].
destroy(List) when is_list(List)->ok.
write(Key,Element,Db)->[{Key,Element}|delete(Key,Db)].
delete(_,[])->[];
delete(Key,[{Key,_}|Tail])->Tail;
delete(Key,[Head|Tail])->[Head|delete(Key,Tail)].
read(_,[])->{error,instance};
read(Key,[{Key,Value}|_])->{ok,Value};
read(Key,[_|Tail])->read(Key,Tail).
match(_,[])->[];
match(Element,[{Key,Element}|Tail])->[Key|match(Element, Tail)];
match(Element,[_|Tail])->match(Element,Tail).


