defmodule ComicVineApi.Origins do
  def all(params \\ [], options \\ []) do
    ComicVineApi.request("origins", params, options)
  end

  def get(id, params \\ [], options \\ []) do
    uri = "origin/4030-" <> id
    ComicVineApi.request(uri, params, options)
  end
end
