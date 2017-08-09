defmodule ComicVineApi.VideoTypes do
  def all(params \\ [], options \\ []) do
    ComicVineApi.request("video_types", params, options)
  end

  def get(id, options \\ []) do
    uri = "video_type/2320-" <> id
    ComicVineApi.request(uri, [], options)
  end
end