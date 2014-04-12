SERVICES_CONFIG ||= YAML.load(File.open("#{Rails.root}/config/services.yml")).with_indifferent_access[Rails.env]

GET_TIMEOUT    = 4
PUT_TIMEOUT    = 4
POST_TIMEOUT   = 300
DELETE_TIMEOUT = 300