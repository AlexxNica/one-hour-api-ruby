module OneHourApi
  class Error < StandardError
  end

  class ServerError < Error
  end

  class ResultError < Error
  end
end
