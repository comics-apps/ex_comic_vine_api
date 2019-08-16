defmodule ComicVineApi.People do
  def all(params \\ [], options \\ []) do
    ComicVineApi.request("people", params, options)
  end

  def get(id, params \\ [], options \\ []) do
    uri = "person/4040-" <> id
    ComicVineApi.request(uri, params, options)
  end
end
