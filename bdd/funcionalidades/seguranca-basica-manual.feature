# Status: Planejado.
# Base de análise: inspeção estática do projeto firmus-app.
# Observação: Estes cenários BDD descrevem o comportamento esperado de Segurança básica manual e ainda precisam de execução manual via navegador em ciclo futuro.
# Escopo: QA manual básico de segurança. Não se trata de pentest, exploração invasiva ou auditoria formal de segurança.

@planejado @seguranca-basica @segurança @analise-estatica @qualidade
Funcionalidade: Segurança básica manual
  Como QA Manual
  Quero preparar a cobertura de segurança básica com base na análise estática do Firmus
  Para validar em ciclo futuro que autenticação, rotas e sessões se comportam com segurança sem abordagem invasiva

  Contexto:
    Dado que a cobertura deste módulo foi definida por inspeção estática do projeto "firmus-app"
    E que a execução manual via navegador permanece pendente

  @planejado @seguranca-basica @auth @rotas-privadas @redirecionamento
  Cenário: BDD-SEC-001 — Bloquear rota privada de Dashboard para usuário não autenticado
    Dado que o usuário não possui sessão autenticada
    Quando tentar acessar a rota interna "/"
    Então deve ser redirecionado para "/login"
    E a rota de destino deve ser preservada em "next" quando aplicável

  @planejado @seguranca-basica @auth @rotas-privadas @redirecionamento
  Cenário: BDD-SEC-002 — Bloquear rota privada de Clientes para usuário não autenticado
    Dado que o usuário não possui sessão autenticada
    Quando tentar acessar a rota interna "/clients"
    Então deve ser redirecionado para "/login"
    E não deve visualizar dados internos de clientes

  @planejado @seguranca-basica @auth @rotas-privadas @redirecionamento
  Cenário: BDD-SEC-003 — Bloquear rota privada de Orçamentos para usuário não autenticado
    Dado que o usuário não possui sessão autenticada
    Quando tentar acessar a rota interna "/quotes"
    Então deve ser redirecionado para "/login"
    E não deve visualizar informações de orçamentos internos

  @planejado @seguranca-basica @auth @rotas-privadas @redirecionamento
  Cenário: BDD-SEC-004 — Bloquear rota privada de Cobranças para usuário não autenticado
    Dado que o usuário não possui sessão autenticada
    Quando tentar acessar a rota interna "/charges"
    Então deve ser redirecionado para "/login"
    E não deve visualizar dados financeiros internos

  @planejado @seguranca-basica @auth @rotas-privadas @redirecionamento
  Cenário: BDD-SEC-005 — Bloquear rota privada de Visão Financeira para usuário não autenticado
    Dado que o usuário não possui sessão autenticada
    Quando tentar acessar a rota interna "/financial-overview"
    Então deve ser redirecionado para "/login"
    E não deve exibir o shell interno

  @planejado @seguranca-basica @auth @rotas-privadas
  Cenário: BDD-SEC-006 — Permitir acesso autenticado às rotas privadas
    Dado que o usuário possui sessão autenticada válida
    Quando acessar rotas internas como "/clients" e "/quotes"
    Então deve permanecer na área interna
    E deve conseguir navegar pelos módulos protegidos conforme perfil esperado

  @planejado @seguranca-basica @shell @auth
  Cenário: BDD-SEC-007 — Exibir shell interno somente para usuário autenticado
    Dado que o usuário possui sessão autenticada válida
    Quando acessar uma rota interna
    Então o shell interno deve ser exibido
    E os controles de navegação interna devem estar disponíveis

  @planejado @seguranca-basica @shell @rotas-publicas
  Cenário: BDD-SEC-008 — Não exibir shell interno em superfícies públicas
    Dado que o usuário está sem autenticação
    Quando acessar "/public/bio" ou "/public/quotes/{publicId}"
    Então o shell interno não deve ser exibido
    E a navegação interna não deve estar disponível

  @planejado @seguranca-basica @logout @sessao
  Cenário: BDD-SEC-009 — Encerrar sessão ao realizar logout
    Dado que o usuário está autenticado
    Quando executar logout pelo botão de saída
    Então a sessão deve ser encerrada
    E o acesso subsequente às rotas privadas deve exigir nova autenticação

  @planejado @seguranca-basica @logout @rotas-privadas
  Cenário: BDD-SEC-010 — Impedir retorno à rota privada após logout
    Dado que o usuário realizou logout com sucesso
    Quando tentar voltar para uma rota interna pela URL
    Então deve ocorrer redirecionamento para "/login"
    E não deve haver acesso anônimo ao conteúdo interno

  @planejado @seguranca-basica @sessao @rotas-privadas
  Cenário: BDD-SEC-011 — Manter sessão válida após refresh em rota privada autenticada
    Dado que o usuário está autenticado em rota privada
    Quando atualizar a página
    Então deve permanecer autenticado enquanto a sessão for válida
    E o conteúdo interno deve continuar acessível

  @planejado @seguranca-basica @sessao @rotas-privadas @redirecionamento
  Cenário: BDD-SEC-012 — Bloquear refresh de rota privada sem sessão válida
    Dado que o usuário não possui sessão válida
    Quando atualizar uma rota privada acessada por URL direta
    Então deve ser redirecionado para "/login"
    E não deve carregar conteúdo interno

  @planejado @seguranca-basica @login @mensagens
  Cenário: BDD-SEC-013 — Tratar login inválido sem expor detalhe técnico
    Dado que o usuário está na tela de login
    Quando informar credenciais inválidas
    Então deve receber mensagem de falha clara para usuário final
    Mas não deve receber stack trace, segredo de ambiente ou erro técnico bruto

  @planejado @seguranca-basica @login @validacao
  Cenário: BDD-SEC-014 — Validar campos obrigatórios no login
    Dado que o usuário está na tela de login
    Quando tentar submeter usuário e senha vazios
    Então o formulário deve impedir envio inválido
    E deve sinalizar obrigatoriedade dos campos

  @planejado @seguranca-basica @rotas-privadas @redirecionamento
  Cenário: BDD-SEC-015 — Validar acesso direto por URL para módulo interno sem autenticação
    Dado que o usuário não está autenticado
    Quando acessar diretamente uma URL interna de módulo
    Então deve ser redirecionado para "/login"
    E não deve visualizar dados internos do módulo

  @planejado @seguranca-basica @rotas-publicas
  Cenário: BDD-SEC-016 — Permitir rota pública sem autenticação quando aplicável
    Dado que o usuário não está autenticado
    Quando acessar "/public/bio"
    Então a página pública deve ser exibida
    E não deve exigir login para visualização

  @planejado @seguranca-basica @rotas-publicas @dados
  Cenário: BDD-SEC-017 — Evitar exposição de dados internos em páginas públicas
    Dado que o usuário acessa uma página pública
    Quando visualizar o conteúdo disponível
    Então não deve haver informações internas do workspace
    E não deve haver elementos de administração interna

  @planejado @seguranca-basica @plano @bloqueio
  Cenário: BDD-SEC-018 — Exibir bloqueio por plano com mensagem clara
    Dado que o usuário está em plano sem permissão para um recurso
    Quando abrir o módulo com guard de plano
    Então deve visualizar estado de bloqueio
    E a mensagem deve indicar de forma clara o plano necessário

  @planejado @seguranca-basica @plano @bloqueio
  Cenário: BDD-SEC-019 — Impedir acesso funcional ao recurso bloqueado por plano
    Dado que o recurso está bloqueado para o plano atual
    Quando o usuário tentar operar o recurso restrito
    Então a funcionalidade bloqueada não deve ser executada
    E deve ser apresentado direcionamento de upgrade quando aplicável

  @planejado @seguranca-basica @validacao @dados
  Cenário: BDD-SEC-020 — Tratar inputs inválidos sem quebrar a aplicação
    Dado que o usuário interage com formulários internos
    Quando preencher dados claramente inválidos
    Então a aplicação deve manter estabilidade
    E deve informar o problema de forma compreensível

  @planejado @seguranca-basica @mensagens @qualidade
  Cenário: BDD-SEC-021 — Evitar mensagens de erro com stack trace
    Dado que uma operação resulte em erro tratável
    Quando a mensagem for exibida ao usuário final
    Então o texto deve ser orientado ao usuário
    Mas não deve conter stack trace ou detalhes técnicos sensíveis

  @planejado @seguranca-basica @dados @qualidade
  Cenário: BDD-SEC-022 — Evitar exposição visível de tokens e segredos
    Dado que o usuário navega por telas públicas e privadas
    Quando observar labels, mensagens e textos da UI
    Então não devem ser exibidos tokens, secrets ou chaves
    E não deve haver vazamento visível de dados sensíveis

  @planejado @seguranca-basica @mobile @shell
  Cenário: BDD-SEC-023 — Validar segurança básica em navegação mobile-like
    Dado que o usuário acessa em viewport mobile-like
    Quando navegar por login, shell e logout
    Então as restrições de acesso devem se manter equivalentes ao desktop
    E a saída de sessão deve continuar funcional

  @planejado @seguranca-basica @qualidade @analise-estatica
  Cenário: BDD-SEC-024 — Reforçar limite de escopo da cobertura de segurança básica manual
    Dado que os cenários deste módulo estão preparados
    Quando a execução futura for iniciada
    Então a abordagem deve permanecer em QA manual básico não invasivo
    Mas não deve ser tratada como pentest ou auditoria formal de segurança
