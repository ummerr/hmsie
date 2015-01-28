class Expenditure < ActiveRecord::Base
  before_save :calculate_resting_expenditure
  belongs_to :user

  private

  def calculate_resting_expenditure
    if self.gender.downcase == 'male' || self.gender.downcase = 'm'
      self.resting_expenditure = (10 * self.weight.to_i) + (6.25 * self.height.to_i) - (5 * self.age.to_i) + 5
    else
      self.resting_expenditure = (10 * self.weight.to_i) + (6.25 * self.height.to_i) - (5 * self.age.to_i) - 161
    end
  end

end
