# Status: Planejado.
# Base de análise: inspeção estática do projeto firmus-app.
# Observação: Estes cenários BDD descrevem o comportamento esperado do módulo Serviços e ainda precisam de execução manual via navegador em ciclo futuro.

@planejado @servicos @analise-estatica
Funcionalidade: Gestão de Serviços
  Como usuário autenticado do Firmus
  Quero cadastrar e manter serviços
  Para reaproveitá-los em orçamentos e organizar minha operação

  Contexto:
    Dado que o usuário está autenticado no Firmus
    E que o menu principal exibe a opção "Serviços"
    E que a rota do módulo é "/services"

  @smoke @listagem
  Cenário: BDD-SRV-001 — Acessar a página de Serviços
    Quando o usuário acessar a rota "/services"
    Então a página deve exibir o título "Serviços"
    E deve exibir a descrição sobre reaproveitamento em orçamentos

  @smoke @qualidade
  Cenário: BDD-SRV-002 — Identificação visual do módulo
    Quando o módulo Serviços for carregado
    Então a seção "Serviços atuais" deve ser exibida
    E a seção "Criar serviço" deve ser exibida quando não houver item em edição

  @listagem
  Cenário: BDD-SRV-003 — Exibir estado vazio sem serviços cadastrados
    Dado que não existem serviços persistidos em armazenamento local
    Quando o usuário abrir o módulo Serviços
    Então deve exibir a mensagem "Nenhum serviço salvo ainda."
    E deve exibir orientação para adicionar o primeiro serviço

  @listagem
  Cenário: BDD-SRV-004 — Exibir listagem quando houver serviços cadastrados
    Dado que existem serviços válidos persistidos
    Quando o usuário abrir o módulo Serviços
    Então deve exibir a quantidade de serviços cadastrados
    E cada item deve exibir nome, preço base, prazo estimado e status ativo/inativo

  @cadastro
  Cenário: BDD-SRV-005 — Exibir ação de criação de serviço
    Quando o usuário estiver no módulo Serviços
    Então deve existir CTA de submissão "Criar serviço"
    E o formulário deve conter campos Nome, Descrição, Preço base, Prazo estimado e Serviço ativo

  @cadastro
  Cenário: BDD-SRV-006 — Cadastrar serviço com dados válidos
    Dado que o usuário preenche Nome com valor não vazio
    E preenche Preço base com valor monetário válido
    Quando confirmar o cadastro
    Então o serviço deve ser persistido no armazenamento local do módulo
    E o serviço criado deve aparecer na listagem

  @validacao
  Cenário: BDD-SRV-007 — Impedir cadastro com nome vazio
    Dado que o campo Nome está vazio ou apenas com espaços
    Quando o usuário tentar salvar o formulário
    Então o cadastro não deve ser persistido
    E o módulo deve permanecer estável sem criar item na listagem

  @validacao @valor
  Cenário: BDD-SRV-008 — Tratar valor/preço inválido no cadastro
    Dado que o usuário informa caracteres não monetários no Preço base
    Quando o serviço for salvo
    Então o valor deve ser normalizado conforme regra interna do módulo
    E o cadastro não deve quebrar o fluxo da tela

  @validacao
  Cenário: BDD-SRV-009 — Tratar descrição vazia sem bloquear cadastro
    Dado que o campo Descrição está vazio
    E que Nome e Preço base estão válidos
    Quando o usuário salvar o serviço
    Então o serviço deve poder ser cadastrado
    E a descrição deve ser persistida como ausente, sem texto técnico exposto

  @edicao
  Cenário: BDD-SRV-010 — Entrar em modo de edição de serviço
    Dado que existe ao menos um serviço na listagem
    Quando o usuário acionar "Editar" em um item
    Então o título do formulário deve mudar para "Editar serviço"
    E os campos devem ser preenchidos com os dados atuais do serviço

  @edicao
  Cenário: BDD-SRV-011 — Salvar alterações de serviço existente
    Dado que o formulário está em modo de edição
    Quando o usuário alterar campos válidos e salvar
    Então a listagem deve refletir os novos dados do serviço
    E deve exibir feedback textual "Salvo."

  @edicao
  Cenário: BDD-SRV-012 — Cancelar edição e voltar para criação
    Dado que o formulário está em modo de edição
    Quando o usuário acionar "Cancelar edição"
    Então o formulário deve voltar para o estado "Criar serviço"
    E o botão "Criar novo" não deve mais ser necessário nesse estado

  @exclusao
  Cenário: BDD-SRV-013 — Excluir serviço com confirmação
    Dado que existe ao menos um serviço na listagem
    Quando o usuário acionar "Excluir" e confirmar a exclusão
    Então o serviço deve ser removido da listagem
    E não deve permanecer no armazenamento local do módulo

  @exclusao
  Cenário: BDD-SRV-014 — Cancelar exclusão de serviço
    Dado que existe ao menos um serviço na listagem
    Quando o usuário acionar "Excluir" e cancelar a confirmação
    Então o serviço deve permanecer na listagem
    E nenhum dado deve ser removido do armazenamento local

  @navegacao
  Cenário: BDD-SRV-015 — Navegar entre Dashboard e Serviços
    Quando o usuário navegar de Dashboard para Serviços pelo menu
    Então a rota deve mudar para "/services"
    E o módulo Serviços deve permanecer funcional

  @refresh
  Cenário: BDD-SRV-016 — Manter dados após refresh da página
    Dado que existe serviço cadastrado no módulo
    Quando a página de Serviços for recarregada
    Então os serviços persistidos devem continuar visíveis
    E o módulo deve permanecer utilizável

  @desktop @responsivo
  Cenário: BDD-SRV-017 — Comportamento esperado em viewport desktop
    Quando o módulo Serviços for avaliado em viewport desktop
    Então a listagem e o formulário devem permanecer legíveis e operáveis
    E não devem existir sobreposições impeditivas de conteúdo

  @mobile @responsivo @qualidade
  Cenário: BDD-SRV-018 — Comportamento esperado em viewport mobile-like
    Quando o módulo Serviços for avaliado em viewport mobile-like
    Então o conteúdo deve permanecer compreensível e navegável
    E não deve exibir placeholders, labels técnicos ou mensagens confusas
