# frozen_string_literal: true

require 'report_builder'

Before do |_scenario|
  @base ||= BaseActions.new
  @cadastro ||= CadastroScreen.new

  $driver.start_driver
end

After do |scenario|
  time = Time.new
  $sufix = ('fail' if scenario.failed?) || 'success'
  $name = scenario.name.tr(' ', '_').downcase
  foto = "report/screenshot/#{$sufix}/#{$sufix}_#{$name}_#{time.day}-#{time.month}-#{time.year}.png"
  $driver.screenshot(foto)
  embed(foto, 'image/png', 'Evidência(Screenshot)')
  $driver.reset
  $driver.driver_quit
end

at_exit do
  ReportBuilder.configure do |config|
    config.input_path = 'report/json/report.json'
    config.report_path = "report/report_builder/Report-#{Time.new.strftime("%Y%m%d_%H%M%S")}"
    config.report_types = [:html]
    config.report_tabs = %w[Overview Features Scenarios Errors]
    config.report_title = 'Resultado Automacao Mobile'
    config.compress_images = false
    config.additional_info = { 'APP' => 'Cadastro de Clientes' }
  end
  
  ReportBuilder.build_report
  end