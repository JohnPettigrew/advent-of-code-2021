class PuzzlesController < ApplicationController
  def index
    @puzzle = Puzzle3.new
  end
end
