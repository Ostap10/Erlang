%%%-------------------------------------------------------------------
%%% @author macbook
%%% @copyright (C) 2019, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 13. дек. 2019 13:57
%%%-------------------------------------------------------------------
-module(p06).
-author("macbook").

%% API
-export([
  is_palindrom/1
]).


is_palindrom(List) ->
  List == lists:reverse(List).


