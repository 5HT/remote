-module(remote).
-behaviour(supervisor).
-behaviour(application).
-compile(export_all).
-export([start/2, stop/1, init/1]).

init([])    -> {ok,{{one_for_one,5,60},[]}}.
stop(_)     -> ok.
start(_,_)  -> supervisor:start_link({local,?MODULE},?MODULE,[]).
main(A)     -> mad:main(A).
