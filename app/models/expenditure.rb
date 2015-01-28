class Expenditure < ActiveRecord::Base
  before_save :calculate_resting_expenditure
  belongs_to :user

  def sedentary
    (self.resting_expenditure * 1.2).to_i
  end

  def light_active
    (self.resting_expenditure * 1.375).to_i
  end

  def moderate_active
    (self.resting_expenditure * 1.55).to_i
  end

  def very_active
    (self.resting_expenditure * 1.725).to_i
  end

  def extra_active
    (self.resting_expenditure * 1.9).to_i
  end

  private

  def calculate_resting_expenditure
    if self.gender.downcase == 'male' || self.gender.downcase == 'm'
      self.resting_expenditure = (10 * self.weight.to_i) + (6.25 * self.height.to_i) - (5 * self.age.to_i) + 5
    else
      self.resting_expenditure = (10 * self.weight.to_i) + (6.25 * self.height.to_i) - (5 * self.age.to_i) - 161
    end
  end

end
