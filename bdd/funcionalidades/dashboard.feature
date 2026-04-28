# Status: Planejado. Cenários ainda não executados no ciclo 01.

Funcionalidade: Dashboard
  Como usuário autenticado do Firmus
  Quero visualizar a visão inicial da operação
  Para entender próximos passos, onboarding e atalhos principais

  Contexto:
    Dado que o usuário está autenticado no Firmus
    E acessou a área de Dashboard

  @planejado @dash
  Cenário: BDD-DASH-001 — Carregamento após login
    Quando o usuário executa o fluxo principal da funcionalidade
    Então o sistema deve apresentar as informações esperadas de forma clara
    E a ação disponível deve conduzir para o destino correto quando aplicável
    E não deve haver placeholders, duplicações ou mensagens confusas

  @planejado @dash
  Cenário: BDD-DASH-002 — Sidebar e header visíveis
    Quando o usuário executa o fluxo principal da funcionalidade
    Então o sistema deve apresentar as informações esperadas de forma clara
    E a ação disponível deve conduzir para o destino correto quando aplicável
    E não deve haver placeholders, duplicações ou mensagens confusas

  @planejado @dash
  Cenário: BDD-DASH-003 — Hero Bem-vindo ao Firmus
    Quando o usuário executa o fluxo principal da funcionalidade
    Então o sistema deve apresentar as informações esperadas de forma clara
    E a ação disponível deve conduzir para o destino correto quando aplicável
    E não deve haver placeholders, duplicações ou mensagens confusas

  @planejado @dash
  Cenário: BDD-DASH-004 — CTAs para orçamentos e perfil
    Quando o usuário executa o fluxo principal da funcionalidade
    Então o sistema deve apresentar as informações esperadas de forma clara
    E a ação disponível deve conduzir para o destino correto quando aplicável
    E não deve haver placeholders, duplicações ou mensagens confusas

  @planejado @dash
  Cenário: BDD-DASH-005 — Onboarding com progresso
    Quando o usuário executa o fluxo principal da funcionalidade
    Então o sistema deve apresentar as informações esperadas de forma clara
    E a ação disponível deve conduzir para o destino correto quando aplicável
    E não deve haver placeholders, duplicações ou mensagens confusas

  @planejado @dash
  Cenário: BDD-DASH-006 — Checklist com itens pendentes e concluídos
    Quando o usuário executa o fluxo principal da funcionalidade
    Então o sistema deve apresentar as informações esperadas de forma clara
    E a ação disponível deve conduzir para o destino correto quando aplicável
    E não deve haver placeholders, duplicações ou mensagens confusas

  @planejado @dash
  Cenário: BDD-DASH-007 — Refresh sem perda de contexto
    Quando o usuário atualiza a página durante o uso da funcionalidade
    Então o sistema deve manter o estado permitido para a sessão atual
    E não deve exibir placeholders, duplicações ou erro inesperado
    E o usuário deve conseguir continuar o fluxo

  @planejado @dash
  Cenário: BDD-DASH-008 — Ausência de placeholders e duplicações
    Quando o usuário executa a ação com dados ausentes, inválidos ou em estado de risco
    Então o sistema deve impedir comportamento inconsistente ou inseguro
    E deve apresentar orientação clara, sem criar registros indevidos
    E a tela deve permanecer estável e compreensível para o usuário
