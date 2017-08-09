defmodule ComicVineApi.ObjectsTest do
  use ExUnit.Case

  test ".all" do
    response = ComicVineApi.Objects.all(limit: 1)
    assert 1 == response["status_code"]
    assert "OK" == response["error"]
  end

  test ".get" do
    response = ComicVineApi.Objects.get("15073")
    assert 1 == response["status_code"]
    assert "OK" == response["error"]
  end
end