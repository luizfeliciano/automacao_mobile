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
  expect(@cadastro.valida_cadastro_sucesso).to eql msg_cad_sucesso
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
