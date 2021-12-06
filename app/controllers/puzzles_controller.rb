class PuzzlesController < ApplicationController
  def index
    @puzzle = Puzzle6.new
  end
end
