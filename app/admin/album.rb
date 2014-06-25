ActiveAdmin.register Album do

	permit_params :name, :location, :date, :day, :year

end