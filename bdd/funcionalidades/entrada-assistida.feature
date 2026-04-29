# Status: Planejado.
# Base de análise: inspeção estática do projeto firmus-app.
# Observação: Estes cenários BDD descrevem o comportamento esperado do módulo Entrada assistida e ainda precisam de execução manual via navegador em ciclo futuro.

@planejado @entrada-assistida @assistida @analise-estatica
Funcionalidade: Entrada assistida
  Como usuário autenticado do Firmus
  Quero informar instruções operacionais em texto livre
  Para revisar interpretação e confirmar ações antes de criar dados

  Contexto:
    Dado que o usuário está autenticado no Firmus
    E que acessa a rota "/assisted-input"

  @smoke @input @navegacao
  Cenário: BDD-ASSIST-001 — Acesso ao módulo pela rota de Entrada assistida
    Quando a página de Entrada assistida é aberta
    Então o título "Entrada assistida" deve estar visível
    E a descrição orientativa do módulo deve estar visível

  @smoke @qualidade
  Cenário: BDD-ASSIST-002 — Identificação visual e contexto do módulo
    Quando o usuário visualiza o cabeçalho da tela
    Então deve existir identificação clara de que se trata da funcionalidade Entrada assistida
    E o texto deve orientar revisão antes da criação

  @input @parser
  Cenário: BDD-ASSIST-003 — Exibir campo de entrada livre
    Quando o módulo é carregado
    Então um campo de texto livre deve estar disponível para instruções
    E o botão "Interpretar" deve estar disponível

  @input @qualidade
  Cenário: BDD-ASSIST-004 — Exibir exemplos de uso
    Quando o usuário visualiza a área "Digite sua instrução"
    Então exemplos de frases de cobrança e lembrete devem ser exibidos
    E os exemplos devem estar em PT-BR

  @input @feedback
  Cenário: BDD-ASSIST-005 — Exibir estado inicial sem interpretação
    Dado que nenhuma interpretação foi solicitada
    Quando o usuário visualiza a área de resultado
    Então o módulo deve indicar que está pronto para interpretar instruções
    E não deve criar nenhuma ação automaticamente

  @parser @intencao
  Cenário: BDD-ASSIST-006 — Interpretar frase válida com intenção de cobrança
    Quando o usuário informa uma frase de cobrança com cliente, valor e vencimento
    E aciona "Interpretar"
    Então a intenção "Criar cobrança" deve ser apresentada
    E os campos extraídos devem ser exibidos para revisão

  @parser @intencao
  Cenário: BDD-ASSIST-007 — Interpretar frase válida com intenção de orçamento
    Quando o usuário informa uma frase de orçamento
    E aciona "Interpretar"
    Então a intenção "Criar orçamento" deve ser apresentada
    E o título/contexto deve ser extraído quando disponível

  @parser @intencao
  Cenário: BDD-ASSIST-008 — Interpretar frase válida com intenção de lembrete
    Quando o usuário informa uma frase de lembrete
    E aciona "Interpretar"
    Então a intenção "Criar lembrete" deve ser apresentada
    E os campos do rascunho devem estar disponíveis para ajuste

  @parser @entidade
  Cenário: BDD-ASSIST-009 — Extrair cliente da instrução
    Quando a frase contém referência textual de cliente
    E aciona "Interpretar"
    Então o cliente identificado deve ser exibido no resumo
    E o rascunho deve tentar associar o cliente cadastrado correspondente

  @parser @entidade
  Cenário: BDD-ASSIST-010 — Extrair valor monetário da instrução
    Quando a frase contém valor monetário válido
    E aciona "Interpretar"
    Então o valor deve ser exibido em formato monetário PT-BR

  @parser @entidade
  Cenário: BDD-ASSIST-011 — Extrair data ou vencimento da instrução
    Quando a frase contém data explícita ou relativa
    E aciona "Interpretar"
    Então o vencimento/data deve ser exibido em formato de data

  @validacao @feedback
  Cenário: BDD-ASSIST-012 — Sinalizar campos pendentes para confirmação
    Quando a intenção é reconhecida mas faltam dados obrigatórios
    Então o módulo deve exibir a lista de campos pendentes
    E a confirmação deve permanecer indisponível

  @ambiguidade @erro
  Cenário: BDD-ASSIST-013 — Tratar frase ambígua
    Quando a frase indica mais de uma intenção concorrente
    Então a intenção deve ser classificada como não segura
    E deve ser exibida mensagem de ambiguidade

  @erro @validacao
  Cenário: BDD-ASSIST-014 — Tratar frase muito curta ou insuficiente
    Quando o usuário informa uma instrução curta sem contexto
    Então o módulo deve orientar a escrever uma instrução mais completa
    E não deve preparar ação confirmável

  @confirmacao @integracao
  Cenário: BDD-ASSIST-015 — Exigir confirmação antes da criação de entidade
    Quando existe rascunho válido de criação
    Então a criação só deve ocorrer após acionar "Confirmar criação"

  @confirmacao @feedback
  Cenário: BDD-ASSIST-016 — Exibir sucesso após confirmação válida
    Quando o usuário confirma um rascunho válido
    Então deve ser exibida mensagem de sucesso da entidade criada

  @erro @feedback
  Cenário: BDD-ASSIST-017 — Exibir motivo ao tentar confirmar rascunho inválido
    Quando o usuário tenta confirmar um rascunho inválido
    Então o módulo deve exibir mensagem de ajuste obrigatório

  @integracao @entidade
  Cenário: BDD-ASSIST-018 — Exibir ajustes específicos para cobrança
    Quando a intenção é criar cobrança
    Então os campos de cliente, valor e vencimento devem estar editáveis antes da confirmação

  @integracao @entidade
  Cenário: BDD-ASSIST-019 — Exibir ajustes específicos para orçamento
    Quando a intenção é criar orçamento
    Então os campos de cliente, título/contexto, valor e validade devem estar editáveis

  @integracao @entidade
  Cenário: BDD-ASSIST-020 — Exibir ajustes específicos para lembrete
    Quando a intenção é criar lembrete
    Então os campos de título, data e cliente devem estar editáveis

  @navegacao @refresh
  Cenário: BDD-ASSIST-021 — Navegação e recarga como cenário planejado
    Quando o usuário alterna entre Dashboard e Entrada assistida ou recarrega a página
    Então o módulo deve permanecer acessível pela rota prevista
    E o fluxo deve permanecer apto para nova interpretação

  @responsivo @desktop @mobile @qualidade
  Cenário: BDD-ASSIST-022 — Responsividade e clareza operacional como cenário planejado
    Quando o módulo é visualizado em desktop e mobile-like
    Então os elementos principais devem permanecer utilizáveis
    E não devem existir placeholders técnicos ou mensagens confusas ao usuário
