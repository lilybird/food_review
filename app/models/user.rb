class User < ActiveRecord::Base
	has_many :reviews

	validates :name, :email, presence: true
	validates :name, :email, uniqueness: true
end
