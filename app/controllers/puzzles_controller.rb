class PuzzlesController < ApplicationController
  def index
    @puzzle = Puzzle2.new
  end
end
