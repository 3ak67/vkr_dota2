class GameMatrix
  CRITERIA = 0.5

  attr_accessor :available_heroes, :matrix, :picked_heroes, :best_pick

  def initialize(available_heroes, picked_heroes)
    @heroes = Hero.all
    @available_heroes = available_heroes
    @picked_heroes = picked_heroes
    @matrix = []
    @best_pick = []
    build_strategy_matrix
    best_8
    @matrix = Numo::DFloat.asarray(@matrix)
  end

  def best_8
    @best_pick = @best_pick.max(8) { |a, b| a['score'].to_f <=> b['score'].to_f }
  end

  def build_strategy_matrix
    @available_heroes.each do |av_h|
      row = build_row(av_h)
      @matrix << row
    end
    @matrix
  end

  def build_row(current_hero)
    row = []
    radiant = @picked_heroes[0..3] << current_hero
    @available_heroes.each do |hero|
      dire = @picked_heroes[4..7] << hero
      if hero == current_hero
        row << 0
      else
        row << prediction(build_x_row(radiant, dire))
      end
    end
    @best_pick << { score: calc_row_by_criteria(row), hero_id: current_hero }
    row
  end

  def build_x_row(radiant, dire)
    row = []
    @heroes.each do |hero|
      if radiant.include?(hero.hero_id)
        row << 1
      elsif dire.include?(hero.hero_id)
        row << -1
      else
        row << 0
      end
    end
    Numo::DFloat.asarray(row)
  end

  def prediction(x)
    LogReg.instance.predict(x)
  end

  def calc_row_by_criteria(row)
    r = Array.new(row)
    temp = r.delete_if { |r| r < CRITERIA }
    temp.count
  end
end