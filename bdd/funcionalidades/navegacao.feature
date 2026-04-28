# Status: Planejado. Cenários ainda não executados no ciclo 01.

Funcionalidade: Navegação geral
  Como usuário autenticado do Firmus
  Quero navegar pelos módulos visíveis
  Para acessar cada área sem links quebrados ou labels inconsistentes

  Contexto:
    Dado que o usuário está autenticado no Firmus
    E acessou a área de Navegação geral

  @planejado @nav
  Cenário: BDD-NAV-001 — Itens da sidebar
    Quando o usuário executa o fluxo principal da funcionalidade
    Então o sistema deve apresentar as informações esperadas de forma clara
    E a ação disponível deve conduzir para o destino correto quando aplicável
    E não deve haver placeholders, duplicações ou mensagens confusas

  @planejado @nav
  Cenário: BDD-NAV-002 — Links quebrados
    Quando o usuário executa a ação com dados ausentes, inválidos ou em estado de risco
    Então o sistema deve impedir comportamento inconsistente ou inseguro
    E deve apresentar orientação clara, sem criar registros indevidos
    E a tela deve permanecer estável e compreensível para o usuário

  @planejado @nav
  Cenário: BDD-NAV-003 — Estado ativo do menu
    Quando o usuário executa o fluxo principal da funcionalidade
    Então o sistema deve apresentar as informações esperadas de forma clara
    E a ação disponível deve conduzir para o destino correto quando aplicável
    E não deve haver placeholders, duplicações ou mensagens confusas

  @planejado @nav
  Cenário: BDD-NAV-004 — Navegação desktop
    Quando o usuário acessa a funcionalidade no viewport definido
    Então o conteúdo deve permanecer legível, alinhado e operável
    E botões, cards, listas e textos não devem sobrepor ou extrapolar a tela
    E a navegação principal deve continuar acessível

  @planejado @nav
  Cenário: BDD-NAV-005 — Navegação mobile ou drawer
    Quando o usuário acessa a funcionalidade no viewport definido
    Então o conteúdo deve permanecer legível, alinhado e operável
    E botões, cards, listas e textos não devem sobrepor ou extrapolar a tela
    E a navegação principal deve continuar acessível

  @planejado @nav
  Cenário: BDD-NAV-006 — Retorno para dashboard
    Quando o usuário executa o fluxo principal da funcionalidade
    Então o sistema deve apresentar as informações esperadas de forma clara
    E a ação disponível deve conduzir para o destino correto quando aplicável
    E não deve haver placeholders, duplicações ou mensagens confusas

  @planejado @nav
  Cenário: BDD-NAV-007 — Logout
    Quando o usuário executa o fluxo principal da funcionalidade
    Então o sistema deve apresentar as informações esperadas de forma clara
    E a ação disponível deve conduzir para o destino correto quando aplicável
    E não deve haver placeholders, duplicações ou mensagens confusas

  @planejado @nav
  Cenário: BDD-NAV-008 — Rotas inexistentes
    Quando o usuário executa a ação com dados ausentes, inválidos ou em estado de risco
    Então o sistema deve impedir comportamento inconsistente ou inseguro
    E deve apresentar orientação clara, sem criar registros indevidos
    E a tela deve permanecer estável e compreensível para o usuário
