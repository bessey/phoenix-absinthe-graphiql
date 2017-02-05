defmodule AbsintheReact.ItemType do
  use Absinthe.Schema

  @desc "An item"
  object :item do
    field :id, :id
    field :name, :string
  end

end
