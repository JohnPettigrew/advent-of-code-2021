class PuzzlesController < ApplicationController
  def index
    @puzzle_1 = Puzzle1.new
  end
end
