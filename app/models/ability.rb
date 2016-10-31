class Ability
  include CanCan::Ability

  def initialize(user)
    if user && user.admin?
      can :access, :rails_admin   # grant access to rails_admin
      can :manage, :all           # allow superadmins to do anything
      can :access, :manage
    else
      cannot :access, :manage
    end
  end
end
