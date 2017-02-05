defmodule AbsintheReact.Schema do

  use Absinthe.Schema
  use Timex

  import_types AbsintheReact.Scalars
  import_types AbsintheReact.Types

  # Example data
  @items %{
    "foo" => %{id: "foo", name: "Foo", created_at: Timex.now},
    "bar" => %{id: "bar", name: "Bar", created_at: Timex.now}
  }

  query do
    field :item, :item do
      arg :id, non_null(:id)
      resolve fn %{id: item_id}, _ ->
        {:ok, @items[item_id]}
      end
    end
  end

end
