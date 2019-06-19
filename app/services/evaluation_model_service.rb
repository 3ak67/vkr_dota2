class EvaluationModelService
  attr_accessor :model

  def initialize(x, y)
    @model.fit(x, y)
  end
end