class Expenditure < ActiveRecord::Base
  before_save :calculate_resting_expenditure, :calc_weight, :calc_height, :calc_height
  belongs_to :user

  def sedentary
    (self.resting_expenditure.to_i * 1.2).to_i
  end

  def light_active
    (self.resting_expenditure.to_i * 1.375).to_i
  end

  def moderate_active
    (self.resting_expenditure.to_i * 1.55).to_i
  end

  def very_active
    (self.resting_expenditure.to_i * 1.725).to_i
  end

  def extra_active
    (self.resting_expenditure.to_i * 1.9).to_i
  end

  def calc_weight
    (10 * self.weight.to_i)
  end

  def calc_height
    (6.25 * self.height.to_i)
  end

  def calc_age
    (5 * self.age.to_i)
  end

  private

  def calculate_resting_expenditure
    if self.gender.downcase == 'male' || self.gender.downcase == 'm'
      self.resting_expenditure =  self.calc_weight + self.calc_height - self.calc_age + 5
    else
      self.resting_expenditure = self.calc_weight + self.calc_height - self.calc_age - 161
    end
  end

end
