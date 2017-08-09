defmodule ComicVineApi.Concepts do
  def all(params \\ [], options \\ []) do
    ComicVineApi.request("concepts", params, options)
  end

  def get(id, options \\ []) do
    uri = "concept/4015-" <> id
    ComicVineApi.request(uri, [], options)
  end
end