class CreateGoals < ActiveRecord::Migration
  def change
    create_table :goals do |t|
      t.references :user

      t.string :goal_weight
      t.timestamps
    end
  end
end
