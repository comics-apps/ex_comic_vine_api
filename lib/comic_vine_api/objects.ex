defmodule ComicVineApi.Objects do
  def all(params \\ [], options \\ []) do
    ComicVineApi.request("objects", params, options)
  end

  def get(id, options \\ []) do
    uri = "object/4055-" <> id
    ComicVineApi.request(uri, [], options)
  end
end