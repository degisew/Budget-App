class Ability
  include CanCan::Ability

  def initialize(user)
    return unless user.present?

    can :manage, :Category, author: user
    can :manage, :Transact, author: user
  end
end
