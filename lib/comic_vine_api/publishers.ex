defmodule ComicVineApi.Publishers do
  def all(params \\ [], options \\ []) do
    ComicVineApi.request("publishers", params, options)
  end

  def get(id, params \\ [], options \\ []) do
    uri = "publisher/4010-" <> id
    ComicVineApi.request(uri, params, options)
  end
end
