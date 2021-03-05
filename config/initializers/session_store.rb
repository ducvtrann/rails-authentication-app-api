if Rails.env.development? || Rails.env.test?
  Rails.application.config.session_store(
    :cookie_store,
    {
      key: '_rails-authentication-app-api'
    }

  )
else
  Rails.application.config.session_store(
    :cookie_store,
    {
      key: '_rails-authentication-app-api',
      secure: true,
      same_site: 'None'
    }
  )
end


