class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new
    can :manage, User, :id => user.id

    can :manage, HomepageInfo, :user_id => user.id
    can :manage, BackgroundInfo, :user_id => user.id
    can :manage, PersonalInfo, :user_id => user.id
    can :manage, PhotoLink, :user_id => user.id
    can :manage, Showcase, :user_id => user.id
    can :manage, SocialLink, :user_id => user.id
    can :manage, WebsiteSetting, :user_id => user.id

    can :manage, Article, :user => { :id => user.id }
    can :manage, Project, :showcase => { :id => user.id }
    can :manage, Experience, :background_info => { :user_id => user.id }


    # Define abilities for the passed in user here. For example:
    #
    #   user ||= User.new # guest user (not logged in)
    #   if user.admin?
    #     can :manage, :all
    #   else
    #     can :read, :all
    #   end
    #
    # The first argument to `can` is the action you are giving the user 
    # permission to do.
    # If you pass :manage it will apply to every action. Other common actions
    # here are :read, :create, :update and :destroy.
    #
    # The second argument is the resource the user can perform the action on. 
    # If you pass :all it will apply to every resource. Otherwise pass a Ruby
    # class of the resource.
    #
    # The third argument is an optional hash of conditions to further filter the
    # objects.
    # For example, here the user can only update published articles.
    #
    #   can :update, Article, :published => true
    #
    # See the wiki for details:
    # https://github.com/ryanb/cancan/wiki/Defining-Abilities
  end
end
