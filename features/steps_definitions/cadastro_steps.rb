# frozen_string_literal: true

Dado("que esteja na home do app") do
  expect(@cadastro.home_screen?).to be_truthy
end

Quando("efetar um novo cadastro") do
  @cadastro.click_mais
  @cadastro.click_cadastrar_novo
end

Quando("preencher com dados basicos válidos") do
  @cadastro.preencher_campos_cad_basico
  @cadastro.click_finalizar_cadastro
end

Quando("preencher com dados completos válidos") do
  @cadastro.preencher_campos_cad_completo
  @cadastro.click_finalizar_cadastro
end

Entao("o {string}") do |msg_cad_sucesso|
  expect(@cadastro.valida_cadastro_sucesso).to include msg_cad_sucesso
end

Dado('que esteja na home do app e tenha um cadastro') do
  expect(@cadastro.home_screen?).to be_truthy
  @cadastro.massa_cadastro
end

Quando('efetar uma exclusão') do
  @cadastro.seleciona_cadastro
end

Entao('o cadastro excluido com sucesso') do
  @cadastro.excluir_cadastro
end

Quando('efetar uma exportação') do
  @cadastro.click_mais
  @cadastro.click_exportar
end

Quando('selecionar exportar por excel') do
  @cadastro.click_exportar_excel
end

Quando('desejar saber mais sobre o app') do
  @cadastro.click_mais
  @cadastro.click_sobre
end

Entao('apresentar dados sobre o aplicativo') do
  msg= 'Aplicativo desenvolvido por Duds Tecnologia para cadastro simples de clientes'
  expect(@cadastro.valida_sobre_app).to include msg
end