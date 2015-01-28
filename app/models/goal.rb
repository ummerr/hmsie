class Goal < ActiveRecord::Base
  belongs_to :user

  def goal_resting_expenditure
    if self.user.gender.downcase == 'male' || self.user.gender.downcase == 'm'
      (10 * self.goal_weight.to_i) + (6.25 * self.user.expenditures.last.height.to_i) - (5 * self.user.expenditures.last.age.to_i) + 5
    else
      (10 * self.goal_weight.to_i) + (6.25 * self.user.expenditures.last.height.to_i) - (5 * self.user.expenditures.last.age.to_i) - 161
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

