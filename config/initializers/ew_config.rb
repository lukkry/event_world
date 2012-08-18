require 'konf'

config_path = File.expand_path('../../config.yml', __FILE__)
EwConfig = Konf.new(config_path, Rails.env.to_s)
