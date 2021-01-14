defmodule SocketGallowsWeb.HangmanChannel do
  require Logger
  use Phoenix.Channel


  def join( "hangman:game", _, socket ) do
    game = Hangman.new_game()
    socket = assign(socket, :game, game)
    { :ok, socket }
  end




  def handle_in("tally", _, socket ) do
    game = socket.assigns.game
    tally = Hangman.tally(game)
    push(socket, "tally", tally)
    { :noreply, socket }
  end

  def handle_in(_, _, _socket ) do
    Logger.error("Invalid message sent")
  end
end