%%%-------------------------------------------------------------------
%%% @author macbook
%%% @copyright (C) 2019, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 11. дек. 2019 18:36
%%%-------------------------------------------------------------------
-module(p04).
-author("macbook").

%% API
-export([
  reverse/1
]).


reverse([]) ->
  [];
reverse(List) ->
 reverse(List, []).

reverse([], Acc)   ->
  Acc;
reverse([H|T],Acc) ->
  reverse(T,[H|Acc]).