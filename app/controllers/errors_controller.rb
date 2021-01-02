class ErrorsController < ApplicationController
  def not_found
    respond_to do |format|
      format.html { render status: 404 }
    end
  end

  def unacceptable
    respond_to do |format|
      format.html { render status: 422 }
    end
  end

  def internal_error
    respond_to do |format|
      format.html { render status: 500 }
    end
  end

  def bad_gateway
    respond_to do |format|
      format.html { render status: 502 }
    end
  end

  def service_unavailable
    respond_to do |format|
      format.html { render status: 503 }
    end
  end
end
