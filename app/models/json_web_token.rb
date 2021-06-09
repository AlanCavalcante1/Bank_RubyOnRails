class JsonWebToken
  Secret = "slslskss"
  def self.encode(payload)
    JWT.encode(payload, Secret)
  end

  def self.decode
    begin
      JWT.decode(token, Secret)
    rescue => exception
      return nil
    end
    
  end
end