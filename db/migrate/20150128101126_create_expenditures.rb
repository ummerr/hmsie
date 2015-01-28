class CreateExpenditures < ActiveRecord::Migration
  def change
    create_table :expenditures do |t|
      t.references :user

      t.string :age
      t.string :weight
      t.string :height
      t.string :gender

      t.string :resting_expenditure

      t.timestamps
    end
  end
end
