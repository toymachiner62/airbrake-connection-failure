Airbrake.configure do |config|
  config.api_key = '8dbf307c87b0b592ae2cbf0c1651e70b'
  config.host    = 'err.ematoda.com'
  config.port    = 80
  config.secure  = config.port == 443
end