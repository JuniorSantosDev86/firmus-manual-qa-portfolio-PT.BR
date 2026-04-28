# Status: Planejado.
# Observação: Estes cenários BDD descrevem o comportamento esperado do módulo Clientes.
# A execução real do ciclo 01 está documentada separadamente em test-executions/execution-cycle-01.md.
# Bugs reais relacionados preservados: BUG-001, BUG-002 e BUG-003.

Funcionalidade: Gestão de clientes
  Como usuário autenticado do Firmus
  Quero cadastrar, consultar e gerenciar clientes
  Para manter uma base operacional confiável para orçamentos, cobranças, reativação e comunicação

  Contexto:
    Dado que o usuário possui credenciais válidas
    E está autenticado no Firmus
    E acessou a área de Clientes

  @planejado @clientes @smoke
  Cenário: BDD-CLI-001 — Carregar a página de Clientes com sucesso
    Quando o usuário acessa o módulo Clientes pela navegação principal
    Então a página de Clientes deve carregar sem erro inesperado
    E o título ou identificação do módulo deve ficar visível
    E o usuário deve conseguir visualizar a área principal de clientes
    E o sistema não deve redirecionar o usuário indevidamente para outra página

  @planejado @clientes @listagem
  Cenário: BDD-CLI-002 — Exibir lista de clientes quando existem registros cadastrados
    Dado que existem clientes cadastrados no ambiente
    Quando o usuário acessa a área de Clientes
    Então o sistema deve exibir a lista de clientes
    E cada registro deve apresentar informações suficientes para identificação do cliente
    E os dados exibidos devem estar legíveis e organizados
    E não deve haver registros duplicados visualmente sem justificativa

  @planejado @clientes @estado-vazio
  Cenário: BDD-CLI-003 — Exibir estado vazio quando não existem clientes cadastrados
    Dado que não existem clientes cadastrados no ambiente atual
    Quando o usuário acessa a área de Clientes
    Então o sistema deve exibir uma mensagem clara de estado vazio
    E a mensagem deve orientar o usuário sobre o próximo passo
    E a tela não deve parecer quebrada ou incompleta
    E a ação para criar cliente deve permanecer disponível quando aplicável

  @planejado @clientes @cadastro @positivo
  Cenário: BDD-CLI-004 — Criar cliente com dados válidos
    Quando o usuário inicia o cadastro de um novo cliente
    E preenche os campos obrigatórios com dados válidos
    E informa dados de contato válidos quando exigidos pelo formulário
    E confirma o cadastro
    Então o cliente deve ser criado com sucesso
    E o cliente deve aparecer na lista de clientes
    E os dados exibidos devem ser coerentes com os dados informados
    E o sistema deve apresentar feedback claro de sucesso quando aplicável

  @planejado @clientes @validacao @negativo @BUG-001
  Cenário: BDD-CLI-005 — Impedir criação de cliente preenchendo apenas o nome
    Quando o usuário inicia o cadastro de um novo cliente
    E preenche apenas o campo de nome do cliente
    E deixa os demais campos obrigatórios ou necessários vazios
    E confirma o cadastro
    Então o sistema não deve criar o cliente
    E deve exibir mensagens claras de validação para os campos ausentes
    E a lista de clientes não deve receber um novo registro incompleto
    E os dados já preenchidos devem ser preservados quando fizer sentido para correção

  @planejado @clientes @validacao @negativo
  Cenário: BDD-CLI-006 — Impedir criação de cliente com todos os campos vazios
    Quando o usuário inicia o cadastro de um novo cliente
    E mantém todos os campos vazios
    E tenta confirmar o cadastro
    Então o sistema deve bloquear a criação do cliente
    E deve indicar quais informações são obrigatórias
    E não deve criar registro em branco
    E a tela deve permanecer estável e utilizável

  @planejado @clientes @validacao @negativo @BUG-002
  Cenário: BDD-CLI-007 — Impedir criação de cliente sem informação de contato válida
    Quando o usuário inicia o cadastro de um novo cliente
    E preenche os dados principais do cliente
    E deixa as informações de contato vazias ou inválidas
    E confirma o cadastro
    Então o sistema deve bloquear a criação quando o contato for obrigatório para a operação
    E deve apresentar uma mensagem de validação clara
    E não deve salvar cliente sem contato válido
    E o usuário deve conseguir corrigir os dados sem reiniciar o fluxo

  @planejado @clientes @validacao @negativo
  Cenário: BDD-CLI-008 — Impedir formato inválido em e-mail ou telefone
    Quando o usuário inicia o cadastro de um cliente
    E informa um e-mail em formato inválido
    Ou informa um telefone em formato incompatível com o padrão esperado
    E tenta salvar o cliente
    Então o sistema deve indicar que o contato informado é inválido
    E deve impedir o salvamento quando o dado for necessário para o cadastro
    E deve manter a mensagem de erro próxima ao campo correspondente
    E não deve exibir erro técnico ao usuário final

  @planejado @clientes @detalhes
  Cenário: BDD-CLI-009 — Visualizar detalhes de um cliente existente
    Dado que existe pelo menos um cliente cadastrado
    Quando o usuário abre os detalhes de um cliente
    Então o sistema deve exibir as informações principais do cliente
    E deve apresentar dados de contato quando disponíveis
    E deve manter os rótulos claros e em PT-BR
    E não deve exibir informações quebradas, vazias ou duplicadas indevidamente

  @planejado @clientes @edicao
  Cenário: BDD-CLI-010 — Editar cliente existente com dados válidos quando a ação estiver disponível
    Dado que existe pelo menos um cliente cadastrado
    E a ação de edição está disponível
    Quando o usuário altera informações permitidas do cliente com dados válidos
    E confirma a alteração
    Então o sistema deve salvar as alterações
    E os dados atualizados devem aparecer corretamente na listagem ou nos detalhes
    E o sistema deve apresentar feedback claro de sucesso quando aplicável
    E não deve criar um cliente duplicado como efeito da edição

  @planejado @clientes @edicao @validacao
  Cenário: BDD-CLI-011 — Impedir edição com dados inválidos quando a ação estiver disponível
    Dado que existe pelo menos um cliente cadastrado
    E a ação de edição está disponível
    Quando o usuário altera os dados do cliente para valores inválidos ou incompletos
    E tenta salvar a alteração
    Então o sistema deve bloquear a atualização inválida
    E deve exibir mensagens de validação compreensíveis
    E deve preservar o registro anterior sem corromper os dados
    E o usuário deve conseguir corrigir as informações

  @planejado @clientes @exclusao @BUG-003
  Cenário: BDD-CLI-012 — Excluir cliente após confirmação
    Dado que existe pelo menos um cliente cadastrado
    E a ação de exclusão está disponível
    Quando o usuário solicita a exclusão do cliente
    E confirma a exclusão no modal ou popup de confirmação
    Então o cliente deve ser removido da lista
    E o sistema deve apresentar feedback claro de exclusão concluída quando aplicável
    E o cliente excluído não deve reaparecer após atualização da página
    E a lista deve permanecer consistente após a operação

  @planejado @clientes @exclusao
  Cenário: BDD-CLI-013 — Cancelar exclusão de cliente
    Dado que existe pelo menos um cliente cadastrado
    E a ação de exclusão está disponível
    Quando o usuário solicita a exclusão do cliente
    E cancela a ação no modal ou popup de confirmação
    Então o cliente deve permanecer na lista
    E nenhum dado do cliente deve ser alterado
    E o sistema deve retornar o usuário para o estado anterior de forma clara
    E não deve apresentar mensagem falsa de exclusão concluída

  @planejado @clientes @navegacao
  Cenário: BDD-CLI-014 — Navegar entre Clientes e outros módulos sem perder contexto
    Quando o usuário acessa a área de Clientes
    E navega para outro módulo pela sidebar
    E retorna para Clientes
    Então a página de Clientes deve carregar corretamente
    E a sessão do usuário deve permanecer ativa
    E a navegação não deve apresentar erro de rota
    E os registros devem continuar visíveis conforme o estado atual do ambiente

  @planejado @clientes @refresh
  Cenário: BDD-CLI-015 — Manter Clientes utilizável após refresh
    Dado que o usuário está na área de Clientes
    Quando o usuário atualiza a página no navegador
    Então a página deve carregar novamente sem erro inesperado
    E a sessão deve ser preservada quando ainda for válida
    E a lista, estado vazio ou detalhes devem continuar coerentes com os dados existentes
    E o usuário deve conseguir continuar usando o módulo

  @planejado @clientes @responsivo @desktop
  Cenário: BDD-CLI-016 — Exibir Clientes corretamente em viewport desktop
    Quando o usuário acessa Clientes em viewport desktop
    Então a listagem ou estado vazio deve permanecer organizado
    E botões, textos e ações devem estar alinhados
    E a sidebar deve continuar acessível
    E não deve haver sobreposição entre conteúdo e navegação
    E não deve haver overflow horizontal

  @planejado @clientes @responsivo @mobile
  Cenário: BDD-CLI-017 — Exibir Clientes corretamente em viewport mobile-like
    Quando o usuário acessa Clientes em viewport mobile-like
    Então a navegação mobile deve permanecer acessível conforme o padrão da aplicação
    E cards, listas, formulários e botões devem se adaptar à largura da tela
    E os campos do formulário devem continuar preenchíveis
    E ações críticas como salvar, cancelar e excluir devem permanecer utilizáveis
    E não deve haver conteúdo cortado ou extrapolando a tela

  @planejado @clientes @qualidade
  Cenário: BDD-CLI-018 — Não exibir placeholders, dados técnicos ou mensagens confusas
    Quando o usuário revisa a tela de Clientes, formulários, detalhes e mensagens
    Então o sistema não deve exibir "undefined", "null", "NaN", "lorem ipsum" ou textos temporários
    E não deve exibir mensagens técnicas de erro ao usuário final
    E não deve duplicar campos ou registros visualmente sem justificativa
    E todos os rótulos devem estar em PT-BR
    E as mensagens devem orientar o usuário de forma clara