defmodule ComicVineApi.Movies do
  def all(params \\ [], options \\ []) do
    ComicVineApi.request("movies", params, options)
  end

  def get(id, params \\ [], options \\ []) do
    uri = "movie/4025-" <> id
    ComicVineApi.request(uri, params, options)
  end
end