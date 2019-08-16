defmodule ComicVineApi.ChatsTest do
  use ExUnit.Case

  test ".all" do
    response = ComicVineApi.Chats.all(limit: 1)
    assert 1 == response["status_code"]
    assert "OK" == response["error"]
    assert [] == response["results"]
  end
end
