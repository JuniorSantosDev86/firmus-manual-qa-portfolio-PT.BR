# Status: Planejado.
# Base de análise: inspeção estática do projeto firmus-app.
# Observação: Estes cenários BDD descrevem o comportamento esperado do módulo Logs de atividade e ainda precisam de execução manual via navegador em ciclo futuro.

@planejado @logs @logs-de-atividade @analise-estatica
Funcionalidade: Logs de atividade
  Como usuário autenticado do Firmus
  Quero acessar o módulo Logs de atividade
  Para rastrear eventos internos de operação, segurança, automação e privacidade

  Contexto:
    Dado que o usuário está autenticado no Firmus
    E a rota interna "/activity-logs" está disponível no menu com label "Logs de atividade"

  @smoke @navegacao
  Cenário: BDD-LOG-001 — Acessar a página de Logs de atividade
    Quando o usuário acessa a rota "/activity-logs"
    Então a página deve exibir o título "Logs de atividade"
    E deve exibir a descrição do módulo com foco em contexto operacional, segurança e rastreabilidade

  @smoke @qualidade
  Cenário: BDD-LOG-002 — Carregar estrutura principal do módulo
    Quando a página de Logs de atividade é carregada
    Então a área de filtros deve ser exibida
    E a área de trilha recente deve ser exibida
    E o contador de "evento(s) encontrado(s)" deve ser apresentado

  @listagem @timeline
  Cenário: BDD-LOG-003 — Exibir listagem de logs quando houver registros
    Dado que existem eventos no fonte de dados de auditoria
    Quando o usuário acessa os Logs de atividade
    Então a trilha recente deve listar os eventos em cards
    E cada card deve exibir categoria, status, data/hora e mensagem

  @estado-vazio
  Cenário: BDD-LOG-004 — Exibir estado vazio quando não houver correspondência
    Quando o usuário aplica um filtro que não retorna eventos
    Então o módulo deve exibir o estado vazio "Nenhum evento corresponde aos filtros atuais."
    E não deve quebrar a estrutura da página

  @data @timeline
  Cenário: BDD-LOG-005 — Exibir data e hora de forma compreensível
    Quando os eventos são renderizados na lista
    Então cada item deve exibir timestamp formatado para idioma pt-BR
    E o elemento também deve manter o atributo técnico dateTime com o valor original

  @evento @rastreabilidade
  Cenário: BDD-LOG-006 — Exibir descrição clara da atividade
    Quando um evento é apresentado na trilha
    Então a mensagem principal deve ser compreensível para usuário final
    E pode incluir contexto adicional como rota, usuário informado ou revisão

  @evento @listagem
  Cenário: BDD-LOG-007 — Exibir categoria do evento
    Quando os eventos são listados
    Então cada item deve apresentar badge de categoria
    E as categorias disponíveis devem seguir Operação, Segurança, Automação e Privacidade

  @evento @listagem
  Cenário: BDD-LOG-008 — Exibir status do evento
    Quando os eventos são listados
    Então cada item deve apresentar status com rótulo "Sucesso", "Falha" ou "Informativo"
    E o status deve ser coerente com a ação registrada

  @rastreabilidade @listagem
  Cenário: BDD-LOG-009 — Exibir ator e entidade relacionada quando disponíveis
    Quando um evento possuir ator ou entidade no metadata
    Então o item deve exibir "Ator" com o valor resolvido
    E deve exibir "Entidade" com label, tipo e/ou identificador quando existir

  @filtro @smoke
  Cenário: BDD-LOG-010 — Filtrar por categoria
    Quando o usuário seleciona uma categoria e aplica o filtro
    Então somente eventos da categoria selecionada devem permanecer na listagem
    E a opção "Todos" deve remover a restrição de categoria

  @filtro @smoke
  Cenário: BDD-LOG-011 — Filtrar por busca textual
    Quando o usuário informa um termo de busca e aplica
    Então a listagem deve retornar apenas eventos compatíveis com ação, mensagem, ator, entidade ou metadata
    E o termo deve ser tratado sem diferença entre maiúsculas e minúsculas

  @filtro
  Cenário: BDD-LOG-012 — Limpar filtros aplicados
    Dado que há filtros ativos de categoria e busca
    Quando o usuário aciona "Limpar"
    Então a navegação deve retornar para "/activity-logs" sem querystring de filtro
    E a listagem deve voltar ao estado padrão

  @ordenacao @timeline
  Cenário: BDD-LOG-013 — Ordenar eventos da trilha por data decrescente
    Quando a listagem possui múltiplos eventos
    Então os eventos mais recentes devem aparecer primeiro
    E em empate de timestamp o desempate deve ser determinístico por identificador

  @listagem
  Cenário: BDD-LOG-014 — Carregar mais eventos quando houver paginação
    Dado que existem mais eventos do que o limite atual
    Quando o usuário aciona "Carregar mais"
    Então a página deve atualizar o parâmetro limit sem ultrapassar o máximo permitido
    E novos eventos devem ser disponibilizados na trilha

  @rastreabilidade @evento
  Cenário: BDD-LOG-015 — Exibir eventos de integração entre módulos quando houver registro
    Quando ações como login, logout, revisão de privacidade, aprovação de orçamento ou cobrança paga são registradas
    Então os Logs de atividade devem refletir esses eventos com categoria e mensagem correspondentes

  @rastreabilidade @qualidade
  Cenário: BDD-LOG-016 — Evitar duplicação indevida na apresentação
    Quando o módulo renderiza a trilha de eventos
    Então cada evento deve aparecer uma única vez por identificador
    E não deve haver duplicação visual não justificada

  @refresh
  Cenário: BDD-LOG-017 — Manter módulo utilizável após refresh
    Quando o usuário atualiza a página de Logs de atividade
    Então a página deve continuar acessível para sessão autenticada
    E os filtros informados na URL devem ser reaplicados

  @desktop @mobile @responsivo
  Cenário: BDD-LOG-018 — Preservar legibilidade em desktop e mobile-like
    Quando o módulo é acessado em viewports desktop e mobile-like
    Então filtros, botões, badges e textos devem permanecer legíveis
    E não deve ocorrer sobreposição que inviabilize o entendimento da trilha
