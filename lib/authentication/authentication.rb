module Authentication
  extend self

  def log_in_or_create(provider, payload)
    Comm.post('users', "identity/#{provider}/new", payload) { {timeout: true} }
  end
end