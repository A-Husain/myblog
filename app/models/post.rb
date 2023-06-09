class Post < ApplicationRecord
	belongs_to :user 
	has_many :comments, dependent: :destroy

	def self.ransackable_attributes(auth_object = nil)
    	["content", "created_at", "id", "title", "updated_at", "user_id"]
  	end

  	def self.ransackable_associations(auth_object = nil)
    	["comments", "user"]
  	end
end
