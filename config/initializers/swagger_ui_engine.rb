SwaggerUiEngine.configure do |config|
  config.admin_username = ENV['ADMIN_USERNAME'].presence || 'admin'
  config.admin_password = ENV['ADMIN_PASSWORD'].presence || 'ADMIN'
  config.swagger_url = 'api/swagger.yaml'
end