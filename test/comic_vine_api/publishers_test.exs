defmodule ComicVineApi.PublishersTest do
  use ExUnit.Case

  test ".all" do
    response = ComicVineApi.Publishers.all(limit: 1)
    assert 1 == response["status_code"]
    assert "OK" == response["error"]
  end

  test ".get" do
    response = ComicVineApi.Publishers.get("4")
    assert 1 == response["status_code"]
    assert "OK" == response["error"]
  end
end