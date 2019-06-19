class LoadDatasetService
  X_PATH = 'public/dota_x.csv'.freeze
  Y_PATH = 'public/dota_y.csv'.freeze

  attr_accessor :csv_y, :csv_x

  def initialize
    load_csv
    convert_to_integer
    convert_to_numo
  end

  def load_csv
    csv_x_text = File.open(X_PATH)
    csv_y_text = File.open(Y_PATH)
    @csv_x = CSV.parse(csv_x_text, headers: false)
    @csv_y = CSV.parse(csv_y_text, headers: false)
  end

  def convert_to_integer
    @csv_x.map! { |c| c.map! { |d| d.to_i }}
    @csv_y.map! { |c| c.map! { |d| d.to_i }}
  end

  def convert_to_numo
    @csv_x = Numo::DFloat.asarray(@csv_x)
    @csv_y = Numo::Int32.asarray(@csv_y.flatten)
  end
end