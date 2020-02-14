class Event < ApplicationRecord
	has_many :userevent
	has_many :users, :through => :userevent
end
