class Ticket < ActiveRecord::Base
	belongs_to :user
  attr_accessible :name, :age, :navy, :date, :folio , :user_id
end
