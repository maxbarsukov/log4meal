class ErrorsController < ApplicationController
  def bad_request
    respond_to do |format|
      format.html { render status: 400 }
    end
  end

  def unauthorized
    respond_to do |format|
      format.html { render status: 401 }
    end
  end

  def forbidden
    respond_to do |format|
      format.html { render status: 403 }
    end
  end

  def not_found
    respond_to do |format|
      format.html { render status: 404 }
    end
  end

  def request_timeout
    respond_to do |format|
      format.html { render status: 408 }
    end
  end

  def unacceptable
    respond_to do |format|
      format.html { render status: 422 }
    end
  end

  def too_many_requests
    respond_to do |format|
      format.html { render status: 429 }
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

  def gateway_timeout
    respond_to do |format|
      format.html { render status: 504 }
    end
  end
end
