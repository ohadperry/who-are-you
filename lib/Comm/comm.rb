module Comm
  extend self

  #
  #def get(caller, path, params = {}, &on_error_block)
  #  url = callerr_config(caller)[:url] + path
  #  request = Typhoeus::Request.new(url, headers: { "Accept" => "text/json" }, method: 'GET', timeout: REST_API_GET_TIMEOUT, params: params)
  #  run_safe_request(caller, request, &on_error_block)
  #end

  def post(service_name, path, payload, &on_error_block)
    url       = service_config(service_name)[:url] + path
    options   = {:body => payload, :timeout => POST_TIMEOUT}
    HTTParty.post(url, options, &on_error_block)
  end

  def service_config(service_name)
    key = "#{service_name}_service".to_sym
    SERVICES_CONFIG[key]
  end

end