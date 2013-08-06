class Restaurant < ActiveRecord::Base
	has_many :items

	validates :name, presence: true
	validates :name, uniqueness: true
end
