# Status: Planejado.
# Base de análise: inspeção estática do projeto firmus-app.
# Observação: Estes cenários BDD descrevem o comportamento esperado do módulo Radar de reativação e ainda precisam de execução manual via navegador em ciclo futuro.

Funcionalidade: Radar de reativação
  Como usuário autenticado do Firmus
  Quero identificar oportunidades de reativação com critérios explícitos
  Para priorizar contatos de win-back e follow-up comercial

  Contexto:
    Dado que o usuário está autenticado no Firmus
    E o menu lateral contém a opção "Radar de reativação"
    E a rota do módulo é "/reactivation-radar"

  @planejado @radar @reativacao @analise-estatica @smoke @navegacao
  Cenário: BDD-RADAR-001 — Acessar o módulo Radar de reativação pela navegação
    Quando o usuário acessa a rota do módulo Radar de reativação
    Então a página do módulo deve ser carregada na rota "/reactivation-radar"
    E o título "Radar de reativação" deve ser exibido

  @planejado @radar @reativacao @analise-estatica @smoke @qualidade
  Cenário: BDD-RADAR-002 — Exibir descrição operacional do módulo
    Quando o módulo Radar de reativação é exibido
    Então a tela deve apresentar texto orientando revisão de oportunidades de win-back e follow-up parado
    E o conteúdo deve indicar ação imediata para o usuário

  @planejado @radar @reativacao @analise-estatica @listagem @oportunidade
  Cenário: BDD-RADAR-003 — Exibir listagem de oportunidades quando houver candidatos elegíveis
    Dado que existem clientes elegíveis para reativação no conjunto de dados
    Quando o usuário abre o módulo Radar de reativação
    Então a listagem de oportunidades deve ser exibida
    E cada item deve apresentar informações de cliente e contexto da oportunidade

  @planejado @radar @reativacao @analise-estatica @estado-vazio
  Cenário: BDD-RADAR-004 — Exibir estado vazio quando não houver oportunidades
    Dado que não existem candidatos elegíveis para reativação
    Quando o usuário abre o módulo Radar de reativação
    Então a mensagem "Nenhuma oportunidade de reativação no momento." deve ser exibida
    E a listagem de oportunidades não deve ser apresentada

  @planejado @radar @reativacao @analise-estatica @cliente
  Cenário: BDD-RADAR-005 — Exibir cliente relacionado em cada oportunidade
    Dado que a listagem possui ao menos uma oportunidade
    Quando o usuário visualiza um item do radar
    Então o nome do cliente relacionado deve ser exibido no card

  @planejado @radar @reativacao @analise-estatica @oportunidade
  Cenário: BDD-RADAR-006 — Exibir tipo da oportunidade
    Dado que a listagem possui oportunidades de tipos diferentes
    Quando o usuário visualiza os cards do radar
    Então o campo "Tipo" deve indicar "Win-back" ou "Follow-up" conforme o candidato

  @planejado @radar @reativacao @analise-estatica @inatividade
  Cenário: BDD-RADAR-007 — Exibir motivo da reativação
    Dado que a listagem possui oportunidades elegíveis
    Quando o usuário visualiza um item do radar
    Então o campo "Motivo" deve apresentar o critério textual associado à elegibilidade

  @planejado @radar @reativacao @analise-estatica @inatividade
  Cenário: BDD-RADAR-008 — Exibir quantidade de dias de inatividade
    Dado que a listagem possui oportunidades elegíveis
    Quando o usuário visualiza um item do radar
    Então o campo "Inatividade" deve exibir a quantidade de dias sem atividade relevante

  @planejado @radar @reativacao @analise-estatica @inatividade
  Cenário: BDD-RADAR-009 — Exibir data da última atividade relevante
    Dado que a listagem possui oportunidades elegíveis
    Quando o usuário visualiza um item do radar
    Então o campo "Última atividade relevante" deve ser exibido em formato de data

  @planejado @radar @reativacao @analise-estatica @oportunidade
  Cenário: BDD-RADAR-010 — Exibir valor de referência quando disponível
    Dado que existe oportunidade com valor de orçamento ou cobrança associado
    Quando o usuário visualiza o card correspondente
    Então o campo "Referência" deve exibir valor monetário em BRL

  @planejado @radar @reativacao @analise-estatica @cta
  Cenário: BDD-RADAR-011 — Exibir CTA para abrir cliente relacionado
    Dado que a listagem possui oportunidades elegíveis
    Quando o usuário visualiza as ações do card
    Então deve existir CTA "Abrir cliente"
    E o destino deve apontar para "/clients/{clientId}"

  @planejado @radar @reativacao @analise-estatica @cta
  Cenário: BDD-RADAR-012 — Exibir CTA de criação de lembrete de reativação
    Dado que a listagem possui oportunidades elegíveis
    Quando o usuário visualiza as ações do card
    Então deve existir CTA "Criar lembrete de reativação"

  @planejado @radar @reativacao @analise-estatica @cta @lembrete
  Cenário: BDD-RADAR-013 — Exibir feedback após tentativa de criar lembrete
    Quando o usuário aciona o CTA de criar lembrete em uma oportunidade elegível
    Então a tela deve exibir mensagem de retorno de sucesso ou erro
    E a mensagem deve permanecer contextualizada ao fluxo do radar

  @planejado @radar @reativacao @analise-estatica @listagem
  Cenário: BDD-RADAR-014 — Filtrar oportunidades por tipo Win-back
    Dado que existem oportunidades de múltiplos tipos
    Quando o usuário aplica o filtro "Win-back"
    Então a listagem deve exibir apenas oportunidades do tipo Win-back

  @planejado @radar @reativacao @analise-estatica @listagem
  Cenário: BDD-RADAR-015 — Filtrar oportunidades por tipo Follow-up
    Dado que existem oportunidades de múltiplos tipos
    Quando o usuário aplica o filtro "Follow-up"
    Então a listagem deve exibir apenas oportunidades do tipo Follow-up

  @planejado @radar @reativacao @analise-estatica @listagem
  Cenário: BDD-RADAR-016 — Reexibir todas as oportunidades pelo filtro Todos
    Dado que um filtro específico foi aplicado anteriormente
    Quando o usuário aplica o filtro "Todos"
    Então a listagem deve voltar a exibir todos os tipos elegíveis

  @planejado @radar @reativacao @analise-estatica @prioridade @oportunidade
  Cenário: BDD-RADAR-017 — Ordenar oportunidades por prioridade e inatividade
    Dado que existem múltiplas oportunidades elegíveis
    Quando a listagem é carregada
    Então oportunidades de Win-back devem ter prioridade sobre Follow-up
    E dentro do mesmo tipo a ordenação deve considerar maior inatividade primeiro

  @planejado @radar @reativacao @analise-estatica @qualidade
  Cenário: BDD-RADAR-018 — Evitar oportunidades duplicadas por lembrete equivalente ativo
    Dado que existe lembrete pendente equivalente para um cliente elegível
    Quando o radar calcula as oportunidades
    Então o cliente não deve ser exibido como nova oportunidade de reativação duplicada

  @planejado @radar @reativacao @analise-estatica @navegacao @refresh
  Cenário: BDD-RADAR-019 — Manter carregamento consistente após refresh
    Quando o usuário recarrega a rota "/reactivation-radar"
    Então o módulo deve reprocessar os candidatos com base no estado atual dos dados
    E deve manter comportamento consistente de listagem ou estado vazio

  @planejado @radar @reativacao @analise-estatica @navegacao
  Cenário: BDD-RADAR-020 — Navegar entre Dashboard e Radar de reativação
    Quando o usuário alterna entre Dashboard e Radar de reativação pela navegação principal
    Então as rotas devem permanecer acessíveis
    E o contexto operacional do Radar deve continuar disponível ao retornar

  @planejado @radar @reativacao @analise-estatica @responsivo @desktop
  Cenário: BDD-RADAR-021 — Preservar usabilidade em viewport desktop
    Quando o módulo for aberto em viewport desktop
    Então filtros, cards e CTAs devem permanecer legíveis e acionáveis
    E o conteúdo não deve apresentar sobreposição ou corte indevido

  @planejado @radar @reativacao @analise-estatica @responsivo @mobile
  Cenário: BDD-RADAR-022 — Preservar usabilidade em viewport mobile-like
    Quando o módulo for aberto em viewport mobile-like
    Então filtros, cards e CTAs devem permanecer legíveis e acionáveis
    E a tela não deve exibir placeholders, textos técnicos ou mensagens confusas
