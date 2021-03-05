Rails.application.config.middleware.insert_before 0, Rack::Cors do
  # Developement
  allow do
    origins 'http://localhost:3000'
    resource "*",
    headers: :any,
    methods: [:get, :put, :patch, :delete, :options, :head],
    credentials: true
  end

  # Production
  # allow do
  #   origin '<PRODUCTION url>'
  #   resource "*", headers: :any, methods: [
  #     :get, :put, :patch, :delete, :options, :head
  #   ]
  #   credentials: true
  # end
end
