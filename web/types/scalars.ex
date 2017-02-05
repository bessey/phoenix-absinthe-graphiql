defmodule AbsintheReact.Scalars do
  use Absinthe.Schema.Notation
  use Timex

  scalar :time, description: "ISOz time" do
    parse &Timex.parse(&1.value, "{ISO:Extended}")
    serialize &Timex.format!(&1, "{ISO:Extended}")
  end

end
