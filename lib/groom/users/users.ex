defmodule Groom.Users do
  @moduledoc """
    User Data Context.
  """

  alias Groom.{Repo, User}

  def add(name, age) do
    %User{}
    |> User.changeset(%{name: name, age: age})
    |> Repo.insert()
  end

  def find(id) when is_integer(id) do
    Repo.get(User, id)
  end

  def find(id) when is_binary(id) do
    with {int_id, _} <- Integer.parse(id) do
      find(int_id)
    else
      :error -> {:error, "id not an integer"}
    end
  end

  def list() do
    Repo.all(User)
  end
end