class Review < ActiveRecord::Base
	belongs_to :item
	belongs_to :user

	validates :contents, :item_id, :user_id, presence: true
	validates :contents, uniqueness: true
end
