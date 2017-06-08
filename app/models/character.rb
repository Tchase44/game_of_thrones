class Character < ApplicationRecord
	belongs_to :house
	belongs_to :user, optional: true
end
