class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new

    case user
    when User
        can :manage, User, :id => user.id

        can :manage, HomepageInfo, :user_id => user.id
        can :manage, BackgroundInfo, :user_id => user.id
        can :manage, PersonalInfo, :user_id => user.id
        can :manage, PhotoLink, :user_id => user.id
        can :manage, Showcase, :user_id => user.id
        can :manage, Project, :user_id => user.id
        can :manage, Photo, :user_id => user.id
        can :manage, SocialLink, :user_id => user.id
        can :manage, WebsiteSetting, :user_id => user.id

        can :manage, Article, :user => { :id => user.id }
        can :manage, Experience, :background_info => { :user_id => user.id }

    when Admin
        can :manage, User
        can :manage, Admin
        can :manage, HomepageInfo
        can :manage, BackgroundInfo
        can :manage, PersonalInfo
        can :manage, PhotoLink
        can :manage, Showcase
        can :manage, Project
        can :manage, Photo
        can :manage, SocialLink
        can :manage, WebsiteSetting
        can :manage, Article
        can :manage, Experience

        can :manage, School

        can :manage, Clerk


    when Clerk
        can :manage, User, :school_id => user.school_id
        can :manage, Clerk, :id => user.id

    end
  end
end
