class AddRoiToSchedules < ActiveRecord::Migration[5.1]
  def change
    add_column :schedules, :ROI, :string
  end
end
