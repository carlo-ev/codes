class Code < ActiveRecord::Base
  attr_accessible :content, :description, :title
	
	validates_presence_of :content, :description, :title
	validates_uniqueness_of :title

	before_validation  :clean_values

	belongs_to :user
	has_many :comments

	private 
	def clean_values
		self.description.strip!
		self.title.strip!
	end
end
