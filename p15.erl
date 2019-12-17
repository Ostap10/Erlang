%%%-------------------------------------------------------------------
%%% @author macbook
%%% @copyright (C) 2019, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 17. дек. 2019 14:23
%%%-------------------------------------------------------------------
-module(p15).
-author("macbook").

%% API
-export([
  replicate/2
]).


replicate(List, Count) ->
  replicate(List, [], Count).


replicate([], NewList, _) ->
  lists:reverse(NewList);
replicate([H|T], NewList, Count) ->
    BufList = add(H,NewList,Count),
    replicate(T, BufList, Count).




add(_, NewList, 0) ->
  NewList;
add(Element,NewList,Count) ->
  add(Element,[Element|NewList],Count-1).