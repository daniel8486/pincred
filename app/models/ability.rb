# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    # Define abilities for the passed in user here. For example:
    #
    #   user ||= User.new # guest user (not logged in)
     #if user.admin?
         #can :manage, :all
       #else
         #can[:read,:update,:destroy], About
         #can[:read,:update,:destroy], Banner
         #can[:read,:update,:destroy], Contact
         #can[:read,:update,:destroy], Content
         #can[:read,:update,:destroy], Credit
         #can[:read,:update,:destroy], Imagem
         #can[:read,:update,:destroy], Img
         #can[:read,:update,:destroy], Info
         #can[:read,:update,:destroy], Information
         #can[:read,:update,:destroy], Out
         #can[:read,:update,:destroy], Post
         #can[:read,:update,:destroy], Product
         #can[:read,:update,:destroy], Publication
         #can[:read,:update,:destroy], Tax
         #can[:read,:update,:destroy], Who
         #can :read, :all
       #end
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
    # https://github.com/CanCanCommunity/cancancan/wiki/Defining-Abilities
  end
end
