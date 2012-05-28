class Code < ActiveRecord::Base
  attr_accessible :content, :description, :title

	validates_presence_of :content, :description, :title
	validates_uniqueness_of :title

	before_validation  :clean_values

	private 
	def clean_values
		attribute_names.each{|val| val.strip! unless val.nil? }
	end
end