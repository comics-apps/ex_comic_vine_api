defmodule ComicVineApi.Powers do
  def all(params \\ [], options \\ []) do
    ComicVineApi.request("powers", params, options)
  end

  def get(id, options \\ []) do
    uri = "power/4035-" <> id
    ComicVineApi.request(uri, [], options)
  end
end