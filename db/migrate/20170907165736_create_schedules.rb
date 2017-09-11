class CreateSchedules < ActiveRecord::Migration[5.1]
  def change
    create_table :schedules do |t|
      t.string :property
      t.string :proj_id
      t.boolean :distributing
      t.float(2) :January
      t.float(2) :February
      t.float(2) :March
      t.float(2) :April
      t.float(2) :May
      t.float(2) :June
      t.float(2) :July
      t.float(2) :August
      t.float(2) :September
      t.float(2) :October
      t.float(2) :November
      t.float(2) :December


      t.timestamps
    end
  end
end

