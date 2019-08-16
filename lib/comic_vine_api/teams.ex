defmodule ComicVineApi.Teams do
  def all(params \\ [], options \\ []) do
    ComicVineApi.request("teams", params, options)
  end

  def get(id, params \\ [], options \\ []) do
    uri = "team/4060-" <> id
    ComicVineApi.request(uri, params, options)
  end
end
