require 'httparty'

class ApiCall
  include HTTParty
  base_uri 'localhost:3000'

  def notes(device_name)
    note = self.class.get("/#{device_name}").parsed_response
  end
end