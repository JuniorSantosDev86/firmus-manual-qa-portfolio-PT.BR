# Status: Planejado.
# Base de análise: inspeção estática do projeto firmus-app.
# Observação: Estes cenários BDD descrevem o comportamento esperado do módulo Cobranças e ainda precisam de execução manual via navegador em ciclo futuro.

Funcionalidade: Cobranças
  Como usuário autenticado do Firmus
  Quero registrar e acompanhar cobranças
  Para controlar pendências, recebimentos e atrasos de clientes

  Contexto:
    Dado que o usuário está autenticado no Firmus
    E a rota "/charges" está disponível no menu com o label "Cobranças"

  @planejado @cobrancas @analise-estatica @smoke @listagem
  Cenário: BDD-COB-001 — Acessar a página de Cobranças
    Quando o usuário acessa a rota "/charges"
    Então o título da página deve apresentar "Cobranças"
    E o cabeçalho do módulo deve apresentar descrição operacional de cobranças

  @planejado @cobrancas @analise-estatica @smoke
  Cenário: BDD-COB-002 — Exibir identificação visual do módulo
    Quando a tela de Cobranças for carregada
    Então a seção "Cobranças atuais" deve estar visível
    E a seção de formulário deve exibir "Criar cobrança" quando não houver edição ativa

  @planejado @cobrancas @analise-estatica @listagem
  Cenário: BDD-COB-003 — Exibir listagem quando houver registros
    Dado que existem cobranças persistidas no armazenamento local
    Quando o módulo for carregado
    Então a listagem deve exibir cliente, valor, status e vencimento de cada cobrança
    E cada item deve disponibilizar ações de editar e excluir

  @planejado @cobrancas @analise-estatica @estado-vazio
  Cenário: BDD-COB-004 — Exibir estado vazio sem cobranças
    Dado que não existem cobranças persistidas
    Quando o usuário acessar Cobranças
    Então o módulo deve exibir "Nenhuma cobrança salva ainda."
    E deve orientar a criação da primeira cobrança

  @planejado @cobrancas @analise-estatica @cadastro
  Cenário: BDD-COB-005 — Exibir ação de criação de cobrança
    Dado que existe ao menos um cliente cadastrado
    Quando o usuário visualizar o formulário de Cobranças
    Então o CTA "Criar cobrança" deve estar disponível
    E os campos Cliente, Valor, Data de vencimento e Status devem estar visíveis

  @planejado @cobrancas @analise-estatica @cadastro
  Cenário: BDD-COB-006 — Exibir estado bloqueante sem clientes
    Dado que não existem clientes cadastrados
    Quando o usuário acessar o formulário de Cobranças
    Então o sistema deve exibir mensagem informando necessidade de cliente prévio
    E deve exibir link para a rota "/clients"

  @planejado @cobrancas @analise-estatica @cadastro @validacao
  Cenário: BDD-COB-007 — Cadastrar cobrança com dados válidos
    Dado que existe cliente disponível para seleção
    Quando o usuário informar cliente válido, valor válido, data válida e status
    E confirmar a ação de criação
    Então a cobrança deve ser persistida e exibida na listagem
    E deve haver feedback textual de salvamento

  @planejado @cobrancas @analise-estatica @validacao
  Cenário: BDD-COB-008 — Impedir submissão sem campos obrigatórios
    Dado que o formulário de cobrança está visível
    Quando o usuário tentar enviar sem preencher valor ou data
    Então o comportamento esperado é bloqueio por validação de campos obrigatórios
    E o cadastro não deve ser concluído

  @planejado @cobrancas @analise-estatica @validacao @valor
  Cenário: BDD-COB-009 — Tratar valor inválido no cadastro
    Dado que o campo Valor aceita entrada textual
    Quando o usuário informar valor não numérico ou negativo
    Então o valor persistido deve ser normalizado sem quebrar o fluxo
    Mas a validação de UX em runtime deve ser confirmada manualmente em ciclo futuro

  @planejado @cobrancas @analise-estatica @validacao @data
  Cenário: BDD-COB-010 — Tratar data de vencimento inválida
    Dado que a data de vencimento é obrigatória no formulário
    Quando for enviado valor de data inválido por manipulação do payload
    Então o módulo deve manter consistência do registro com data válida normalizada
    E a validação visual no navegador permanece pendente

  @planejado @cobrancas @analise-estatica @status
  Cenário: BDD-COB-011 — Exibir cobrança cadastrada com dados claros
    Dado que uma cobrança foi criada
    Quando o item for exibido na lista
    Então deve mostrar nome do cliente, valor formatado em BRL e vencimento
    E deve sinalizar quando houver orçamento vinculado

  @planejado @cobrancas @analise-estatica @status
  Cenário: BDD-COB-012 — Exibir status de cobrança de forma compreensível
    Dado que existem cobranças com estados diferentes
    Quando a listagem for apresentada
    Então os status devem aparecer como "Pendente", "Pago" ou "Em atraso"
    E os badges devem refletir o estado resolvido

  @planejado @cobrancas @analise-estatica @status
  Cenário: BDD-COB-013 — Identificar cobrança pendente
    Dado que uma cobrança está com status base "pending" e vencimento atual/futuro
    Quando a listagem for renderizada
    Então o status exibido deve ser "Pendente"

  @planejado @cobrancas @analise-estatica @status @pagamento
  Cenário: BDD-COB-014 — Identificar cobrança paga
    Dado que uma cobrança está com status "paid"
    Quando a listagem for renderizada
    Então o status exibido deve ser "Pago"
    E a ação "Marcar como pago" não deve ser exibida para esse item

  @planejado @cobrancas @analise-estatica @status
  Cenário: BDD-COB-015 — Identificar cobrança vencida
    Dado que uma cobrança está pendente e com vencimento anterior à data atual
    Quando a regra de status resolvido for aplicada
    Então o status exibido deve ser "Em atraso"

  @planejado @cobrancas @analise-estatica @pagamento
  Cenário: BDD-COB-016 — Marcar cobrança como paga
    Dado que uma cobrança pendente está listada
    Quando o usuário acionar "Marcar como pago"
    Então o status da cobrança deve ser atualizado para "Pago"
    E o registro deve permanecer disponível na listagem

  @planejado @cobrancas @analise-estatica @edicao
  Cenário: BDD-COB-017 — Editar cobrança existente
    Dado que existe cobrança cadastrada
    Quando o usuário acionar "Editar" e salvar alterações válidas
    Então o formulário deve entrar em modo "Editar cobrança"
    E os dados atualizados devem refletir no item listado

  @planejado @cobrancas @analise-estatica @exclusao
  Cenário: BDD-COB-018 — Excluir cobrança com confirmação e permitir cancelamento
    Dado que existe cobrança cadastrada
    Quando o usuário acionar "Excluir"
    Então o sistema deve solicitar confirmação antes de remover
    E ao cancelar a confirmação o item deve permanecer

  @planejado @cobrancas @analise-estatica @navegacao @refresh @responsivo @desktop @mobile @qualidade
  Cenário: BDD-COB-019 — Navegação, refresh, responsividade e qualidade de conteúdo
    Dado que o módulo Cobranças está acessível
    Quando o usuário navegar entre Dashboard e Cobranças e recarregar a página
    Então os dados persistidos devem ser mantidos via armazenamento local
    E o layout deve permanecer utilizável em desktop e mobile-like
    E não devem aparecer placeholders técnicos ou textos confusos
