class House < ApplicationRecord
	belongs_to :user, optional: true
	has_many :characters, dependent: :destroy
end
