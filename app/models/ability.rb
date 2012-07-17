class Ability
	include CanCan::Ability

	def initialize(user)
		user ||= User.new #usuario invitado
		if user.role? :admin
			can :manage, :all
		end
		if user.role? :User
			can :read, :all
			can :create, Ticket
			can :cupones, Ticket
			can :index, Ticket do |ticket|
				ticket.try(:user) == user
			end	
		end
	end
end

