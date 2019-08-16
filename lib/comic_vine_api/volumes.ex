defmodule ComicVineApi.Volumes do
  def all(params \\ [], options \\ []) do
    ComicVineApi.request("volumes", params, options)
  end

  def get(id, params \\ [], options \\ []) do
    uri = "volume/4050-" <> id
    ComicVineApi.request(uri, params, options)
  end
end
