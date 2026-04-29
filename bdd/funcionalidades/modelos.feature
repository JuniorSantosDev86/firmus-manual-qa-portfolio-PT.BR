# Status: Planejado.
# Base de análise: inspeção estática do projeto firmus-app.
# Observação: Estes cenários BDD descrevem o comportamento esperado do módulo Modelos e ainda precisam de execução manual via navegador em ciclo futuro.

@planejado @modelos @templates @analise-estatica
Funcionalidade: Gestão de Modelos no Firmus
  Como usuário autenticado do Firmus
  Quero acessar e gerenciar modelos de mensagens operacionais
  Para reduzir repetição e padronizar comunicação recorrente

  Contexto:
    Dado que o usuário está autenticado no Firmus
    E a rota de Modelos está disponível em "/templates"

  @smoke @navegacao
  Cenário: BDD-MOD-001 — Acessar a página de Modelos pela rota direta
    Quando o usuário acessar a rota "/templates"
    Então a página deve exibir o título "Modelos"
    E deve exibir a descrição sobre salvar mensagens recorrentes

  @smoke @navegacao
  Cenário: BDD-MOD-002 — Acessar Modelos pela navegação principal
    Quando o usuário usar o item de navegação "Modelos"
    Então deve ser direcionado para a rota "/templates"
    E o item "Modelos" deve permanecer identificável na navegação

  @cadastro
  Cenário: BDD-MOD-003 — Exibir formulário em modo novo modelo
    Quando o usuário abrir o módulo Modelos sem selecionar item para edição
    Então deve visualizar o bloco "Novo modelo"
    E os campos "Nome", "Categoria" e "Conteúdo" devem estar disponíveis

  @estado-vazio @listagem
  Cenário: BDD-MOD-004 — Exibir estado vazio quando não houver modelos
    Dado que não existam modelos salvos no storage local
    Quando o usuário abrir o módulo Modelos
    Então a listagem deve exibir "Nenhum modelo salvo ainda."

  @listagem @categoria
  Cenário: BDD-MOD-005 — Exibir agrupamento por categoria
    Dado que existam modelos salvos em categorias distintas
    Quando o usuário visualizar a seção "Modelos"
    Então os itens devem ser apresentados por grupos de categoria
    E cada grupo deve exibir seu rótulo de categoria

  @categoria @listagem
  Cenário: BDD-MOD-006 — Exibir rótulos funcionais das categorias
    Quando o usuário abrir o seletor de categoria no formulário
    Então devem existir as opções "Follow-up de orçamento", "Lembrete de pagamento", "Solicitação de aprovação" e "Geral"

  @listagem
  Cenário: BDD-MOD-007 — Exibir nome e estado do modelo na listagem
    Dado que exista ao menos um modelo salvo
    Quando o usuário visualizar um card de modelo
    Então deve ver o nome do modelo
    E deve ver o estado "Ativo" ou "Inativo"

  @preview
  Cenário: BDD-MOD-008 — Exibir preview resumido do conteúdo
    Dado que exista modelo com conteúdo longo
    Quando o usuário visualizar a listagem
    Então o conteúdo deve ser apresentado em versão resumida
    E deve usar reticências quando ultrapassar o limite definido

  @cadastro
  Cenário: BDD-MOD-009 — Salvar modelo com dados válidos
    Quando o usuário preencher nome, categoria e conteúdo válidos
    E acionar "Salvar modelo"
    Então o modelo deve ser incluído na listagem
    E deve iniciar com estado "Ativo"

  @validacao @cadastro
  Cenário: BDD-MOD-010 — Impedir criação com nome vazio
    Quando o usuário tentar salvar modelo sem preencher "Nome"
    Então o envio deve ser bloqueado por validação obrigatória

  @validacao @cadastro
  Cenário: BDD-MOD-011 — Impedir criação com conteúdo vazio
    Quando o usuário tentar salvar modelo sem preencher "Conteúdo"
    Então o envio deve ser bloqueado por validação obrigatória

  @edicao
  Cenário: BDD-MOD-012 — Entrar em modo de edição
    Dado que exista um modelo salvo
    Quando o usuário acionar "Editar modelo"
    Então o formulário deve mudar para o título "Editar modelo"
    E deve exibir o botão "Cancelar edição"

  @edicao
  Cenário: BDD-MOD-013 — Atualizar modelo existente
    Dado que o formulário esteja em modo de edição
    Quando o usuário alterar dados válidos e acionar "Atualizar modelo"
    Então a listagem deve refletir os novos dados do modelo

  @edicao @validacao
  Cenário: BDD-MOD-014 — Impedir atualização com dados inválidos
    Dado que o formulário esteja em modo de edição
    Quando o usuário limpar nome ou conteúdo e tentar atualizar
    Então a atualização não deve ser persistida

  @duplicacao
  Cenário: BDD-MOD-015 — Confirmar ausência de ação explícita de duplicação
    Quando o usuário visualizar ações de item na listagem
    Então deve ter ações de edição e ativação ou inativação
    Mas não deve existir ação explícita de duplicar ou copiar modelo

  @exclusao
  Cenário: BDD-MOD-016 — Confirmar ausência de ação explícita de exclusão
    Quando o usuário visualizar ações de item na listagem
    Então não deve existir ação explícita de excluir modelo
    E não deve existir fluxo de confirmação de exclusão nesse módulo

  @listagem @categoria
  Cenário: BDD-MOD-017 — Filtrar listagem por categoria
    Dado que existam modelos em categorias diferentes
    Quando o usuário selecionar uma categoria no filtro da listagem
    Então devem ser exibidos apenas os grupos da categoria selecionada

  @validacao
  Cenário: BDD-MOD-018 — Restringir categorias a valores conhecidos
    Quando um modelo for salvo com categoria inválida no storage
    Então a categoria deve ser normalizada para "Geral"

  @cta
  Cenário: BDD-MOD-019 — Exibir contexto de limite do plano
    Quando o módulo Modelos for carregado
    Então deve exibir o bloco de limite com plano atual e uso
    E deve orientar upgrade quando aplicável

  @cta @validacao
  Cenário: BDD-MOD-020 — Bloquear criação quando limite do plano for atingido
    Dado que o limite de modelos do plano atual tenha sido alcançado
    Quando o usuário tentar criar novo modelo
    Então a criação deve ser bloqueada
    E o botão deve indicar "Limite atingido"

  @navegacao @refresh
  Cenário: BDD-MOD-021 — Persistir dados após refresh
    Dado que exista modelo salvo
    Quando o usuário atualizar a página
    Então os modelos devem permanecer disponíveis na listagem

  @navegacao
  Cenário: BDD-MOD-022 — Navegar entre Dashboard e Modelos
    Quando o usuário alternar entre "Dashboard" e "Modelos"
    Então a navegação deve manter rotas acessíveis sem perder estabilidade

  @variaveis
  Cenário: BDD-MOD-023 — Registrar ausência de variáveis dinâmicas no CRUD atual
    Quando o usuário criar ou editar modelo no módulo atual
    Então não deve existir construtor dedicado de variáveis dinâmicas no formulário

  @responsivo @desktop
  Cenário: BDD-MOD-024 — Layout desktop planejado para validação manual
    Quando o módulo for aberto em viewport desktop
    Então formulário, filtro e listagem devem permanecer legíveis e operáveis

  @responsivo @mobile
  Cenário: BDD-MOD-025 — Layout mobile-like planejado para validação manual
    Quando o módulo for aberto em viewport mobile-like
    Então os blocos devem se reorganizar sem sobreposição crítica

  @qualidade
  Cenário: BDD-MOD-026 — Ausência de placeholders técnicos e mensagens confusas
    Quando o usuário visualizar textos do módulo Modelos
    Então os textos devem estar em PT-BR com orientação operacional clara
    E não devem exibir placeholders técnicos para usuário final

  @qualidade
  Cenário: BDD-MOD-027 — Comunicar valor operacional dos modelos
    Quando o usuário visualizar cabeçalho e descrições da página
    Então o módulo deve deixar claro que modelos reduzem repetição no dia a dia operacional
