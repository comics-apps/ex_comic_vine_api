defmodule ComicVineApi.Episodes do
  def all(params \\ [], options \\ []) do
    ComicVineApi.request("episodes", params, options)
  end

  def get(id, params \\ [], options \\ []) do
    uri = "episode/4070-" <> id
    ComicVineApi.request(uri, params, options)
  end
end