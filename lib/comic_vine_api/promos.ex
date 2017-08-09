defmodule ComicVineApi.Promos do
  def all(params \\ [], options \\ []) do
    ComicVineApi.request("promos", params, options)
  end

  def get(id, options \\ []) do
    uri = "promo/1700-" <> id
    ComicVineApi.request(uri, [], options)
  end
end