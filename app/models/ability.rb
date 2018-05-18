class Ability
    include CanCan::Ability

    def initialize(usuario)
        usuario ||= Usuario.new
        if usuario.has_role? :admin
            can :manage, :all
        else
            can :read, :all
        end
    end

end
