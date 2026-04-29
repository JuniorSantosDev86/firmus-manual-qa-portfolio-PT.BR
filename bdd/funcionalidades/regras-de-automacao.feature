# Status: Planejado.
# Base de análise: inspeção estática do projeto firmus-app.
# Observação: Estes cenários BDD descrevem o comportamento esperado do módulo Regras de automação e ainda precisam de execução manual via navegador em ciclo futuro.

@planejado @regras-de-automacao @automacao @automação @analise-estatica
Funcionalidade: Regras de automação
  Como usuário autenticado do Firmus
  Quero configurar e acompanhar regras de automação
  Para padronizar ações operacionais com critérios claros e rastreáveis

  Contexto:
    Dado que o usuário está autenticado no Firmus
    E possui acesso ao módulo Regras de automação conforme o plano
    E acessa a rota "/automation-rules"

  @smoke @navegacao
  Cenário: BDD-AUTO-001 — Acessar a página de Regras de automação
    Quando o módulo é carregado
    Então devo visualizar o título "Regras de automação"
    E devo visualizar a descrição do módulo com orientação operacional

  @smoke @listagem
  Cenário: BDD-AUTO-002 — Carregar estrutura principal do módulo
    Quando a página é apresentada
    Então devo visualizar a seção "Nova regra"
    E devo visualizar a seção "Regras cadastradas"
    E devo visualizar a seção "Resultado da avaliação"

  @listagem @estado-vazio
  Cenário: BDD-AUTO-003 — Exibir estado vazio de regras cadastradas
    Dado que não existem regras salvas
    Quando a listagem é exibida
    Então devo visualizar "Nenhuma regra criada ainda."
    E devo visualizar orientação para criar a primeira regra

  @listagem
  Cenário: BDD-AUTO-004 — Exibir regra existente com informações essenciais
    Dado que existe ao menos uma regra cadastrada
    Quando a listagem é exibida
    Então devo visualizar nome da regra
    E devo visualizar resumo de gatilho
    E devo visualizar resumo de ação
    E devo visualizar status ativa ou inativa

  @cadastro
  Cenário: BDD-AUTO-005 — Exibir campos do formulário de nova regra
    Quando acesso a seção "Nova regra"
    Então devo visualizar campo "Nome da regra"
    E devo visualizar seletor "Tipo de gatilho"
    E devo visualizar seletor "Ação"
    E devo visualizar opção "Ativa na criação"

  @cadastro @gatilho
  Cenário: BDD-AUTO-006 — Exibir gatilhos de tipo evento
    Dado que o tipo de gatilho está como "Evento"
    Quando abro o seletor de evento
    Então devo visualizar opções de evento previstas no módulo

  @cadastro @condicao
  Cenário: BDD-AUTO-007 — Exibir gatilhos de condição derivada
    Dado que o tipo de gatilho está como "Condição derivada"
    Quando abro o seletor de condição
    Então devo visualizar as condições derivadas disponíveis

  @cadastro @condicao
  Cenário: BDD-AUTO-008 — Exibir campo de dias para cobrança próxima do vencimento
    Dado que o tipo de gatilho está como "Condição derivada"
    E a condição selecionada é "Cobrança próxima do vencimento"
    Quando o formulário é renderizado
    Então devo visualizar o campo "Dias à frente"
    E o campo deve indicar faixa válida entre 1 e 30

  @cadastro @acao
  Cenário: BDD-AUTO-009 — Exibir ações de automação disponíveis
    Quando abro o seletor de ação
    Então devo visualizar as ações permitidas no módulo
    E cada ação deve ser apresentada com descrição compreensível

  @cadastro
  Cenário: BDD-AUTO-010 — Criar regra com dados válidos
    Dado que preenchi nome, gatilho e ação válidos
    Quando confirmo "Criar regra"
    Então a nova regra deve aparecer na listagem
    E o formulário deve retornar para o estado inicial

  @cadastro
  Cenário: BDD-AUTO-011 — Impedir criação com nome vazio
    Dado que o campo "Nome da regra" está vazio
    Quando confirmo "Criar regra"
    Então a regra não deve ser criada
    E a listagem não deve receber novo item

  @cadastro @gatilho
  Cenário: BDD-AUTO-012 — Tratar gatilho inválido de forma segura
    Dado que há dado de gatilho inválido persistido no storage
    Quando a regra é carregada pelo módulo
    Então o sistema deve normalizar para um gatilho válido padrão
    E não deve quebrar a renderização da página

  @cadastro @acao
  Cenário: BDD-AUTO-013 — Tratar ação inválida de forma segura
    Dado que há dado de ação inválida persistido no storage
    Quando a regra é carregada pelo módulo
    Então o sistema deve normalizar para uma ação válida padrão
    E não deve quebrar a renderização da página

  @ativacao @inativacao
  Cenário: BDD-AUTO-014 — Inativar regra ativa
    Dado que existe regra com status ativo
    Quando aciono "Desativar"
    Então o status da regra deve mudar para "Inativa"

  @ativacao @inativacao
  Cenário: BDD-AUTO-015 — Ativar regra inativa
    Dado que existe regra com status inativo
    Quando aciono "Ativar"
    Então o status da regra deve mudar para "Ativa"

  @feedback
  Cenário: BDD-AUTO-016 — Exibir resumo de avaliação sem correspondências
    Dado que não existem correspondências para as regras ativas
    Quando aciono "Avaliar agora"
    Então devo visualizar mensagem de nenhuma correspondência encontrada

  @feedback
  Cenário: BDD-AUTO-017 — Exibir resumo de execução de correspondências
    Quando aciono "Executar correspondências"
    Então devo visualizar resumo com contadores de criados, duplicados e não executáveis
    E devo visualizar data/hora da última execução

  @integracao
  Cenário: BDD-AUTO-018 — Relacionar automação com lembretes
    Dado que uma correspondência executável é encontrada
    Quando a execução cria lembrete
    Então o lembrete deve ser registrado com origem de automação

  @integracao
  Cenário: BDD-AUTO-019 — Relacionar automação com eventos e cobranças
    Quando as regras são avaliadas
    Então a avaliação deve considerar eventos da timeline
    E deve considerar cobranças pendentes para condições derivadas

  @limite
  Cenário: BDD-AUTO-020 — Bloquear acesso por plano sem permissão
    Dado que o plano atual não libera "Regras de automação"
    Quando acesso a rota do módulo
    Então devo visualizar bloqueio de recurso por plano
    E devo visualizar orientação de upgrade

  @navegacao
  Cenário: BDD-AUTO-021 — Navegar pelo menu lateral para Regras de automação
    Quando acesso o item "Regras de automação" no menu
    Então devo ser direcionado para a rota "/automation-rules"

  @navegacao
  Cenário: BDD-AUTO-022 — Navegar entre Regras de automação e Dashboard
    Dado que estou em Regras de automação
    Quando acesso Dashboard
    Então devo conseguir retornar para Regras de automação sem perda de navegação

  @refresh
  Cenário: BDD-AUTO-023 — Manter regras após refresh da página
    Dado que existe regra salva
    Quando atualizo a página
    Então a regra deve permanecer disponível na listagem

  @responsivo @desktop
  Cenário: BDD-AUTO-024 — Planejar validação de layout em viewport desktop
    Quando a execução manual em desktop for realizada
    Então o módulo deve manter legibilidade, alinhamento e ações acessíveis

  @responsivo @mobile
  Cenário: BDD-AUTO-025 — Planejar validação de layout em viewport mobile-like
    Quando a execução manual em viewport mobile-like for realizada
    Então o módulo deve manter uso viável sem sobreposição crítica de conteúdo

  @qualidade
  Cenário: BDD-AUTO-026 — Garantir clareza de conteúdo e valor operacional
    Quando analiso textos e labels do módulo
    Então não devo identificar placeholders técnicos para usuário final
    E devo identificar comunicação clara sobre o uso operacional das automações
