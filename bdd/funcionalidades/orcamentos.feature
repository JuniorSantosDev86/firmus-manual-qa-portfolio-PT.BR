# Status: Planejado. Cenários ainda não executados no ciclo 01.

Funcionalidade: Orçamentos
  Como usuário autenticado do Firmus
  Quero criar e acompanhar orçamentos
  Para converter solicitações em propostas claras para clientes

  Contexto:
    Dado que o usuário está autenticado no Firmus
    E acessou a área de Orçamentos

  @planejado @quo
  Cenário: BDD-QUO-001 — Listagem e estado vazio
    Quando o usuário executa a ação com dados ausentes, inválidos ou em estado de risco
    Então o sistema deve impedir comportamento inconsistente ou inseguro
    E deve apresentar orientação clara, sem criar registros indevidos
    E a tela deve permanecer estável e compreensível para o usuário

  @planejado @quo
  Cenário: BDD-QUO-002 — Criação válida
    Quando o usuário executa o fluxo principal da funcionalidade
    Então o sistema deve apresentar as informações esperadas de forma clara
    E a ação disponível deve conduzir para o destino correto quando aplicável
    E não deve haver placeholders, duplicações ou mensagens confusas

  @planejado @quo
  Cenário: BDD-QUO-003 — Campos vazios ou inválidos
    Quando o usuário executa a ação com dados ausentes, inválidos ou em estado de risco
    Então o sistema deve impedir comportamento inconsistente ou inseguro
    E deve apresentar orientação clara, sem criar registros indevidos
    E a tela deve permanecer estável e compreensível para o usuário

  @planejado @quo
  Cenário: BDD-QUO-004 — Valor monetário inválido
    Quando o usuário executa a ação com dados ausentes, inválidos ou em estado de risco
    Então o sistema deve impedir comportamento inconsistente ou inseguro
    E deve apresentar orientação clara, sem criar registros indevidos
    E a tela deve permanecer estável e compreensível para o usuário

  @planejado @quo
  Cenário: BDD-QUO-005 — Texto em campo numérico
    Quando o usuário executa o fluxo principal da funcionalidade
    Então o sistema deve apresentar as informações esperadas de forma clara
    E a ação disponível deve conduzir para o destino correto quando aplicável
    E não deve haver placeholders, duplicações ou mensagens confusas

  @planejado @quo
  Cenário: BDD-QUO-006 — Status e detalhes
    Quando o usuário executa o fluxo principal da funcionalidade
    Então o sistema deve apresentar as informações esperadas de forma clara
    E a ação disponível deve conduzir para o destino correto quando aplicável
    E não deve haver placeholders, duplicações ou mensagens confusas

  @planejado @quo
  Cenário: BDD-QUO-007 — Link público se disponível
    Quando o usuário executa o fluxo principal da funcionalidade
    Então o sistema deve apresentar as informações esperadas de forma clara
    E a ação disponível deve conduzir para o destino correto quando aplicável
    E não deve haver placeholders, duplicações ou mensagens confusas

  @planejado @quo
  Cenário: BDD-QUO-008 — Responsividade com BUG-006
    Quando o usuário acessa a funcionalidade no viewport definido
    Então o conteúdo deve permanecer legível, alinhado e operável
    E botões, cards, listas e textos não devem sobrepor ou extrapolar a tela
    E a navegação principal deve continuar acessível
