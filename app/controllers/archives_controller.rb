class ArchivesController < ApplicationController
  before_action :set_user

  def index
    @entries = Entry.where('user_id >= ?', current_user.id)
                    .order(:created_at).reverse_order.group_by(&:day)
  end

  private

  def set_user
    @user = current_user
  end
end
