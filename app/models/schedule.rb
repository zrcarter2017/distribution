class Schedule < ApplicationRecord
	require 'csv'

	def self.import(file)

		CSV.foreach(file.path, headers:true) do |row|

			Schedule.create! row.to_hash
		end
	end

  after_save :calculate_DistSum
  after_save :calculate_ROI
private
  def calculate_DistSum
    update_column(:DistSum, (self.January + self.February + self.March + self.April + self.May + self.June + self.July + self.August + self.September + self.October + self.November + self.December).round(2))
  end

  def calculate_ROI
  	update_column(:ROI, ((self.DistSum/self.equity)*100).round(2))
  end
end
