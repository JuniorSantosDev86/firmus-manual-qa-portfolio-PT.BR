# Status: Planejado.
# Base de análise: inspeção estática do projeto firmus-app.
# Observação: Estes cenários BDD descrevem o comportamento esperado do módulo Lembretes e ainda precisam de execução manual via navegador em ciclo futuro.

@planejado @lembretes @analise-estatica
Funcionalidade: Gestão de lembretes operacionais
  Como usuário autenticado do Firmus
  Quero registrar e acompanhar lembretes
  Para controlar ações operacionais pendentes do dia a dia

  Contexto:
    Dado que o usuário está autenticado no Firmus
    E o menu principal exibe a opção "Lembretes"

  @smoke @navegacao
  Cenário: BDD-LEM-001 — Acessar a rota de Lembretes
    Quando o usuário acessar a rota "/reminders"
    Então a página deve exibir o título "Lembretes"
    E deve exibir a descrição do módulo sobre registro de lembretes manuais e ações pendentes

  @smoke @listagem
  Cenário: BDD-LEM-002 — Carregar estrutura principal do módulo
    Quando a página de Lembretes for carregada
    Então devem ser exibidas as seções "Novo lembrete", "Pendentes" e "Concluídos"
    E o CTA "Criar lembrete" deve estar disponível no formulário

  @listagem @estado-vazio
  Cenário: BDD-LEM-003 — Exibir estado vazio de pendentes
    Dado que não existam lembretes com status pendente
    Quando a seção "Pendentes" for renderizada
    Então deve ser exibida a mensagem "Nenhum lembrete pendente."

  @listagem @estado-vazio
  Cenário: BDD-LEM-004 — Exibir estado vazio de concluídos
    Dado que não existam lembretes com status concluído
    Quando a seção "Concluídos" for renderizada
    Então deve ser exibida a mensagem "Nenhum lembrete concluído."

  @cadastro
  Cenário: BDD-LEM-005 — Exibir formulário de criação
    Quando o usuário acessar a seção "Novo lembrete"
    Então o formulário deve exibir os campos "Título", "Descrição", "Data", "Cliente" e "Cobrança"
    E o campo "Título" deve ser obrigatório

  @cadastro @validacao
  Cenário: BDD-LEM-006 — Impedir criação sem título
    Quando o usuário tentar criar lembrete com "Título" vazio
    Então o lembrete não deve ser criado
    E a lista de lembretes não deve ser alterada

  @cadastro
  Cenário: BDD-LEM-007 — Criar lembrete com dados válidos
    Quando o usuário informar título válido e confirmar em "Criar lembrete"
    Então o sistema deve criar um lembrete com status inicial "pending"
    E o lembrete deve aparecer na seção "Pendentes"

  @cadastro @data
  Cenário: BDD-LEM-008 — Tratar data inválida sem quebrar o fluxo
    Quando o usuário informar data inválida no formulário
    Então a data não deve ser persistida como vencimento válido
    E o lembrete deve permanecer utilizável na listagem

  @status @conclusao
  Cenário: BDD-LEM-009 — Exibir lembrete pendente com indicação de prazo
    Dado que exista lembrete pendente com vencimento
    Quando a listagem de pendentes for exibida
    Então o lembrete deve mostrar indicador de prazo como "Atrasado", "Hoje" ou data formatada em pt-BR

  @status @conclusao
  Cenário: BDD-LEM-010 — Exibir dados complementares quando houver vínculo
    Dado que o lembrete tenha vínculo com cliente ou cobrança
    Quando o item de lembrete for exibido
    Então deve ser exibida a referência de cliente e/ou cobrança no card

  @status @conclusao
  Cenário: BDD-LEM-011 — Marcar lembrete como concluído
    Dado que exista lembrete pendente
    Quando o usuário acionar "Marcar como concluído"
    Então o lembrete deve sair da seção "Pendentes"
    E deve aparecer na seção "Concluídos"

  @status
  Cenário: BDD-LEM-012 — Exibir lembrete concluído sem ação de concluir
    Dado que exista lembrete com status concluído
    Quando a seção "Concluídos" for exibida
    Então o item não deve exibir botão "Marcar como concluído"

  @status @qualidade
  Cenário: BDD-LEM-013 — Sinalizar origem automática quando aplicável
    Dado que exista lembrete com origem de automação
    Quando o item for renderizado
    Então deve ser exibido o texto "Gerado por automação"

  @navegacao
  Cenário: BDD-LEM-014 — Navegar entre Dashboard e Lembretes
    Quando o usuário alternar entre Dashboard e Lembretes pelo menu
    Então a rota de Lembretes deve permanecer acessível
    E a identificação textual do módulo deve continuar consistente

  @refresh
  Cenário: BDD-LEM-015 — Manter lembretes após recarregamento
    Dado que existam lembretes persistidos
    Quando a página de Lembretes for recarregada
    Então os dados devem ser restaurados a partir do armazenamento local

  @responsivo @desktop
  Cenário: BDD-LEM-016 — Comportamento esperado em desktop
    Quando o módulo for aberto em viewport desktop
    Então o formulário deve organizar campos em grade responsiva
    E a leitura de pendentes e concluídos deve permanecer clara

  @responsivo @mobile
  Cenário: BDD-LEM-017 — Comportamento esperado em mobile-like
    Quando o módulo for aberto em viewport mobile-like
    Então os blocos devem se reorganizar sem perda de funcionalidade
    E o usuário deve conseguir criar e concluir lembretes

  @qualidade
  Cenário: BDD-LEM-018 — Qualidade textual do módulo
    Quando a tela de Lembretes for exibida
    Então não devem existir placeholders técnicos na experiência principal
    E o conteúdo deve comunicar valor operacional para o acompanhamento de pendências
