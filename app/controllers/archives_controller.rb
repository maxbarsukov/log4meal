class ArchivesController < ApplicationController
  def index
    @entries = Entry.all.order(:created_at).reverse_order.group_by(&:day)
  end
end
