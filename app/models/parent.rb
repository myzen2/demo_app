class Parent < ActiveRecord::Base
 
  validates :nom, presence: true, length: {maximum: 50}
  validates :prenom, presence: true, length: {maximum: 50}
  validates :adresse, presence: true


	def age
		now = Time.now.utc.to_date
 		now.year - date_de_naissance.year - (date_de_naissance.to_date.change(:year => now.year) > now ? 1 : 0)
	end
end
