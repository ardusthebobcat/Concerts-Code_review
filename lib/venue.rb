class Venue < ActiveRecord::Base
  has_and_belongs_to_many(:bands)
  validates(:name, {:presence => true})
  before_save(:titlecase)
  before_save(:state_case)

  define_method(:titlecase) do
    self.name = name().titleize()
  end

  define_method(:state_case) do
    self.state = state().upcase()
  end
end
