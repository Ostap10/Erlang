%%%-------------------------------------------------------------------
%%% @author macbook
%%% @copyright (C) 2019, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 10. дек. 2019 16:59
%%%-------------------------------------------------------------------
-module(p02).
-author("macbook").

%% API
-export([
 duplicate/1
]).





duplicate(List) ->
  duplicate(List, []).

duplicate([],NewList) ->
  lists:reverse(NewList);
duplicate([H | T], NewList) ->
  duplicate(T,[H|[H | NewList]]).
