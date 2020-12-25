defmodule TextClient.Interact do

  alias TextClient.State
  alias Hangman.Game
  def start() do
    Hangman.new_game()
    |> setup_state()
    |> IO.inspect()
  end

  defp setup_state(game) do
    %State{
      game_service: game,
      tally: Game.tally(game),

    }
  end
  def play(state) do
    play(state)
  end

end
