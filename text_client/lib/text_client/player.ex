defmodule TextClient.Player do

  alias TextClient.State


  # won, lost, good guess, bad guess, already used, initializing - cases
  def play(%State{tally: %{ game_state: :won} }) do
    exit_with_message("You won!")
  end

  def play(%State{tally: %{ game_state: :lost} }) do
    exit_with_message("Sorry you lost loser!")
  end

  defp exit_with_message(msg) do
    IO.puts(msg)
    exit(:normal)
  end
end
