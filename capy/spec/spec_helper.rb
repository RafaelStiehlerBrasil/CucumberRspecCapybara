require 'capybara'
require 'capybara/rspec'


RSpec.configure do |config|

  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

  config.shared_context_metadata_behavior = :apply_to_host_groups

  config.include Capybara::DSL

  config.before(:example) do
    page.current_window.resize_to(1280, 800)
  end

  config.after(:example) do |e|
    # caso queira printar todos os testes tirar o if
    # caso queira printar somente os testes com erros deixar o if no fim
    nome = e.description.gsub(/[^A Za-z0-9]/, '').tr(' ', '_')
    page.save_screenshot('log/'+ nome +'.png') if e.exception
  end
end

Capybara.configure do |config|
  # pode usar com ou sem o _headless onde é usado para nao aparecer o navegador no execução
  config.default_driver = :selenium_chrome_headless
  config.default_max_wait_time = 5
  config.app_host = 'https://training-wheels-protocol.herokuapp.com'
end