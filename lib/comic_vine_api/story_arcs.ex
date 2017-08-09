defmodule ComicVineApi.StoryArcs do
  def all(params \\ [], options \\ []) do
    ComicVineApi.request("story_arcs", params, options)
  end

  def get(id, options \\ []) do
    uri = "story_arc/4045-" <> id
    ComicVineApi.request(uri, [], options)
  end
end