defmodule GroomWeb.Schema.AccountTypes do
  @moduledoc """
    Represents a user account.
  """
  use Absinthe.Schema.Notation

  @desc "User account"
  object :user do
    field(:id, :id)
    field(:name, :string)
    field(:age, :integer)
  end
end
