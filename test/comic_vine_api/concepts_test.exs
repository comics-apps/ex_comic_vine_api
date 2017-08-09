defmodule ComicVineApi.ConceptsTest do
  use ExUnit.Case

  test ".all" do
    response = ComicVineApi.Concepts.all(limit: 1)
    assert 1 == response["status_code"]
    assert "OK" == response["error"]
  end

  test ".get" do
    response = ComicVineApi.Concepts.get("35070")
    assert 1 == response["status_code"]
    assert "OK" == response["error"]
  end
end