defmodule ComicVineApi.Origins do
  def all(params \\ [], options \\ []) do
    ComicVineApi.request("origins", params, options)
  end

  def get(id, options \\ []) do
    uri = "origins/4030-" <> id
    ComicVineApi.request(uri, [], options)
  end
end