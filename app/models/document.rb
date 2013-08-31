class Document < ActiveRecord::Base
	belongs_to :category
	has_many :pages

	DEPARTEMENT = ['PC', 'BIO', 'BIM', 'GCU', 'GE', 'GEN', 'GMC', 'GMD', 'GMPP', 'GI', 'IF', 'TC']
	validates_inclusion_of :departement, in: DEPARTEMENT
	validates_presence_of :title, :scholar_year, :departement, :publication_year
end
