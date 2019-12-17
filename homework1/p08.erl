%%%-------------------------------------------------------------------
%%% @author macbook
%%% @copyright (C) 2019, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 13. дек. 2019 19:30
%%%-------------------------------------------------------------------
-module(p08).
-author("macbook").

%% API
-export([
  compress/1
]).


compress(List) ->
  compress(List,[]).

compress([H|T],NewList) ->
  [NewH|_]=NewList,
  case NewH of
    H -> compress(T, NewList);
    _ ->compress(T,[H | NewList])
  end.
