%%%-------------------------------------------------------------------
%%% @author macbook
%%% @copyright (C) 2019, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 13. дек. 2019 15:45
%%%-------------------------------------------------------------------
-module(p07).
-author("macbook").

%% API
-export([
    flatten/1
]).

flatten(List) ->
  flatten(List,[]).

flatten([],NewList)->
  lists:reverse(NewList);
flatten([H|T],NewList) ->
  Result=add(H,NewList),
  flatten(T,Result).

add([],NewList) ->
  NewList;
add([H|T], NewList) ->
  case H of
    [] ->add(H,NewList);
    _ -> add(T,[H|NewList])
end;
add(H,NewList) ->
  NewList1=[H|NewList],
  NewList1.



