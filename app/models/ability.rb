class Ability
  include CanCan::Ability

  def initialize(user)
    if user.agency?
      can :manage, Place
      can :manage, Travel
    end

    can :manage, Reservation if user.user?

    can :read, Place
    can :read, Travel
  end
end
