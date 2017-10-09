-module(create).
-export([create_r/1,create/1]).
create_r(0)->[];
create_r(N) ->[N|create_r(N-1)].
create(0)->[];
create(N)->create(N-1)++[N].



