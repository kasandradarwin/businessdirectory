# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    # Define abilities for the user here. For example:

    user ||= User.new #guest user (not logged in)

    # if user.admin?
    #   can :manage, :all
    # else
    #   can :read, :all
    # end


    alias_action :create, :read, :update, :delete, :to => :crud

    can :crud, Business do |business|
      user == business.user
    end


    # can :crud, Answer do |answer|
    #   user == answer.user #|| answer.question.user
    # end

    can :like, Business do |business|
      user.persisted? && business.user != user
    end
   

    can :destroy, Like do |like|
      like.user == user
    end


  end
end