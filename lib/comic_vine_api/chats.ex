defmodule ComicVineApi.Chats do
  def all(params \\ [], options \\ []) do
    ComicVineApi.request("chats", params, options)
  end

  def get(id, params \\ [], options \\ []) do
    uri = "chats/2450-" <> id
    ComicVineApi.request(uri, params, options)
  end
end