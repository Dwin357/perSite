class Post < ActiveRecord::Base

	belongs_to :author, class_name: :"User"

	validates :author, presence: true
end
