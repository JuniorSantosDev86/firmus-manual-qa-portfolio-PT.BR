# Status: Planejado. Cenários ainda não executados no ciclo 01.

Funcionalidade: Radar de reativação
  Como usuário autenticado do Firmus
  Quero identificar oportunidades de reativação
  Para retomar contato com clientes inativos

  Contexto:
    Dado que o usuário está autenticado no Firmus
    E acessou a área de Radar de reativação

  @planejado @radar
  Cenário: BDD-RADAR-001 — Acesso à página
    Quando o usuário executa o fluxo principal da funcionalidade
    Então o sistema deve apresentar as informações esperadas de forma clara
    E a ação disponível deve conduzir para o destino correto quando aplicável
    E não deve haver placeholders, duplicações ou mensagens confusas

  @planejado @radar
  Cenário: BDD-RADAR-002 — Clientes inativos se disponíveis
    Quando o usuário executa o fluxo principal da funcionalidade
    Então o sistema deve apresentar as informações esperadas de forma clara
    E a ação disponível deve conduzir para o destino correto quando aplicável
    E não deve haver placeholders, duplicações ou mensagens confusas

  @planejado @radar
  Cenário: BDD-RADAR-003 — Estado vazio
    Quando o usuário executa a ação com dados ausentes, inválidos ou em estado de risco
    Então o sistema deve impedir comportamento inconsistente ou inseguro
    E deve apresentar orientação clara, sem criar registros indevidos
    E a tela deve permanecer estável e compreensível para o usuário

  @planejado @radar
  Cenário: BDD-RADAR-004 — Critério de reativação
    Quando o usuário executa o fluxo principal da funcionalidade
    Então o sistema deve apresentar as informações esperadas de forma clara
    E a ação disponível deve conduzir para o destino correto quando aplicável
    E não deve haver placeholders, duplicações ou mensagens confusas

  @planejado @radar
  Cenário: BDD-RADAR-005 — Sugestão de ação
    Quando o usuário executa o fluxo principal da funcionalidade
    Então o sistema deve apresentar as informações esperadas de forma clara
    E a ação disponível deve conduzir para o destino correto quando aplicável
    E não deve haver placeholders, duplicações ou mensagens confusas

  @planejado @radar
  Cenário: BDD-RADAR-006 — Navegação para cliente
    Quando o usuário executa o fluxo principal da funcionalidade
    Então o sistema deve apresentar as informações esperadas de forma clara
    E a ação disponível deve conduzir para o destino correto quando aplicável
    E não deve haver placeholders, duplicações ou mensagens confusas

  @planejado @radar
  Cenário: BDD-RADAR-007 — Valor operacional claro
    Quando o usuário executa o fluxo principal da funcionalidade
    Então o sistema deve apresentar as informações esperadas de forma clara
    E a ação disponível deve conduzir para o destino correto quando aplicável
    E não deve haver placeholders, duplicações ou mensagens confusas

  @planejado @radar
  Cenário: BDD-RADAR-008 — Responsividade
    Quando o usuário acessa a funcionalidade no viewport definido
    Então o conteúdo deve permanecer legível, alinhado e operável
    E botões, cards, listas e textos não devem sobrepor ou extrapolar a tela
    E a navegação principal deve continuar acessível
