-module(oauth_http).

-export([get/1, post/2]).


get(URL) ->
  http:request(URL).

post(URL, {MimeType, Data}) ->
  http:request(post, {URL, [], MimeType, Data}, [], []);
post(URL, Data) ->
  post(URL, {"application/x-www-form-urlencoded", Data}).