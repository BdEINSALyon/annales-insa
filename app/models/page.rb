class Page < ActiveRecord::Base
	belongs_to :document
	validates_presence_of :content
end
