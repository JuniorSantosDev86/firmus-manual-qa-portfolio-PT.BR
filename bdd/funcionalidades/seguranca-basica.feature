# Status: Planejado. Cenários ainda não executados no ciclo 01.

Funcionalidade: Segurança básica manual
  Como usuário e avaliador de QA
  Quero validar segurança básica sem testes invasivos
  Para reduzir riscos visíveis de acesso indevido e vazamento técnico

  Contexto:
    Dado que o usuário está autenticado no Firmus
    E acessou a área de Segurança básica manual

  @planejado @sec
  Cenário: BDD-SEC-001 — Rotas protegidas
    Quando o usuário executa o fluxo principal da funcionalidade
    Então o sistema deve apresentar as informações esperadas de forma clara
    E a ação disponível deve conduzir para o destino correto quando aplicável
    E não deve haver placeholders, duplicações ou mensagens confusas

  @planejado @sec
  Cenário: BDD-SEC-002 — Logout
    Quando o usuário executa o fluxo principal da funcionalidade
    Então o sistema deve apresentar as informações esperadas de forma clara
    E a ação disponível deve conduzir para o destino correto quando aplicável
    E não deve haver placeholders, duplicações ou mensagens confusas

  @planejado @sec
  Cenário: BDD-SEC-003 — Acesso após logout
    Quando o usuário executa o fluxo principal da funcionalidade
    Então o sistema deve apresentar as informações esperadas de forma clara
    E a ação disponível deve conduzir para o destino correto quando aplicável
    E não deve haver placeholders, duplicações ou mensagens confusas

  @planejado @sec
  Cenário: BDD-SEC-004 — Dados sensíveis fora de telas públicas
    Quando o usuário executa o fluxo principal da funcionalidade
    Então o sistema deve apresentar as informações esperadas de forma clara
    E a ação disponível deve conduzir para o destino correto quando aplicável
    E não deve haver placeholders, duplicações ou mensagens confusas

  @planejado @sec
  Cenário: BDD-SEC-005 — Erros sem vazamento técnico
    Quando o usuário executa o fluxo principal da funcionalidade
    Então o sistema deve apresentar as informações esperadas de forma clara
    E a ação disponível deve conduzir para o destino correto quando aplicável
    E não deve haver placeholders, duplicações ou mensagens confusas

  @planejado @sec
  Cenário: BDD-SEC-006 — Entradas potencialmente perigosas seguras
    Quando o usuário executa a ação com dados ausentes, inválidos ou em estado de risco
    Então o sistema deve impedir comportamento inconsistente ou inseguro
    E deve apresentar orientação clara, sem criar registros indevidos
    E a tela deve permanecer estável e compreensível para o usuário

  @planejado @sec
  Cenário: BDD-SEC-007 — Sem exploração invasiva
    Quando o usuário executa o fluxo principal da funcionalidade
    Então o sistema deve apresentar as informações esperadas de forma clara
    E a ação disponível deve conduzir para o destino correto quando aplicável
    E não deve haver placeholders, duplicações ou mensagens confusas

  @planejado @sec
  Cenário: BDD-SEC-008 — Registro de limitações
    Quando o usuário executa o fluxo principal da funcionalidade
    Então o sistema deve apresentar as informações esperadas de forma clara
    E a ação disponível deve conduzir para o destino correto quando aplicável
    E não deve haver placeholders, duplicações ou mensagens confusas
