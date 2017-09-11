class AddDistSumToSchedules < ActiveRecord::Migration[5.1]
  def change
    add_column :schedules, :DistSum, :float
  end
end

