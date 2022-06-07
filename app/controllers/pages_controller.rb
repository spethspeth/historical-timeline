class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @timelines = policy_scope(Timeline)
  end
end
