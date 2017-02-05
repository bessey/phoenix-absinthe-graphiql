defmodule AbsintheReact.Types do
  use Absinthe.Schema.Notation

  @desc "An item"
  object :item do
    field :id, :id
    field :name, :string
    field :created_at, :time
  end

end
