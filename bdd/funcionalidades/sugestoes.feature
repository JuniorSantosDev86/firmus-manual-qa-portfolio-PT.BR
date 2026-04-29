# Status: Planejado.
# Base de análise: inspeção estática do projeto firmus-app.
# Observação: Estes cenários BDD descrevem o comportamento esperado do módulo Sugestões e ainda precisam de execução manual via navegador em ciclo futuro.

@planejado @sugestoes @sugestões @analise-estatica
Funcionalidade: Sugestões
  Como usuário autenticado do Firmus
  Quero visualizar recomendações operacionais
  Para decidir próximas ações com base no contexto dos dados atuais

  Contexto:
    Dado que o usuário está autenticado no Firmus
    E acessa a rota "/assisted-charge-suggestions" pelo item "Sugestões"

  @smoke @listagem
  Cenário: BDD-SUG-001 — Acesso à página de Sugestões
    Quando a página é carregada
    Então o título "Sugestões de cobrança" deve estar visível
    E a descrição de revisão manual das sugestões deve estar visível

  @smoke @qualidade
  Cenário: BDD-SUG-002 — Identificação visual do módulo
    Quando o usuário visualiza o cabeçalho da tela
    Então deve ficar claro que o módulo trata sugestões operacionais de cobrança

  @listagem @card
  Cenário: BDD-SUG-003 — Exibir listagem quando houver sugestões abertas
    Dado que existem sugestões abertas elegíveis
    Quando a tela é exibida
    Então a seção "Sugestões abertas" deve listar cards de sugestão

  @estado-vazio
  Cenário: BDD-SUG-004 — Exibir estado vazio quando não houver sugestões
    Dado que não existem sugestões abertas
    Quando a tela é exibida
    Então a mensagem "Nenhuma sugestão disponível no momento." deve ser apresentada

  @card @qualidade
  Cenário: BDD-SUG-005 — Exibir card com informações essenciais
    Quando existe sugestão aberta
    Então o card deve exibir cliente, valor sugerido e vencimento sugerido
    E deve exibir explicação da recomendação

  @categoria @card
  Cenário: BDD-SUG-006 — Exibir tipo da sugestão
    Quando existe sugestão aberta
    Então o tipo deve ser exibido com label compreensível ao usuário

  @card @qualidade
  Cenário: BDD-SUG-007 — Exibir motivo ou contexto da sugestão
    Quando existe sugestão aberta
    Então os motivos devem ser listados em linguagem operacional

  @impacto @prioridade
  Cenário: BDD-SUG-008 — Exibir sinais de relevância por contexto de negócio
    Quando existe sugestão aberta
    Então o card deve comunicar contexto de impacto por tipo e motivo

  @acao @card
  Cenário: BDD-SUG-009 — Exibir próxima ação recomendada
    Quando existe sugestão aberta
    Então o CTA principal "Criar cobrança" deve estar disponível

  @cta @acao @integracao
  Cenário: BDD-SUG-010 — Executar ação sugerida quando aplicável
    Quando o usuário aciona "Criar cobrança" em sugestão válida
    Então o sistema deve criar cobrança vinculada ao contexto sugerido
    E deve remover a sugestão da lista aberta

  @cta @integracao
  Cenário: BDD-SUG-011 — Abrir módulo relacionado quando aplicável
    Quando o usuário usa a navegação para ir a Cobranças após analisar Sugestões
    Então a navegação deve manter coerência entre módulos

  @cta @feedback
  Cenário: BDD-SUG-012 — Dispensar sugestão quando aplicável
    Quando o usuário aciona "Dispensar" em sugestão aberta
    Então a sugestão deve sair da lista aberta
    E feedback de dispensa deve ser exibido

  @feedback
  Cenário: BDD-SUG-013 — Exibir feedback de sucesso após ação
    Quando uma sugestão é aceita com sucesso
    Então deve ser exibida mensagem de sucesso de criação

  @feedback
  Cenário: BDD-SUG-014 — Exibir feedback de erro quando ação não puder ser concluída
    Quando a aceitação da sugestão falhar por dados inválidos
    Então deve ser exibida mensagem de erro compreensível

  @integracao @listagem
  Cenário: BDD-SUG-015 — Relacionar sugestões com entidades operacionais
    Quando sugestões são derivadas do histórico
    Então devem refletir contexto de clientes, cobranças, orçamentos ou lembretes

  @qualidade @listagem
  Cenário: BDD-SUG-016 — Evitar duplicação indevida de sugestões
    Quando múltiplas fontes alimentam sugestões
    Então a lista aberta não deve conter duplicações indevidas por mesma origem

  @prioridade @listagem
  Cenário: BDD-SUG-017 — Ordenar sugestões de forma determinística
    Quando existem várias sugestões abertas
    Então a ordenação deve seguir critério determinístico implementado

  @categoria @listagem
  Cenário: BDD-SUG-018 — Filtrar por status aberto no carregamento
    Quando a lista é exibida
    Então somente sugestões com status aberto devem aparecer

  @refresh
  Cenário: BDD-SUG-019 — Manter módulo utilizável após refresh
    Quando a página é recarregada
    Então o módulo deve continuar acessível
    E o estado aberto deve ser recalculado com segurança

  @navegacao
  Cenário: BDD-SUG-020 — Navegar entre Sugestões e Dashboard
    Quando o usuário alterna entre Dashboard e Sugestões
    Então o item de navegação "Sugestões" deve direcionar para a rota correta

  @responsivo @desktop
  Cenário: BDD-SUG-021 — Layout desktop como cenário planejado
    Quando a tela é visualizada em viewport desktop
    Então cards e CTAs devem permanecer legíveis e acionáveis

  @responsivo @mobile
  Cenário: BDD-SUG-022 — Layout mobile-like como cenário planejado
    Quando a tela é visualizada em viewport mobile-like
    Então cards e CTAs devem permanecer utilizáveis sem mensagens confusas
