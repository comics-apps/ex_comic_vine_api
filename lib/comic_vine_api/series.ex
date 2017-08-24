defmodule ComicVineApi.Series do
  def all(params \\ [], options \\ []) do
    ComicVineApi.request("series_list", params, options)
  end

  def get(id, params \\ [], options \\ []) do
    uri = "series/4075-" <> id
    ComicVineApi.request(uri, params, options)
  end
end