# frozen_string_literal: true

require 'ffaker'

class CadastroScreen < BaseActions
  def initialize
    @btn_mais               = '//android.view.ViewGroup/android.view.ViewGroup/android.widget.ImageView'
    @msg_sobre_app          = '//android.widget.LinearLayout/android.webkit.WebView/android.webkit.WebView/android.view.View[1]'
    @cadastrar_novo         = 'br.com.dudstecnologia.cadastrodeclientes:id/floating_novo'
    @btn_exportar           = 'br.com.dudstecnologia.cadastrodeclientes:id/floating_exportar'
    @btn_sobre              = 'br.com.dudstecnologia.cadastrodeclientes:id/floating_sobre'
    @radio_basico           = 'br.com.dudstecnologia.cadastrodeclientes:id/rdBasico'
    @radio_completo         = 'br.com.dudstecnologia.cadastrodeclientes:id/rdCompleto'
    @inputs_nome            = 'br.com.dudstecnologia.cadastrodeclientes:id/editNome'
    @inputs_rg              = 'br.com.dudstecnologia.cadastrodeclientes:id/editRg'
    @inputs_rg_orgao        = 'br.com.dudstecnologia.cadastrodeclientes:id/editOrgao'
    @inputs_cpf             = 'br.com.dudstecnologia.cadastrodeclientes:id/editCpf'
    @inputs_dtnasc          = 'br.com.dudstecnologia.cadastrodeclientes:id/editData'
    @inputs_mae             = 'br.com.dudstecnologia.cadastrodeclientes:id/editMae'
    @inputs_pai             = 'br.com.dudstecnologia.cadastrodeclientes:id/editPai'
    @inputs_endereco        = 'br.com.dudstecnologia.cadastrodeclientes:id/editEndereco'
    @inputs_numero_end      = 'br.com.dudstecnologia.cadastrodeclientes:id/editNumero'
    @inputs_bairro          = 'br.com.dudstecnologia.cadastrodeclientes:id/editBairro'
    @inputs_cep             = 'br.com.dudstecnologia.cadastrodeclientes:id/editCep'
    @inputs_cidade          = 'br.com.dudstecnologia.cadastrodeclientes:id/editCidade'
    @spinner_estado         = 'br.com.dudstecnologia.cadastrodeclientes:id/spinnerEstados'
    @inputs_naturalidade   = 'br.com.dudstecnologia.cadastrodeclientes:id/editNaturalidade'
    @inputs_telefone1       = 'br.com.dudstecnologia.cadastrodeclientes:id/editTelefone1'
    @inputs_telefone2       = 'br.com.dudstecnologia.cadastrodeclientes:id/editTelefone2'
    @inputs_email           = 'br.com.dudstecnologia.cadastrodeclientes:id/editEmail'
    @inputs_observacao      = 'br.com.dudstecnologia.cadastrodeclientes:id/editObs'
  #Informações Profissionais
    @inputs_empresa         = 'br.com.dudstecnologia.cadastrodeclientes:id/editEmpresa'
    @inputs_cargo           = 'br.com.dudstecnologia.cadastrodeclientes:id/editCargo'
    @inputs_endereco_empr   = 'br.com.dudstecnologia.cadastrodeclientes:id/editEnderecoEmpresa'
    @inputs_cep_empr        = 'br.com.dudstecnologia.cadastrodeclientes:id/editCepEmpresa'
    @inputs_telefone_empr   = 'br.com.dudstecnologia.cadastrodeclientes:id/editTelefoneEmpresa'
    @inputs_dtadmissao      = 'br.com.dudstecnologia.cadastrodeclientes:id/editDataAdmissao'
    @inputs_renda           = 'br.com.dudstecnologia.cadastrodeclientes:id/editRenda'
    @inputs_telefoneref1    = 'br.com.dudstecnologia.cadastrodeclientes:id/editTelefoneRef1'
    @inputs_telefoneref2    = 'br.com.dudstecnologia.cadastrodeclientes:id/editTelefoneRef2'
    @inputs_banco           = 'br.com.dudstecnologia.cadastrodeclientes:id/editBanco'
    @inputs_agencia         = 'br.com.dudstecnologia.cadastrodeclientes:id/editAgencia'
    @inputs_conta           = 'br.com.dudstecnologia.cadastrodeclientes:id/editConta'
    @btn_salvar             = 'br.com.dudstecnologia.cadastrodeclientes:id/btnSalvar'
    @btn_excluir            = 'br.com.dudstecnologia.cadastrodeclientes:id/btnExcluir'
    @msg_sucesso            = 'android:id/message'
    @btn_ok_sim             = 'android:id/button1'
    @click_cad              = 'br.com.dudstecnologia.cadastrodeclientes:id/nomeLista'
    @export_excel           = 'br.com.dudstecnologia.cadastrodeclientes:id/btnExportar'
  end

  def home_screen?
    $wait.until { element_on_screen?(@btn_mais) }
  end

  def click_mais
    click_xpath(@btn_mais)
  end

  def click_cadastrar_novo
    $wait.until { element_on_screen_id?(@cadastrar_novo) }
    click_id(@cadastrar_novo)
  end

  def selecionar_cadastro_completo
    $wait.until { element_on_screen_id?(@inputs_nome) }
    click_id(@radio_completo)
  end

  def preencher_nome
    $wait.until { element_on_screen_id?(@inputs_nome) }
    send_keys_id(@inputs_nome, FFaker::NameBR.name)
  end

  def preencher_rg
    send_keys_id(@inputs_rg, FFaker::IdentificationBR.rg)
  end

  def preencher_cpf
    send_keys_id(@inputs_cpf, FFaker::IdentificationBR.cpf)
  end

  def preencher_dtnascimento
    send_keys_id(@inputs_dtnasc, '01012000')
  end

  def preencher_endereco
    send_keys_id(@inputs_endereco, FFaker::AddressBR.street)
  end

  def preencher_numero
    send_keys_id(@inputs_numero_end, 10)
  end

  def preencher_bairro
    send_keys_id(@inputs_bairro, 'centro')
  end

  def preencher_cep
    send_keys_id(@inputs_cep, FFaker::AddressBR.zip_code)
  end

  def preencher_cidade
    send_keys_id(@inputs_cidade, FFaker::AddressBR.city)
  end

  def preencher_estado
    click_id(@spinner_estado)
    scroll_to('SP')
    text('SP').click
  end

  def preencher_telefone1
    send_keys_id(@inputs_telefone1, FFaker::PhoneNumberBR.mobile_phone_number)
  end

  def preencher_telefone2
    send_keys_id(@inputs_telefone2, FFaker::PhoneNumberBR.mobile_phone_number)
  end

  def preencher_email
    send_keys_id(@inputs_email, FFaker::Internet.disposable_email)
  end

  def preencher_observacoes
    send_keys_id(@inputs_observacao, FFaker::Lorem.word)
  end

  def preencher_orgao_emissor
    send_keys_id(@inputs_rg_orgao, 'SSP/SP')
  end

  def preencher_nome_mae
    send_keys_id(@inputs_mae, FFaker::NameBR.first_name_female)
  end

  def preencher_nome_pai
    send_keys_id(@inputs_pai, FFaker::NameBR.first_name_male)
  end

  def preencher_naturalidade
    send_keys_id(@inputs_naturalidade, FFaker::AddressBR.city)
  end

  def preencher_empresa
    scroll_to('Conta')
    send_keys_id(@inputs_empresa, FFaker::Company.name)
  end

  def preencher_cargo
    send_keys_id(@inputs_cargo, FFaker::Company.position)
  end

  def preencher_endereco_empr
    send_keys_id(@inputs_endereco_empr, FFaker::AddressBR.street)
  end

  def preencher_cep_empr
    send_keys_id(@inputs_cep_empr, FFaker::AddressBR.zip_code)
  end

  def preencher_telefone_empr
    send_keys_id(@inputs_telefone_empr, FFaker::PhoneNumberBR.mobile_phone_number)
  end

  def preencher_dtadmissao
    send_keys_id(@inputs_dtadmissao, '01012000')
  end

  def preencher_renda
    send_keys_id(@inputs_renda, '5000')
  end

  def preencher_telefone_ref1
    send_keys_id(@inputs_telefoneref1, FFaker::PhoneNumberBR.mobile_phone_number)
  end

  def preencher_telefone_ref2
    send_keys_id(@inputs_telefoneref2, FFaker::PhoneNumberBR.mobile_phone_number)
  end

  def preencher_banco
    send_keys_id(@inputs_banco, 'Itaú')
  end
  
  def preencher_agencia
    send_keys_id(@inputs_agencia, '0001')
  end

  def preencher_conta
    scroll_to('Conta')
    send_keys_id(@inputs_conta, '10256325')
  end

  def seleciona_cadastro
    $wait.until { element_on_screen_id?(@click_cad) }
    click_id(@click_cad)
  end

  def click_excluir
    $wait.until { element_on_screen_id?(@btn_excluir) }
    click_id(@btn_excluir)
  end

  def confirma_excluir
    $wait.until { element_on_screen_id?(@btn_ok_sim) }
    click_id(@btn_ok_sim)
  end

  def click_finalizar_cadastro
    click_id(@btn_salvar)
  end

  def click_exportar
    $wait.until { element_on_screen_id?(@btn_exportar) }
    click_id(@btn_exportar)
  end

  def click_exportar_excel
    $wait.until { element_on_screen_id?(@export_excel) }
    click_id(@export_excel)
  end

  def click_sobre
    $wait.until { element_on_screen_id?(@btn_sobre) }
    click_id(@btn_sobre)
  end

  def valida_cadastro_sucesso
    $wait.until { element_on_screen_id?(@msg_sucesso) }
    text_of_id(@msg_sucesso)
  end

  def valida_exportado_sucesso
    $wait.until { element_on_screen_id?(@msg_sucesso) }
    text_of_id(@msg_sucesso)
  end

  def valida_sobre_app
    $wait.until { element_on_screen?(@msg_sobre_app) }
    get_text_by_xpath(@msg_sobre_app)
  end

  def massa_cadastro
    click_mais
    click_cadastrar_novo
    preencher_nome
    click_id(@btn_salvar)
    $wait.until { element_on_screen_id?(@btn_ok_sim) }
    click_id(@btn_ok_sim)
    @driver.back
  end

  def preencher_campos_cad_basico
    preencher_nome
    preencher_rg
    preencher_cpf
    preencher_dtnascimento
    preencher_endereco
    preencher_numero
    preencher_bairro
    preencher_cep
    preencher_cidade
    preencher_estado
    preencher_telefone1
    preencher_telefone2
    preencher_email
    preencher_observacoes
  end

  def preencher_campos_cad_completo
    selecionar_cadastro_completo
    preencher_nome
    preencher_rg
    preencher_orgao_emissor
    preencher_cpf
    preencher_dtnascimento
    preencher_nome_mae
    preencher_nome_pai
    preencher_endereco
    preencher_numero
    preencher_bairro
    preencher_cep
    preencher_cidade
    preencher_estado
    preencher_naturalidade
    preencher_telefone1
    preencher_telefone2
    preencher_email
    preencher_observacoes
    preencher_empresa
    preencher_cargo
    preencher_endereco_empr
    preencher_cep_empr
    preencher_telefone_empr
    preencher_dtadmissao
    preencher_renda
    preencher_telefone_ref1
    preencher_telefone_ref2
    preencher_banco
    preencher_agencia
    preencher_conta
  end

  def excluir_cadastro
    click_excluir
    confirma_excluir
  end
end
