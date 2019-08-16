defmodule ComicVineApi.StoryArcs do
  def all(params \\ [], options \\ []) do
    ComicVineApi.request("story_arcs", params, options)
  end

  def get(id, params \\ [], options \\ []) do
    uri = "story_arc/4045-" <> id
    ComicVineApi.request(uri, params, options)
  end
end
