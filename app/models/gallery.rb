class Gallery < ActiveRecord::Base

	has_attached_file :photo

	attr_accessible :title, :description, :photo
end
