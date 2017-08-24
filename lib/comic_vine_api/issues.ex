defmodule ComicVineApi.Issues do
  def all(params \\ [], options \\ []) do
    ComicVineApi.request("issues", params, options)
  end

  def get(id, params \\ [], options \\ []) do
    uri = "issue/4000-" <> id
    ComicVineApi.request(uri, params, options)
  end
end