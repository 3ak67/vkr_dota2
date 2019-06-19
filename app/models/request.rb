class Request < ApplicationRecord
  attr_accessor :matrix, :available_heroes

  validates :r1, :r2, :r3, :r4, :d1, :d2, :d3, :d4, presence: true

  def available_heroes
    @available_heroes ||= AvailableHeroesService.new(hero_pick_ids).available_heroes
  end

  def build_matrix
    @matrix = GameMatrix.new(available_heroes, hero_pick_ids)
  end

  def hero_pick_ids
    [r1, r2, r3, r4, d1, d2, d3, d4].map { |i| i.to_i }
  end
end


