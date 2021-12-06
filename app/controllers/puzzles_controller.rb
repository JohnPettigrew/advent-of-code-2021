class PuzzlesController < ApplicationController
  def index
    @puzzle = Puzzle5.new
  end
end
