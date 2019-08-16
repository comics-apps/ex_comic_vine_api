defmodule ComicVineApi.Locations do
  def all(params \\ [], options \\ []) do
    ComicVineApi.request("locations", params, options)
  end

  def get(id, params \\ [], options \\ []) do
    uri = "location/4020-" <> id
    ComicVineApi.request(uri, params, options)
  end
end
