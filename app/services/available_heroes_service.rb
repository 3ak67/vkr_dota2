class AvailableHeroesService
  attr_accessor :picked_heroes, :available_heroes, :heroes

  def initialize(picked_heroes)
    @picked_heroes = picked_heroes
    @heroes_ids = Hero.all.pluck(:hero_id)
    calculate_available_heroes
  end

  def calculate_available_heroes
    @available_heroes = @heroes_ids.delete_if { |h| @picked_heroes.include?(h) }
  end
end