class Usuario < ApplicationRecord
	rolify
	resourcify
	after_create :assign_default_role
	# Include default devise modules. Others available are:
	# :confirmable, :lockable, :timeoutable and :omniauthable
	devise :database_authenticatable, :registerable,
		:recoverable, :rememberable, :trackable, :validatable

	def assign_default_role
		self.add_role(:client) if self.roles.blank?
	end
end
