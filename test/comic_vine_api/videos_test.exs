defmodule ComicVineApi.VideosTest do
  use ExUnit.Case

  test ".all" do
    response = ComicVineApi.Videos.all(limit: 1)
    assert 1 == response["status_code"]
    assert "OK" == response["error"]
  end

  test ".get" do
    response = ComicVineApi.Videos.get("3331")
    assert 1 == response["status_code"]
    assert "OK" == response["error"]
  end
end