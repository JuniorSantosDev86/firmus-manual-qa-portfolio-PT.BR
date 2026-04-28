# Status: Planejado. Cenários ainda não executados no ciclo 01.

Funcionalidade: Serviços
  Como usuário autenticado do Firmus
  Quero cadastrar e manter serviços
  Para reutilizá-los em orçamentos e organizar minha operação

  Contexto:
    Dado que o usuário está autenticado no Firmus
    E acessou a área de Serviços

  @planejado @srv
  Cenário: BDD-SRV-001 — Listagem e estado vazio
    Quando o usuário executa a ação com dados ausentes, inválidos ou em estado de risco
    Então o sistema deve impedir comportamento inconsistente ou inseguro
    E deve apresentar orientação clara, sem criar registros indevidos
    E a tela deve permanecer estável e compreensível para o usuário

  @planejado @srv
  Cenário: BDD-SRV-002 — Cadastro válido
    Quando o usuário executa o fluxo principal da funcionalidade
    Então o sistema deve apresentar as informações esperadas de forma clara
    E a ação disponível deve conduzir para o destino correto quando aplicável
    E não deve haver placeholders, duplicações ou mensagens confusas

  @planejado @srv
  Cenário: BDD-SRV-003 — Campos vazios
    Quando o usuário executa a ação com dados ausentes, inválidos ou em estado de risco
    Então o sistema deve impedir comportamento inconsistente ou inseguro
    E deve apresentar orientação clara, sem criar registros indevidos
    E a tela deve permanecer estável e compreensível para o usuário

  @planejado @srv
  Cenário: BDD-SRV-004 — Preço inválido
    Quando o usuário executa a ação com dados ausentes, inválidos ou em estado de risco
    Então o sistema deve impedir comportamento inconsistente ou inseguro
    E deve apresentar orientação clara, sem criar registros indevidos
    E a tela deve permanecer estável e compreensível para o usuário

  @planejado @srv
  Cenário: BDD-SRV-005 — Descrição inválida
    Quando o usuário executa a ação com dados ausentes, inválidos ou em estado de risco
    Então o sistema deve impedir comportamento inconsistente ou inseguro
    E deve apresentar orientação clara, sem criar registros indevidos
    E a tela deve permanecer estável e compreensível para o usuário

  @planejado @srv
  Cenário: BDD-SRV-006 — Edição quando disponível
    Quando o usuário executa o fluxo principal da funcionalidade
    Então o sistema deve apresentar as informações esperadas de forma clara
    E a ação disponível deve conduzir para o destino correto quando aplicável
    E não deve haver placeholders, duplicações ou mensagens confusas

  @planejado @srv
  Cenário: BDD-SRV-007 — Exclusão quando disponível
    Quando o usuário executa o fluxo principal da funcionalidade
    Então o sistema deve apresentar as informações esperadas de forma clara
    E a ação disponível deve conduzir para o destino correto quando aplicável
    E não deve haver placeholders, duplicações ou mensagens confusas

  @planejado @srv
  Cenário: BDD-SRV-008 — Uso em orçamento e refresh
    Quando o usuário atualiza a página durante o uso da funcionalidade
    Então o sistema deve manter o estado permitido para a sessão atual
    E não deve exibir placeholders, duplicações ou erro inesperado
    E o usuário deve conseguir continuar o fluxo
