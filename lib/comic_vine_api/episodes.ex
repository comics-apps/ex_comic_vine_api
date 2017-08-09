defmodule ComicVineApi.Episodes do
  def all(params \\ [], options \\ []) do
    ComicVineApi.request("episodes", params, options)
  end

  def get(id, options \\ []) do
    uri = "episode/4070-" <> id
    ComicVineApi.request(uri, [], options)
  end
end