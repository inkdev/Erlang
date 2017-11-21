-module(dbnew).
-export([new/0,write/3,read/2,delete/2,destroy/1,match/2]).
new()->
	[].
destroy(_Db)->ok.

write(Key,Element,[])->
	[{Key,Element}];
write(Key,Element,[{Key,_}|Db])->
	[{Key,Element}|Db];
write(Key, Element, [Current | Db]) ->
    [Current | write(Key, Element, Db)].
read(Key, [{Key, Element}|_Db]) -> 
    {ok, Element};
read(Key, [_Tuple|Db]) ->
    read(Key, Db);
read(_Key, []) ->
    {error, instance}.
delete(Key, [{Key, _}|Db]) -> 
    Db;
delete(Key, [Tuple|Db]) ->
    [Tuple|delete(Key, Db)];
delete(_, []) ->
    [].
match(Element,[{Key,Element}|Db])->
	[Key|match(Element,Db)];
match(Element,[_Tuple|Db])->
	match(Element,Db);
match(_Key,[])->
	[].

    

