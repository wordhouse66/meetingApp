class Client < ApplicationRecord
	has_many :meetings
	belongs_to :user
    searchkick

   
end
