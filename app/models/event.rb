class Event < ActiveRecord::Base
	# belongs_to :admin_user
	has_many :pictures
end
