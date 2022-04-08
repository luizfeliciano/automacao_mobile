#language: pt

@cadastro
Funcionalidade: Criar cadastro de cliente APP
    Eu como usuário
    Quero criar um cadastro de cliente no APP
    Para ter acesso as suas informações

@cadastro_basico
    Cenario: Cadasto Basico - valido
        Dado que esteja na home do app
        Quando efetar um novo cadastro
        E preencher com dados basicos válidos
        Entao o "Cadastro efetuado com sucesso"

@cadastro_completo
    Cenario: Cadasto Completo - valido
        Dado que esteja na home do app
        Quando efetar um novo cadastro
        E preencher com dados completos válidos
        Entao o "Cadastro efetuado com sucesso"

@excluir_cadastro
    Cenario: Cadasto Completo - valido
        Dado que esteja na home do app e tenha um cadastro
        Quando efetar uma exclusão
        Entao o cadastro excluido com sucesso

@exportar_dados
    Cenario: Exportar dados
        Dado que esteja na home do app
        Quando efetar uma exportação
        E selecionar exportar por excel
        Entao o 'O arquivo foi salvo na sua pasta padrão'

@sobre_app
    Cenario: Sobre o App
        Dado que esteja na home do app
        Quando desejar saber mais sobre o app
        Entao apresentar dados sobre o aplicativo