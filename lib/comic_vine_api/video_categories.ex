defmodule ComicVineApi.VideoCategories do
  def all(params \\ [], options \\ []) do
    ComicVineApi.request("video_categories", params, options)
  end

  def get(id, options \\ []) do
    uri = "video_category/2320-" <> id
    ComicVineApi.request(uri, [], options)
  end
end