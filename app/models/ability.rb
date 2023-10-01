class Ability
  include CanCan::Ability

  def initialize(user)
    if user.agency?
      can :manage, Place
      can :manage, Travel
    end

    if user.user?
      can :manage, Reservation
    end

    can :read, Place
    can :read, Travel
  end
end
