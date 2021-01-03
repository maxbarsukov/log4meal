class Ability
  include CanCan::Ability

  def initialize(user)
    if user.present?
      can :read, Entry, user_id: user.id
      can :manage, Entry, user_id: user.id
    end
  end
end
