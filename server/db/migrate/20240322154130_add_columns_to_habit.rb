class AddColumnsToHabit < ActiveRecord::Migration[7.1]
  def change
    add_reference :habits, :user, null: false, foreign_key: true
    add_column :habits, :start_date, :date
    add_column :habits, :end_date, :date
  end
end
