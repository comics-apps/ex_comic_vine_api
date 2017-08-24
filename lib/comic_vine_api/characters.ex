defmodule ComicVineApi.Characters do
  def all(params \\ [], options \\ []) do
    ComicVineApi.request("characters", params, options)
  end

  def get(id, params \\ [], options \\ []) do
    uri = "character/4005-" <> id
    ComicVineApi.request(uri, params, options)
  end
end