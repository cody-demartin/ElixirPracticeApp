defmodule TextClient.Player do

  alias TextClient.State


  # won, lost, good guess, bad guess, already used, initializing - cases
  def play(%State{tally: %{ game_state: :won} }) do
    exit_with_message("You won!")
  end

  def play(%State{tally: %{ game_state: :lost} }) do
    exit_with_message("Sorry you lost loser!")
  end

  def play(game = %State{tally: %{ game_state: :good_guess} }) do
    continue_with_message(game, "Good guess!")
  end

  def play(game = %State{tally: %{ game_state: :bad_guess} }) do
    continue_with_message(game, "Sorry bad guess!")
  end

  defp exit_with_message(msg) do
    IO.puts(msg)
    exit(:normal)
  end

  def continue_with_message(game, message) do
    IO.puts(message)
    continue(game)
  end

  def continue(game) do


  end



end
