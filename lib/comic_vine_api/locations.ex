defmodule ComicVineApi.Locations do
  def all(params \\ [], options \\ []) do
    ComicVineApi.request("locations", params, options)
  end

  def get(id, options \\ []) do
    uri = "location/4020-" <> id
    ComicVineApi.request(uri, [], options)
  end
end