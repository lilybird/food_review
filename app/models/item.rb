class Item < ActiveRecord::Base
	belongs_to :restaurant

	has_many :reviews

	validates :name, :restaurant_id, presence: true
	validates :name, uniqueness: true
end
