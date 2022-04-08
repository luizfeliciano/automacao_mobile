# frozen_string_literal: true

desc 'Inicia servidor Appium'
task :appium_server do
  puts 'Iniciando server do appium'
  exec 'START appium &'
end

desc 'Encerra servidor Appium'
task :close_appium_server do
  puts 'Fechando conexão do server do appium'
  system 'taskkill /f /im node.exe'
end

desc 'Executa testes android'
task :run_android, [:tag] do |_task, args|
  android(args[:tag])
end

def android(tag)
  sh 'rake appium_server'
  system "bundle exec cucumber -t \"#{tag}\" -p android"
  sh 'rake close_appium_server'
end
