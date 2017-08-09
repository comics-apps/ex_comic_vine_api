defmodule ComicVineApi.Volumes do
  def all(params \\ [], options \\ []) do
    ComicVineApi.request("volumes", params, options)
  end

  def get(id, options \\ []) do
    uri = "volume/4050-" <> id
    ComicVineApi.request(uri, [], options)
  end
end