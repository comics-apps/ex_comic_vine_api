defmodule ComicVineApi.StoryArcsTest do
  use ExUnit.Case

  test ".all" do
    response = ComicVineApi.StoryArcs.all(limit: 1)
    assert 1 == response["status_code"]
    assert "OK" == response["error"]
  end

  test ".get" do
    response = ComicVineApi.StoryArcs.get("27758")
    assert 1 == response["status_code"]
    assert "OK" == response["error"]
  end
end