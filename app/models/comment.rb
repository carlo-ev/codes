class Comment < ActiveRecord::Base
	belongs_to :code
  attr_accessible :content, :code_id, :created_at
  validates_presence_of :content
end
