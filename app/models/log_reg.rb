class LogReg
  include Singleton

  attr_reader :model

  def initialize
    @model = Marshal.load(File.binread('tmp/classifier.dat'))
  end

  def predict(x)
    x = Numo::DFloat.asarray([x])
    @model.predict_proba(x)[1]
  end
end