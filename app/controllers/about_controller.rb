class AboutController < ApplicationController
  def index
    if current_user
      redirect_to entries_path
    end
  end
end
