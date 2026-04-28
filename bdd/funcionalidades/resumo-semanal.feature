# Status: Planejado. Cenários ainda não executados no ciclo 01.

Funcionalidade: Resumo semanal
  Como usuário autenticado do Firmus
  Quero consultar o resumo semanal
  Para acompanhar desempenho recente e próximas ações

  Contexto:
    Dado que o usuário está autenticado no Firmus
    E acessou a área de Resumo semanal

  @planejado @week
  Cenário: BDD-WEEK-001 — Acesso à página
    Quando o usuário executa o fluxo principal da funcionalidade
    Então o sistema deve apresentar as informações esperadas de forma clara
    E a ação disponível deve conduzir para o destino correto quando aplicável
    E não deve haver placeholders, duplicações ou mensagens confusas

  @planejado @week
  Cenário: BDD-WEEK-002 — Exibição do resumo
    Quando o usuário executa o fluxo principal da funcionalidade
    Então o sistema deve apresentar as informações esperadas de forma clara
    E a ação disponível deve conduzir para o destino correto quando aplicável
    E não deve haver placeholders, duplicações ou mensagens confusas

  @planejado @week
  Cenário: BDD-WEEK-003 — Estado vazio
    Quando o usuário executa a ação com dados ausentes, inválidos ou em estado de risco
    Então o sistema deve impedir comportamento inconsistente ou inseguro
    E deve apresentar orientação clara, sem criar registros indevidos
    E a tela deve permanecer estável e compreensível para o usuário

  @planejado @week
  Cenário: BDD-WEEK-004 — Indicadores da semana
    Quando o usuário executa o fluxo principal da funcionalidade
    Então o sistema deve apresentar as informações esperadas de forma clara
    E a ação disponível deve conduzir para o destino correto quando aplicável
    E não deve haver placeholders, duplicações ou mensagens confusas

  @planejado @week
  Cenário: BDD-WEEK-005 — Atividades recentes
    Quando o usuário executa o fluxo principal da funcionalidade
    Então o sistema deve apresentar as informações esperadas de forma clara
    E a ação disponível deve conduzir para o destino correto quando aplicável
    E não deve haver placeholders, duplicações ou mensagens confusas

  @planejado @week
  Cenário: BDD-WEEK-006 — Valores financeiros se disponíveis
    Quando o usuário executa o fluxo principal da funcionalidade
    Então o sistema deve apresentar as informações esperadas de forma clara
    E a ação disponível deve conduzir para o destino correto quando aplicável
    E não deve haver placeholders, duplicações ou mensagens confusas

  @planejado @week
  Cenário: BDD-WEEK-007 — Próximas ações
    Quando o usuário executa o fluxo principal da funcionalidade
    Então o sistema deve apresentar as informações esperadas de forma clara
    E a ação disponível deve conduzir para o destino correto quando aplicável
    E não deve haver placeholders, duplicações ou mensagens confusas

  @planejado @week
  Cenário: BDD-WEEK-008 — Refresh e responsividade
    Quando o usuário acessa a funcionalidade no viewport definido
    Então o conteúdo deve permanecer legível, alinhado e operável
    E botões, cards, listas e textos não devem sobrepor ou extrapolar a tela
    E a navegação principal deve continuar acessível
