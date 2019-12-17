%%%-------------------------------------------------------------------
%%% @author macbook
%%% @copyright (C) 2019, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 14. дек. 2019 13:19
%%%-------------------------------------------------------------------
-module(p09).
-author("macbook").

%% API
-export([
  encode_modify/1
]).


encode_modify(List) ->
  [ H | T ] = List,
  encode_modify(T, [H], 1).

encode_modify([], NewList, 1) ->
  lists:reverse(NewList);
encode_modify([], [NewH|NewT], Count) ->
  lists:reverse([{Count, NewH}|NewT]);
encode_modify([H|T], NewList, Count) ->
  [NewH|NewT]=NewList,
  case H of
      NewH ->encode_modify(T, NewList, Count+1);
       _H -> case Count of
              1 -> encode_modify(T, [H | NewList], 1);
              _Count ->encode_modify(T,[H|[{Count, NewH}|NewT]], 1)
            end
end.

