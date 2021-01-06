defmodule TextClient.Summary do
  def display(game = %{game_service: state, tally: tally}) do
    IO.puts([
      "\n",
      "Word so far: #{Enum.join(tally.letters, " ")}\n",
      "Guesses left: #{tally.turns_left}\n",
      "Letters guessed: #{MapSet.to_list(state.used) |> Enum.map( fn x -> "#{x} " end)}\n"
    ])

    game
  end

end
