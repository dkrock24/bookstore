class Category < ApplicationRecord
	has_many :book

	validates :name, presence: true
end
