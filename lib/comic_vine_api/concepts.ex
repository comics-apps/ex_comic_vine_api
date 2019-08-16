defmodule ComicVineApi.Concepts do
  def all(params \\ [], options \\ []) do
    ComicVineApi.request("concepts", params, options)
  end

  def get(id, params \\ [], options \\ []) do
    uri = "concept/4015-" <> id
    ComicVineApi.request(uri, params, options)
  end
end
