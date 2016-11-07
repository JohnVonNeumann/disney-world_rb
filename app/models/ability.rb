class Ability
  include CanCan::Ability

  def initialize(user)
    # Define abilities for the passed in user here. For example:

    user ||= User.new # guest user (not logged in)

    can :admire_from_distance, :all

    if user.has_role? :staff
      can :ride, :all
      can :enter_staff_buildings
    else
      can :ride, Ride, park: :magic_kingdom if user.has_any_role? :magic_kingdom, :hopper
      can :ride, Ride, park: :animal_kingdom if user.has_any_role? :magic_kingdom, :hopper
      can :ride, Ride, park: :studios if user.has_any_role? :magic_kingdom, :hopper
      can :ride, Ride, park: :water if user.has_role? :water
    end
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
