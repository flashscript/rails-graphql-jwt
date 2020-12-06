# All config options have a default that sould work out of the box
GraphqlPlayground::Rails.configure do |config|
  config.headers = {
    'Authorization' => ->(view_context) { "Bearer eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoxfQ.JC6qKuH9SG0SIiYSfhZUFTtirxN9Q47buLk0DPFFFzE" }
    # 'X-Auth-Header' => ->(view_context) { "123" }
  }
  config.title = "Playground"
  config.csrf = true
  config.playground_version = "latest"
  # Ideally the assets would be added to your projects `vendor/assets` directories
  # config.favicon = "/assets/playground.ico"
  # config.playground_js_url = "/assets/playground.js"
  # config.playground_css_url = "/assets/playground.css"
  # see: https://github.com/prisma-labs/graphql-playground#settings
  config.settings = {
    "editor.polling.enable": false
  }
end