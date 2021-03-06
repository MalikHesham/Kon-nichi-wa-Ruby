class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new
    if user.present?
      can :manage, Article , user_id: user.id
      can :read, :all
    end
  end
end
