# frozen_string_literal: true

class Puzzle6
  attr_reader

  def initialize
    @data = [3,1,5,4,4,4,5,3,4,4,1,4,2,3,1,3,3,2,3,2,5,1,1,4,4,3,2,4,2,4,1,5,3,3,2,2,2,5,5,1,3,4,5,1,5,5,1,1,1,4,3,2,3,3,3,4,4,4,5,5,1,3,3,5,4,5,5,5,1,1,2,4,3,4,5,4,5,2,2,3,5,2,1,2,4,3,5,1,3,1,4,4,1,3,2,3,2,4,5,2,4,1,4,3,1,3,1,5,1,3,5,4,3,1,5,3,3,5,4,2,3,4,1,2,1,1,4,4,4,3,1,1,1,1,1,4,2,5,1,1,2,1,5,3,4,1,5,4,1,3,3,1,4,4,5,3,1,1,3,3,3,1,1,5,4,2,5,1,1,5,5,1,4,2,2,5,3,1,1,3,3,5,3,3,2,4,3,2,5,2,5,4,5,4,3,2,4,3,5,1,2,2,4,3,1,5,5,1,3,1,3,2,2,4,5,4,2,3,2,3,4,1,3,4,2,5,4,4,2,2,1,4,1,5,1,5,4,3,3,3,3,3,5,2,1,5,5,3,5,2,1,1,4,2,2,5,1,4,3,3,4,4,2,3,2,1,3,1,5,2,1,5,1,3,1,4,2,4,5,1,4,5,5,3,5,1,5,4,1,3,4,1,1,4,5,5,2,1,3,3]
    # @data = [3,4,3,1,2]
  end

  def breed
    80.times do
      _new_fish = 0
      @data.map! do |_fish|
        if _fish.zero?
          _new_fish += 1
          6
        else
          _fish - 1
        end
      end
      _new_fish.times do
        @data.push(8)
      end
    end
  end

  def number_of_fish
    @data.count
  end

  def calculated_breeding(_iterations)
    @population = [0,0,0,0,0,0,0,0,0] # positioned from number at day 0 to number at day 8
    @data.each do |_fish|
      @population[_fish] += 1
    end
    _iterations.times do
      @population[8] = age_population_and_breed
    end
    @population.reduce(&:+)
  end

  private

    def age_population_and_breed
      _breeders = 0
      @population.each_with_index do |_age_group, _i|
        if _i.zero?
          _breeders = _age_group
        else
          @population[_i - 1] = _age_group
        end
      end
      @population[6] += _breeders
      _breeders
    end
end
