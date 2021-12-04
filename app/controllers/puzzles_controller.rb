class PuzzlesController < ApplicationController
  def index
    @puzzle = Puzzle4.new
  end
end
