class Comment < ActiveRecord::Base
	
  attr_accessible :content, :code_id, :created_at
  validates_presence_of :content
	belongs_to :code, :user
end
