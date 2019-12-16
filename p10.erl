%%%-------------------------------------------------------------------
%%% @author macbook
%%% @copyright (C) 2019, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 16. дек. 2019 14:31
%%%-------------------------------------------------------------------
-module(p10).
-author("macbook").

%% API
-export([
  decode_modified/1
]).

decode_modified(List) ->
  decode_modified(List, [] ).

decode_modified([],NewList) ->
  lists:reverse(NewList);
decode_modified([H|T],NewList) ->
  case H of
    {Count,Element}-> List1 =decode(Count,Element,NewList),
                      decode_modified(T,List1);
    _ -> decode_modified(T,[H|NewList])
end.

decode(Count,Element,NewList) ->
  case Count of
     0 -> NewList;
     _ ->decode(Count-1, Element, [Element|NewList])
  end.