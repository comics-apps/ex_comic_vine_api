defmodule ComicVineApi.IssuesTest do
  use ExUnit.Case

  test ".all" do
    response = ComicVineApi.Issues.all(limit: 1)
    assert 1 == response["status_code"]
    assert "OK" == response["error"]
  end

  test ".get" do
    response = ComicVineApi.Issues.get("6")
    assert 1 == response["status_code"]
    assert "OK" == response["error"]
  end
end