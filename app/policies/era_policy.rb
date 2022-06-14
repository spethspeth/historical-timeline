class EraPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    # def resolve
    #   scope.all
    # end
  end

  def create?
    true
  end

  def destroy?
    user_owner_or_admin?
  end

  private

  def user_owner_or_admin?
    record.user == user || user.admin
  end
end
