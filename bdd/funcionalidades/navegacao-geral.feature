# Status: Planejado.
# Base de análise: inspeção estática do projeto firmus-app.
# Observação: Estes cenários BDD descrevem o comportamento esperado da Navegação geral e ainda precisam de execução manual via navegador em ciclo futuro.

@planejado @navegacao-geral @navegacao @analise-estatica @desktop @sidebar @menu @rotas
Funcionalidade: Navegação geral do Firmus
  Como usuário autenticado do Firmus
  Quero navegar entre os módulos com clareza
  Para acessar rapidamente funcionalidades operacionais e de inteligência

  Contexto:
    Dado que a navegação principal do Firmus é baseada na configuração estática de itens em "firmus-app/lib/navigation.ts"
    E que o shell interno usa sidebar em desktop e drawer em mobile-like
    E que as rotas privadas exigem autenticação

  @BDD-NAV-001 @smoke
  Cenário: Exibir navegação principal em desktop
    Dado que o usuário está autenticado em viewport desktop
    Quando acessar uma rota interna do produto
    Então a sidebar deve ser exibida com os grupos Principal, Operação e Inteligência

  @BDD-NAV-002 @mobile @drawer
  Cenário: Exibir topbar mobile e ação de menu em mobile-like
    Dado que o usuário está autenticado em viewport mobile-like
    Quando acessar uma rota interna do produto
    Então a topbar mobile deve exibir o botão Menu

  @BDD-NAV-003 @mobile @drawer
  Cenário: Abrir e fechar o drawer mobile
    Dado que o usuário está autenticado em viewport mobile-like
    Quando acionar o botão Menu
    Então o drawer mobile deve ser exibido
    E ao acionar Fechar o drawer deve ser ocultado

  @BDD-NAV-004 @dashboard
  Cenário: Navegar para Dashboard
    Dado que o usuário está em um módulo interno
    Quando acionar o item Dashboard na navegação
    Então a rota esperada deve ser "/"

  @BDD-NAV-005
  Cenário: Navegar para Perfil da Empresa
    Dado que o usuário está autenticado
    Quando acionar o item Perfil da Empresa
    Então a rota esperada deve ser "/business-profile"

  @BDD-NAV-006
  Cenário: Navegar para Clientes
    Dado que o usuário está autenticado
    Quando acionar o item Clientes
    Então a rota esperada deve ser "/clients"

  @BDD-NAV-007 @plano
  Cenário: Navegar para Plano
    Dado que o usuário está autenticado
    Quando acionar o item Plano
    Então a rota esperada deve ser "/plan"

  @BDD-NAV-008
  Cenário: Navegar para Prontidão do MVP
    Dado que o usuário está autenticado
    Quando acionar o item Prontidão do MVP
    Então a rota esperada deve ser "/mvp-readiness"

  @BDD-NAV-009
  Cenário: Navegar para Serviços
    Dado que o usuário está autenticado
    Quando acionar o item Serviços
    Então a rota esperada deve ser "/services"

  @BDD-NAV-010
  Cenário: Navegar para Orçamentos
    Dado que o usuário está autenticado
    Quando acionar o item Orçamentos
    Então a rota esperada deve ser "/quotes"

  @BDD-NAV-011
  Cenário: Navegar para Cobranças
    Dado que o usuário está autenticado
    Quando acionar o item Cobranças
    Então a rota esperada deve ser "/charges"

  @BDD-NAV-012
  Cenário: Navegar para DAS
    Dado que o usuário está autenticado
    Quando acionar o item DAS
    Então a rota esperada deve ser "/das"

  @BDD-NAV-013
  Cenário: Navegar para NFSe
    Dado que o usuário está autenticado
    Quando acionar o item NFSe
    Então a rota esperada deve ser "/nfse"

  @BDD-NAV-014
  Cenário: Navegar para Lembretes
    Dado que o usuário está autenticado
    Quando acionar o item Lembretes
    Então a rota esperada deve ser "/reminders"

  @BDD-NAV-015
  Cenário: Navegar para Logs de atividade
    Dado que o usuário está autenticado
    Quando acionar o item Logs de atividade
    Então a rota esperada deve ser "/activity-logs"

  @BDD-NAV-016
  Cenário: Navegar para Radar de reativação
    Dado que o usuário está autenticado
    Quando acionar o item Radar de reativação
    Então a rota esperada deve ser "/reactivation-radar"

  @BDD-NAV-017
  Cenário: Navegar para Modelos
    Dado que o usuário está autenticado
    Quando acionar o item Modelos
    Então a rota esperada deve ser "/templates"

  @BDD-NAV-018
  Cenário: Navegar para Entrada assistida
    Dado que o usuário está autenticado
    Quando acionar o item Entrada assistida
    Então a rota esperada deve ser "/assisted-input"

  @BDD-NAV-019
  Cenário: Navegar para Sugestões
    Dado que o usuário está autenticado
    Quando acionar o item Sugestões
    Então a rota esperada deve ser "/assisted-charge-suggestions"

  @BDD-NAV-020
  Cenário: Navegar para Regras de automação
    Dado que o usuário está autenticado
    Quando acionar o item Regras de automação
    Então a rota esperada deve ser "/automation-rules"

  @BDD-NAV-021
  Cenário: Navegar para Resumo semanal
    Dado que o usuário está autenticado
    Quando acionar o item Resumo semanal
    Então a rota esperada deve ser "/weekly-summary"

  @BDD-NAV-022
  Cenário: Navegar para Visão Financeira
    Dado que o usuário está autenticado
    Quando acionar o item Visão Financeira
    Então a rota esperada deve ser "/financial-overview"

  @BDD-NAV-023 @estado-ativo
  Cenário: Destacar item ativo da navegação
    Dado que o usuário está em uma rota interna de módulo
    Quando visualizar a navegação
    Então o item correspondente deve indicar estado ativo por aria-current="page"

  @BDD-NAV-024 @labels
  Cenário: Manter labels claros em PT-BR
    Dado que o menu principal é renderizado a partir da configuração de navegação
    Quando listar os labels exibidos ao usuário
    Então os labels devem ser compreensíveis e em PT-BR

  @BDD-NAV-025 @rotas
  Cenário: Garantir hrefs internos válidos
    Dado que os itens de navegação possuem href definido
    Quando revisar a configuração de navegação
    Então nenhum item deve possuir href vazio
    E todos os hrefs devem apontar para rotas internas coerentes com os módulos

  @BDD-NAV-026 @bloqueio @refresh @qualidade
  Cenário: Preparar validação de bloqueio por plano, refresh e qualidade visual de navegação
    Dado que alguns recursos possuem regras de entitlement por plano
    E que a navegação deve permanecer utilizável após refresh
    Quando executar validação manual futura em navegador
    Então deve ser possível confirmar tratamento de bloqueio por plano quando aplicável
    E deve ser possível confirmar ausência de placeholders técnicos ou labels confusos
    E deve ser possível confirmar clareza de hierarquia e retorno ao Dashboard
