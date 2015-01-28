class Goal < ActiveRecord::Base
  belongs_to :user

  def height
    (6.25 * self.user.expenditures.last.height.to_i)
  end

  def weight
    (10 * self.goal_weight.to_i)
  end

  def age
    (5 * self.user.expenditures.last.age.to_i)
  end

  def goal_resting_expenditure
    if self.user.gender.downcase == 'male' || self.user.gender.downcase == 'm'
      self.weight + self.height - self.age + 5
    else
      self.weight + self.height - self.age - 161
    end
  end

  def sedentary
    (self.goal_resting_expenditure * 1.2).to_i
  end

  def light_active
    (self.goal_resting_expenditure * 1.375).to_i
  end

  def moderate_active
    (self.goal_resting_expenditure * 1.55).to_i
  end

  def very_active
    (self.goal_resting_expenditure * 1.725).to_i
  end

  def extra_active
    (self.goal_resting_expenditure * 1.9).to_i
  end

end

