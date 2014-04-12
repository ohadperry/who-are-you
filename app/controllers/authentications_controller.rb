class AuthenticationsController < ApplicationController


  def respond

    payload = {auth_result: params[:auth_result]}
    res = Authentication.log_in_or_create(params[:provider], payload)
    render json: res, layout: false
  end

  def action

  end
end