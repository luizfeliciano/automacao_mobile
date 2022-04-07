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
  pending # Write code here that turns the phrase above into concrete actions
end

Entao("o {string}") do |msg_cad_sucesso|
  expect(@cadastro.valida_cadastro_sucesso).to eql msg_cad_sucesso
end
