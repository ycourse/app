class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user (not logged in)
    if user.has_role? :admin
      can :manage, :all
    else
      can :view, :silver if user.has_role? :silver
      can :view, :rubyonrails if user.has_role? :rubyonrails
      can :read, :all if user.has_role? :rubyonrails
      can :view, :platinum if user.has_role? :platinum
    end
  end
end