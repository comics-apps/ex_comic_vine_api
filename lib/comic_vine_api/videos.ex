defmodule ComicVineApi.Videos do
  def all(params \\ [], options \\ []) do
    ComicVineApi.request("videos", params, options)
  end

  def get(id, params \\ [], options \\ []) do
    uri = "video/2300-" <> id
    ComicVineApi.request(uri, params, options)
  end
end
