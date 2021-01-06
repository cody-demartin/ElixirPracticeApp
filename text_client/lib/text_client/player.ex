defmodule TextClient.Player do

  alias TextClient.State


  # won, lost, good guess, bad guess, already used, initializing - cases
  def play(%State{tally: %{ game_state: :won} }) do
    IO.puts "You WON!"
    exit(:normal)
  end
end
