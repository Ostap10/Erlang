%%%-------------------------------------------------------------------
%%% @author macbook
%%% @copyright (C) 2019, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 11. дек. 2019 18:13
%%%-------------------------------------------------------------------
-module(p03).
-author("macbook").

%% API
-export([
  element_at/2, ttt/2
]).

ttt(_, []) ->
  ok;
ttt(N, _) ->
  ok1.

element_at( _ , [])   ->
  null;
element_at(1, [H|_]) ->
  H;
element_at(N, [_ | T]) when N > 1 ->
  element_at(N-1,T).
