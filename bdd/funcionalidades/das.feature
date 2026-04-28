# Status: Planejado.
# Observação: Estes cenários BDD descrevem o comportamento esperado da Dashboard.
# A execução real do ciclo 01 está documentada separadamente em test-executions/execution-cycle-01.md.

Funcionalidade: Dashboard do Firmus
  Como usuário autenticado do Firmus
  Quero visualizar uma dashboard clara, organizada e operacional
  Para entender rapidamente o estado da minha operação, meus próximos passos e os principais atalhos do sistema

  Contexto:
    Dado que o usuário possui credenciais válidas
    E está autenticado no Firmus
    E acessou a área interna da aplicação

  @planejado @dashboard @smoke
  Cenário: BDD-DASH-001 — Carregar a Dashboard após login bem-sucedido
    Quando o usuário realiza login com credenciais válidas
    Então o sistema deve redirecionar o usuário para a Dashboard
    E a página deve carregar sem erro inesperado
    E o conteúdo principal da Dashboard deve ficar visível
    E o usuário não deve ser redirecionado indevidamente para a tela de login

  @planejado @dashboard @layout
  Cenário: BDD-DASH-002 — Exibir sidebar com os módulos principais do Firmus
    Quando o usuário acessa a Dashboard
    Então a sidebar deve ser exibida com o logo do Firmus
    E deve apresentar a seção "Principal"
    E deve apresentar a seção "Operação"
    E deve apresentar a seção "Inteligência"
    E os módulos visíveis devem possuir rótulos claros e legíveis
    E o item "Dashboard" deve aparecer como item ativo ou selecionado

  @planejado @dashboard @header
  Cenário: BDD-DASH-003 — Exibir header com informações da sessão
    Quando o usuário visualiza a Dashboard
    Então o header superior deve apresentar o contexto do workspace interno
    E deve exibir uma ação de saída da conta
    E deve exibir o avatar ou identificação visual do usuário
    E esses elementos devem permanecer legíveis e alinhados
    E não deve haver sobreposição visual entre header, sidebar e conteúdo principal

  @planejado @dashboard @hero
  Cenário: BDD-DASH-004 — Exibir mensagem principal de boas-vindas
    Quando o usuário acessa a Dashboard
    Então o sistema deve exibir a mensagem "Bem-vindo ao Firmus"
    E deve apresentar o Firmus como copiloto operacional para prestadores de serviços
    E a mensagem principal deve ser visualmente destacada
    E o texto auxiliar deve explicar o valor operacional da plataforma
    E não deve haver texto quebrado, truncado ou placeholder visível

  @planejado @dashboard @cta @navegacao
  Cenário: BDD-DASH-005 — Navegar para Orçamentos pelo CTA principal
    Dado que a Dashboard exibe o botão "Ir para orçamentos"
    Quando o usuário clica no botão "Ir para orçamentos"
    Então o sistema deve direcionar o usuário para a área de Orçamentos
    E a navegação deve ocorrer sem erro de rota
    E a página de destino deve carregar corretamente
    E o usuário deve conseguir retornar para a Dashboard pela navegação principal

  @planejado @dashboard @cta @navegacao
  Cenário: BDD-DASH-006 — Navegar para Perfil da Empresa pelo CTA secundário
    Dado que a Dashboard exibe o botão "Ver perfil da empresa"
    Quando o usuário clica no botão "Ver perfil da empresa"
    Então o sistema deve direcionar o usuário para a área de Perfil da Empresa
    E a navegação deve ocorrer sem erro inesperado
    E o conteúdo da página de Perfil da Empresa deve ficar acessível
    E o estado da sessão autenticada deve ser preservado

  @planejado @dashboard @onboarding
  Cenário: BDD-DASH-007 — Exibir onboarding inicial com progresso atual
    Quando o usuário visualiza a seção de onboarding inicial
    Então o sistema deve exibir o título do onboarding de forma clara
    E deve informar quantas etapas já foram concluídas
    E deve apresentar uma barra ou indicador de progresso
    E o percentual exibido deve ser coerente com a quantidade de etapas concluídas
    E a seção não deve parecer quebrada, vazia ou incompleta

  @planejado @dashboard @onboarding
  Cenário: BDD-DASH-008 — Exibir próximo passo recomendado
    Dado que o onboarding ainda possui etapas pendentes
    Quando o usuário visualiza a seção "Próximo passo recomendado"
    Então o sistema deve indicar uma próxima ação clara para o usuário
    E deve explicar brevemente por que aquela ação é recomendada
    E deve apresentar um botão de ação relacionado ao próximo passo
    E o botão deve conduzir para uma área coerente com a recomendação
    E o usuário deve entender o que fazer a seguir sem depender de suporte externo

  @planejado @dashboard @checklist
  Cenário: BDD-DASH-009 — Exibir checklist com etapas concluídas e pendentes
    Quando o usuário visualiza o checklist de onboarding
    Então o sistema deve diferenciar visualmente etapas concluídas e pendentes
    E cada etapa deve possuir um título claro
    E cada etapa deve apresentar um status compreensível
    E as ações "Abrir" devem direcionar o usuário para os módulos corretos
    E as etapas pendentes não devem ser exibidas como concluídas indevidamente

  @planejado @dashboard @onboarding @ux
  Cenário: BDD-DASH-010 — Ocultar o card de onboarding sem quebrar a Dashboard
    Dado que a Dashboard exibe uma ação para ocultar o onboarding
    Quando o usuário clica em "Ocultar"
    Então o card de onboarding deve ser ocultado ou recolhido conforme o comportamento esperado
    E a Dashboard deve permanecer utilizável
    E o restante do conteúdo não deve sofrer quebra visual
    E a ação não deve encerrar a sessão do usuário
    E a navegação principal deve continuar disponível

  @planejado @dashboard @refresh
  Cenário: BDD-DASH-011 — Manter a Dashboard utilizável após atualizar a página
    Dado que o usuário está autenticado e visualizando a Dashboard
    Quando o usuário atualiza a página no navegador
    Então a Dashboard deve carregar novamente sem erro inesperado
    E a sessão do usuário deve ser mantida quando ainda for válida
    E os principais elementos da página devem continuar visíveis
    E a sidebar, header, hero e onboarding não devem apresentar estado quebrado

  @planejado @dashboard @responsivo @desktop
  Cenário: BDD-DASH-012 — Exibir layout organizado em viewport desktop
    Quando o usuário acessa a Dashboard em viewport desktop
    Então a sidebar deve permanecer visível e utilizável
    E o conteúdo principal deve ficar centralizado ou distribuído de forma adequada
    E os cards devem manter espaçamento consistente
    E textos, botões e indicadores devem permanecer legíveis
    E não deve haver overflow horizontal

  @planejado @dashboard @responsivo @mobile
  Cenário: BDD-DASH-013 — Exibir layout utilizável em viewport mobile-like
    Quando o usuário acessa a Dashboard em viewport mobile-like
    Então a navegação deve continuar acessível pelo padrão mobile definido pela aplicação
    E os cards devem se adaptar à largura da tela
    E botões e textos devem permanecer clicáveis e legíveis
    E não deve haver conteúdo cortado, sobreposto ou extrapolando a tela
    E o usuário deve conseguir acessar os módulos principais

  @planejado @dashboard @conteudo @qualidade
  Cenário: BDD-DASH-014 — Não exibir placeholders, textos técnicos ou informações duplicadas
    Quando o usuário revisa os textos, cards, CTAs e seções da Dashboard
    Então o sistema não deve exibir placeholders como "lorem ipsum", "undefined", "null" ou textos temporários
    E não deve exibir mensagens técnicas de erro para o usuário final
    E não deve duplicar informações dentro da mesma seção
    E os rótulos devem estar em PT-BR de forma consistente
    E a tela deve comunicar valor operacional com clareza