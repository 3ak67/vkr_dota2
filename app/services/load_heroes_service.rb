class LoadHeroesService
  FILE_PATH = 'public/115_heroes.csv'

  attr_accessor :file, :csv

  def initialize
    load_file
    parse
  end

  def load_file
    @file = File.open(FILE_PATH)
    @csv = CSV.parse(@file, headers: true)
  end

  def parse
    @csv.each do |h|
      Hero.find_or_create_by(hero_id: h[0].to_i, name: h[1], localized_name: h[2], primary_attr: h[3], attack_type: h[4], roles: h[5], legs: h[6].to_i)
    end
  end
end