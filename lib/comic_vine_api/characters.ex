defmodule ComicVineApi.Characters do
  def all(params \\ [], options \\ []) do
    ComicVineApi.request("characters", params, options)
  end

  def get(id, options \\ []) do
    uri = "character/4005-" <> id
    ComicVineApi.request(uri, [], options)
  end
end