# Status: Planejado. Cenários ainda não executados no ciclo 01.

Funcionalidade: NFSe
  Como usuário autenticado do Firmus
  Quero consultar informações relacionadas à NFSe
  Para acompanhar registros fiscais de serviço com clareza

  Contexto:
    Dado que o usuário está autenticado no Firmus
    E acessou a área de NFSe

  @planejado @nfse
  Cenário: BDD-NFSE-001 — Acesso à página
    Quando o usuário executa o fluxo principal da funcionalidade
    Então o sistema deve apresentar as informações esperadas de forma clara
    E a ação disponível deve conduzir para o destino correto quando aplicável
    E não deve haver placeholders, duplicações ou mensagens confusas

  @planejado @nfse
  Cenário: BDD-NFSE-002 — Registros existentes
    Quando o usuário executa o fluxo principal da funcionalidade
    Então o sistema deve apresentar as informações esperadas de forma clara
    E a ação disponível deve conduzir para o destino correto quando aplicável
    E não deve haver placeholders, duplicações ou mensagens confusas

  @planejado @nfse
  Cenário: BDD-NFSE-003 — Estado vazio
    Quando o usuário executa a ação com dados ausentes, inválidos ou em estado de risco
    Então o sistema deve impedir comportamento inconsistente ou inseguro
    E deve apresentar orientação clara, sem criar registros indevidos
    E a tela deve permanecer estável e compreensível para o usuário

  @planejado @nfse
  Cenário: BDD-NFSE-004 — Status fiscal
    Quando o usuário executa o fluxo principal da funcionalidade
    Então o sistema deve apresentar as informações esperadas de forma clara
    E a ação disponível deve conduzir para o destino correto quando aplicável
    E não deve haver placeholders, duplicações ou mensagens confusas

  @planejado @nfse
  Cenário: BDD-NFSE-005 — Referência do provedor e número
    Quando o usuário executa o fluxo principal da funcionalidade
    Então o sistema deve apresentar as informações esperadas de forma clara
    E a ação disponível deve conduzir para o destino correto quando aplicável
    E não deve haver placeholders, duplicações ou mensagens confusas

  @planejado @nfse
  Cenário: BDD-NFSE-006 — Data de emissão
    Quando o usuário executa o fluxo principal da funcionalidade
    Então o sistema deve apresentar as informações esperadas de forma clara
    E a ação disponível deve conduzir para o destino correto quando aplicável
    E não deve haver placeholders, duplicações ou mensagens confusas

  @planejado @nfse
  Cenário: BDD-NFSE-007 — Não duplicar informações no card
    Quando o usuário executa a ação com dados ausentes, inválidos ou em estado de risco
    Então o sistema deve impedir comportamento inconsistente ou inseguro
    E deve apresentar orientação clara, sem criar registros indevidos
    E a tela deve permanecer estável e compreensível para o usuário

  @planejado @nfse
  Cenário: BDD-NFSE-008 — Desktop mobile e refresh
    Quando o usuário acessa a funcionalidade no viewport definido
    Então o conteúdo deve permanecer legível, alinhado e operável
    E botões, cards, listas e textos não devem sobrepor ou extrapolar a tela
    E a navegação principal deve continuar acessível
