defmodule ComicVineApi.OriginsTest do
  use ExUnit.Case

  test ".all" do
    response = ComicVineApi.Origins.all(limit: 1)
    assert 1 == response["status_code"]
    assert "OK" == response["error"]
  end

  test ".get" do
    response = ComicVineApi.Origins.get("1")
    assert 1 == response["status_code"]
    assert "OK" == response["error"]
  end
end