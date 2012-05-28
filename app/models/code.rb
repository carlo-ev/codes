class Code < ActiveRecord::Base
  attr_accessible :content, :description, :title
	has_many :comments
	validates_presence_of :content, :description, :title
	validates_uniqueness_of :title

	before_validation  :clean_values

	private 
	def clean_values
		self.description.strip!
		self.title.strip!
	end
end
