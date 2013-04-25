class User < ActiveRecord::Base
  attr_accessible :age, :email, :first_name, :last_name

  has_many :reviews

	def is_teen?
		age >12 && age <19
	end

	def has_long_name?
		last_name.length + first_name.length >10
	end

	def self.all_long_name
		self.all.select do |u|
			u.has_long_name?
		end
	end	

end
