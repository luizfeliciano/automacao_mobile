# frozen_string_literal: true

require 'ffaker'

class CadastroScreen < BaseActions
  def initialize
    @btn_mais               = '//android.view.ViewGroup/android.view.ViewGroup/android.widget.ImageView'
    @cadastrar_novo         = 'floating_novo'
    @radio_basico           = 'br.com.dudstecnologia.cadastrodeclientes:id/rdBasico'
    @radio_completo         = 'br.com.dudstecnologia.cadastrodeclientes:id/rdCompleto'
    @inputs_nome            = 'br.com.dudstecnologia.cadastrodeclientes:id/editNome'
    @inputs_rg              = 'br.com.dudstecnologia.cadastrodeclientes:id/editRg'
    @inputs_cpf             = 'br.com.dudstecnologia.cadastrodeclientes:id/editCpf'
    @inputs_dtnasc          = 'br.com.dudstecnologia.cadastrodeclientes:id/editData'
    @inputs_endereco        = 'br.com.dudstecnologia.cadastrodeclientes:id/editEndereco'
    @inputs_numero_end      = 'br.com.dudstecnologia.cadastrodeclientes:id/editNumero'
    @inputs_bairro          = 'br.com.dudstecnologia.cadastrodeclientes:id/editBairro'
    @inputs_cep             = 'br.com.dudstecnologia.cadastrodeclientes:id/editCep'
    @inputs_cidade          = 'br.com.dudstecnologia.cadastrodeclientes:id/editCidade'
    @spinner_estado         = 'br.com.dudstecnologia.cadastrodeclientes:id/spinnerEstados'
    @inputs_telefone1       = 'br.com.dudstecnologia.cadastrodeclientes:id/editTelefone1'
    @inputs_telefone2       = 'br.com.dudstecnologia.cadastrodeclientes:id/editTelefone2'
    @inputs_email           = 'br.com.dudstecnologia.cadastrodeclientes:id/editEmail'
    @inputs_observacao      = 'br.com.dudstecnologia.cadastrodeclientes:id/editObs'
    @btn_salvar             = 'br.com.dudstecnologia.cadastrodeclientes:id/btnSalvar'
    @btn_excluir            = 'br.com.dudstecnologia.cadastrodeclientes:id/'
    @msg_cad_sucesso        = 'android:id/message'
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

  def click_finalizar_cadastro
    click_id(@btn_salvar)
  end

  def valida_cadastro_sucesso
    $wait.until { element_on_screen_id?(@msg_cad_sucesso) }
    text_of_id(@msg_cad_sucesso)
  end

end
