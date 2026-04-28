# Status: Planejado.
# Base de análise: inspeção estática do projeto firmus-app.
# Observação: Estes cenários BDD descrevem o comportamento esperado do módulo DAS e ainda precisam de execução manual via navegador em ciclo futuro.

Funcionalidade: Acompanhamento de DAS no Firmus
  Como usuário autenticado do Firmus
  Quero acompanhar competências mensais de DAS com status e direcionamento oficial
  Para organizar minha rotina fiscal sem substituir o canal oficial de emissão e pagamento

  Contexto:
    Dado que o usuário está autenticado no Firmus
    E possui acesso ao módulo DAS no plano atual
    E a navegação interna está disponível

  @planejado @das @analise-estatica @smoke @navegacao
  Cenário: BDD-DAS-001 — Acessar a página de DAS pela rota interna
    Quando o usuário acessa a rota "/das"
    Então a página do módulo DAS deve carregar sem erro inesperado
    E o cabeçalho deve identificar o módulo como "DAS"
    E o conteúdo principal deve permanecer utilizável

  @planejado @das @analise-estatica @qualidade
  Cenário: BDD-DAS-002 — Exibir identificação visual e mensagem principal do módulo
    Quando o usuário visualiza o topo da página de DAS
    Então deve existir o título "DAS"
    E deve existir uma descrição orientando acompanhamento mensal de competências
    E a descrição deve informar que emissão e pagamento oficial acontecem fora do Firmus

  @planejado @das @analise-estatica @status @competencia
  Cenário: BDD-DAS-003 — Exibir lista de competências quando houver registros internos
    Dado que existem registros de DAS disponíveis no armazenamento interno
    Quando o usuário acessa o módulo DAS
    Então a lista de registros deve ser exibida
    E cada item deve apresentar a competência no formato mês/ano
    E cada item deve apresentar status legível

  @planejado @das @analise-estatica @status @pendente
  Cenário: BDD-DAS-004 — Exibir estado pendente de forma compreensível
    Dado que existe registro de DAS com status pendente
    Quando o usuário visualiza o card da competência
    Então o status deve aparecer como "Pendente"
    E o indicador visual de status deve ser exibido

  @planejado @das @analise-estatica @status @pago
  Cenário: BDD-DAS-005 — Exibir estado pago de forma compreensível
    Dado que existe registro de DAS marcado como pago
    Quando o usuário visualiza o card da competência
    Então o status deve aparecer como "Pago"
    E a informação temporal deve destacar "Pago em"

  @planejado @das @analise-estatica @status @vencimento
  Cenário: BDD-DAS-006 — Exibir estado vencido quando competência pendente ultrapassar a data limite
    Dado que existe registro de DAS pendente com vencimento já ultrapassado
    Quando o usuário visualiza o card da competência
    Então o status exibido deve ser "Vencido"
    E o indicador visual de alerta deve ser exibido

  @planejado @das @analise-estatica @vencimento @prazo
  Cenário: BDD-DAS-007 — Exibir vencimento estimado por competência
    Dado que existe competência válida no formato "AAAA-MM"
    Quando o usuário visualiza os detalhes do registro
    Então o campo "Vencimento estimado" deve ser exibido
    E a data deve ser apresentada em formato de data legível para PT-BR

  @planejado @das @analise-estatica @competencia
  Cenário: BDD-DAS-008 — Exibir competência mensal em formato operacional
    Dado que o registro possui competência "2026-04"
    Quando o usuário visualiza o campo de competência
    Então o valor deve ser exibido como "04/2026"
    E não deve exibir formato técnico bruto para o usuário final

  @planejado @das @analise-estatica @status
  Cenário: BDD-DAS-009 — Exibir campo temporal como "Atualizado em" para registro não pago
    Dado que existe registro de DAS com status pendente
    Quando o usuário visualiza os metadados do item
    Então deve ser exibido o rótulo "Atualizado em"
    E o valor deve mostrar data válida

  @planejado @das @analise-estatica @estado-vazio @smoke
  Cenário: BDD-DAS-010 — Exibir estado vazio seguro quando não houver registros
    Dado que não existem registros de DAS disponíveis
    Quando o usuário acessa o módulo DAS
    Então deve ser exibida mensagem de estado vazio
    E deve ser exibida orientação de que emissão e pagamento oficial acontecem fora do Firmus
    E a tela não deve quebrar nem ficar em branco

  @planejado @das @analise-estatica @canal-oficial @handoff
  Cenário: BDD-DAS-011 — Exibir CTA para abrir canal oficial no estado vazio
    Dado que o módulo DAS está em estado vazio
    Quando o usuário visualiza as ações disponíveis
    Então deve existir o CTA "Abrir canal oficial do DAS"
    E o link deve apontar para domínio oficial da Receita
    E o destino deve abrir em nova aba

  @planejado @das @analise-estatica @canal-oficial @handoff
  Cenário: BDD-DAS-012 — Exibir CTA de handoff oficial em cada registro
    Dado que existe ao menos um registro de DAS na lista
    Quando o usuário visualiza as ações do item
    Então deve existir o CTA "Ir para canal oficial"
    E o link deve apontar para canal oficial da Receita
    E o destino deve abrir em nova aba

  @planejado @das @analise-estatica @status @fiscal
  Cenário: BDD-DAS-013 — Permitir marcar registro como pago no painel interno
    Dado que existe registro de DAS pendente
    Quando o usuário aciona "Marcar como pago"
    Então o status do item deve mudar para "Pago"
    E deve existir feedback textual de confirmação

  @planejado @das @analise-estatica @fiscal @canal-oficial
  Cenário: BDD-DAS-014 — Comunicar limite de responsabilidade fiscal do Firmus
    Quando o usuário revisa os textos do módulo DAS
    Então deve ficar claro que o processo oficial acontece fora do Firmus
    E o módulo deve se posicionar como acompanhamento operacional

  @planejado @das @analise-estatica @navegacao
  Cenário: BDD-DAS-015 — Navegar entre Dashboard e DAS mantendo a sessão
    Dado que o usuário está autenticado
    Quando navega da Dashboard para o módulo DAS e retorna
    Então a navegação deve ocorrer sem perda de sessão
    E as rotas internas devem permanecer acessíveis

  @planejado @das @analise-estatica @refresh
  Cenário: BDD-DAS-016 — Manter módulo DAS utilizável após refresh
    Dado que o usuário está na página de DAS
    Quando atualiza a página do navegador
    Então o módulo deve recarregar com segurança
    E o estado da interface não deve apresentar erro técnico ao usuário

  @planejado @das @analise-estatica @responsivo @desktop
  Cenário: BDD-DAS-017 — Exibir layout organizado do DAS em viewport desktop
    Quando o usuário acessa o módulo DAS em viewport desktop
    Então os cards de competência devem manter legibilidade
    E os CTAs de ação devem continuar acessíveis
    E não deve ocorrer overflow horizontal

  @planejado @das @analise-estatica @responsivo @mobile
  Cenário: BDD-DAS-018 — Exibir layout utilizável do DAS em viewport mobile-like
    Quando o usuário acessa o módulo DAS em viewport mobile-like
    Então os blocos de informação devem se adaptar à largura da tela
    E textos e botões devem permanecer legíveis e acionáveis
    E não deve haver conteúdo truncado

  @planejado @das @analise-estatica @valor @qualidade
  Cenário: BDD-DAS-019 — Não exibir placeholders, dados técnicos ou mensagens confusas
    Quando o usuário revisa mensagens, labels e campos do módulo DAS
    Então não deve haver textos como "undefined", "null" ou placeholders temporários
    E mensagens técnicas internas não devem ser exibidas ao usuário final

  @planejado @das @analise-estatica @valor-operacional @qualidade
  Cenário: BDD-DAS-020 — Comunicar claramente o valor operacional do acompanhamento de DAS
    Quando o usuário consulta o módulo DAS
    Então deve entender rapidamente competência, status e vencimento estimado
    E deve identificar com clareza o próximo passo de ir ao canal oficial quando necessário
