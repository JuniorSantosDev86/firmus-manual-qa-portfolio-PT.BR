# Status: Planejado.
# Base de análise: inspeção estática do projeto firmus-app.
# Observação: Estes cenários BDD descrevem o comportamento esperado de Responsividade geral e ainda precisam de execução manual via navegador em ciclo futuro.

@planejado @responsividade-geral @responsivo @analise-estatica @desktop @tablet @mobile @qualidade
Funcionalidade: Responsividade geral do Firmus
  Como usuário autenticado do Firmus
  Quero utilizar o sistema em desktop, tablet-like e mobile-like
  Para manter navegação, legibilidade e operação sem quebra visual crítica

  Contexto:
    Dado que o usuário está autenticado no Firmus
    E acessa uma rota interna com App Shell

  @planejado @smoke @desktop @sidebar
  Cenário: BDD-RESP-001 — Exibir layout global em desktop amplo
    Quando o usuário acessa o Firmus em viewport desktop amplo
    Então a sidebar deve permanecer visível
    E a topbar mobile não deve ser exibida
    E o conteúdo principal deve ocupar a área restante sem corte crítico

  @planejado @desktop @grid
  Cenário: BDD-RESP-002 — Exibir layout global em desktop comum
    Quando o usuário acessa o Firmus em viewport desktop comum
    Então a área de conteúdo deve manter espaçamento lateral responsivo
    E o conteúdo não deve colidir com a sidebar

  @planejado @tablet @navegacao
  Cenário: BDD-RESP-003 — Exibir layout global em tablet-like
    Quando o usuário acessa o Firmus em viewport tablet-like
    Então a navegação deve continuar utilizável
    E o conteúdo principal deve permanecer legível

  @planejado @mobile @topbar
  Cenário: BDD-RESP-004 — Exibir layout global em mobile-like
    Quando o usuário acessa o Firmus em viewport mobile-like
    Então a topbar mobile deve ser exibida
    E a sidebar desktop não deve ser exibida

  @planejado @desktop @sidebar
  Cenário: BDD-RESP-005 — Exibir sidebar corretamente em desktop
    Quando o usuário navega em viewport desktop
    Então os links principais devem ficar disponíveis na sidebar
    E o scroll vertical da sidebar deve funcionar quando houver muitos itens

  @planejado @mobile @topbar
  Cenário: BDD-RESP-006 — Exibir topbar mobile corretamente
    Quando o usuário navega em viewport mobile-like
    Então o botão de menu deve estar acessível
    E o link da home deve permanecer visível

  @planejado @mobile @drawer
  Cenário: BDD-RESP-007 — Abrir e fechar drawer mobile sem sobreposição crítica
    Quando o usuário abre o menu mobile
    Então o drawer deve ser exibido com links navegáveis
    E ao fechar o drawer a área principal deve voltar a ficar interativa

  @planejado @mobile @cards @dashboard
  Cenário: BDD-RESP-008 — Exibir cards do Dashboard em mobile-like
    Quando o usuário acessa o Dashboard em viewport mobile-like
    Então os cards devem manter legibilidade
    E não deve haver sobreposição de textos e ações

  @planejado @mobile @listas
  Cenário: BDD-RESP-009 — Exibir Clientes em mobile-like
    Quando o usuário acessa Clientes em viewport mobile-like
    Então a listagem deve permanecer utilizável
    E ações principais devem continuar acessíveis

  @planejado @mobile @listas
  Cenário: BDD-RESP-010 — Exibir Orçamentos em mobile-like
    Quando o usuário acessa Orçamentos em viewport mobile-like
    Então a listagem deve preservar leitura de dados essenciais
    E os controles principais devem continuar utilizáveis

  @planejado @mobile @listas
  Cenário: BDD-RESP-011 — Exibir Cobranças em mobile-like
    Quando o usuário acessa Cobranças em viewport mobile-like
    Então os itens devem permanecer legíveis
    E os CTAs do módulo devem continuar acessíveis

  @planejado @mobile @listas
  Cenário: BDD-RESP-012 — Exibir Lembretes em mobile-like
    Quando o usuário acessa Lembretes em viewport mobile-like
    Então os blocos/listas do módulo devem manter legibilidade
    E as ações de status devem continuar clicáveis

  @planejado @mobile @listas
  Cenário: BDD-RESP-013 — Exibir Logs de atividade em mobile-like
    Quando o usuário acessa Logs de atividade em viewport mobile-like
    Então os itens de log devem permanecer legíveis
    E filtros e busca não devem cortar controles críticos

  @planejado @mobile @formularios
  Cenário: BDD-RESP-014 — Exibir Entrada assistida em mobile-like
    Quando o usuário acessa Entrada assistida em viewport mobile-like
    Então campos e ações de interpretação devem permanecer utilizáveis
    E mensagens de validação devem continuar legíveis

  @planejado @mobile @cards
  Cenário: BDD-RESP-015 — Exibir Resumo semanal em mobile-like
    Quando o usuário acessa Resumo semanal em viewport mobile-like
    Então cards e blocos de resumo devem manter hierarquia visual
    E métricas principais devem continuar legíveis

  @planejado @mobile @cards
  Cenário: BDD-RESP-016 — Exibir Visão Financeira em mobile-like
    Quando o usuário acessa Visão Financeira em viewport mobile-like
    Então os blocos de indicadores devem permanecer legíveis
    E conteúdos financeiros não devem quebrar o layout

  @planejado @cards @grid
  Cenário: BDD-RESP-017 — Exibir cards e grids sem quebra crítica
    Quando o usuário percorre módulos com cards e grids
    Então as colunas devem se adaptar por viewport
    E não deve haver sobreposição de card com card

  @planejado @listas @overflow
  Cenário: BDD-RESP-018 — Exibir listas sem overflow horizontal indevido
    Quando o usuário acessa listagens em telas pequenas
    Então a leitura deve ocorrer sem deslocamento horizontal global da página
    E eventuais áreas roláveis devem ser locais e controladas

  @planejado @formularios @mobile
  Cenário: BDD-RESP-019 — Exibir formulários utilizáveis em mobile-like
    Quando o usuário abre formulários em viewport mobile-like
    Então campos devem permanecer acessíveis sem corte
    E labels e valores devem manter legibilidade

  @planejado @mobile
  Cenário: BDD-RESP-020 — Exibir botões e CTAs acessíveis em telas pequenas
    Quando o usuário interage com ações primárias e secundárias
    Então botões não devem ficar fora da área visível crítica
    E não deve ocorrer sobreposição que impeça interação

  @planejado @modal @drawer @mobile
  Cenário: BDD-RESP-021 — Exibir modais/dialogs/drawers utilizáveis em mobile-like
    Quando o usuário abre uma superfície sobreposta
    Então o conteúdo deve permanecer legível
    E a ação de fechamento deve estar acessível

  @planejado @mobile @legibilidade
  Cenário: BDD-RESP-022 — Exibir mensagens de erro e validação sem quebrar layout
    Quando o sistema exibe mensagens de erro ou validação
    Então o layout não deve colapsar
    E os textos devem continuar legíveis em telas pequenas

  @planejado @mobile @legibilidade
  Cenário: BDD-RESP-023 — Exibir estados vazios com boa legibilidade
    Quando um módulo não possui registros
    Então o estado vazio deve ser apresentado sem corte de conteúdo
    E as ações de continuidade devem permanecer acessíveis

  @planejado @overflow @legibilidade
  Cenário: BDD-RESP-024 — Exibir textos longos com quebra adequada
    Quando existirem títulos, labels ou mensagens longas
    Então o texto deve quebrar linha de forma legível
    E não deve extrapolar a largura útil da interface

  @planejado @overflow @scroll
  Cenário: BDD-RESP-025 — Evitar scroll horizontal indevido nas páginas principais
    Quando o usuário percorre as páginas principais em viewport reduzida
    Então não deve existir overflow horizontal global indevido
    E o scroll vertical deve permanecer funcional

  @planejado @mobile @navegacao
  Cenário: BDD-RESP-026 — Manter navegação utilizável após refresh em mobile-like
    Quando o usuário faz refresh em rota interna usando viewport mobile-like
    Então a topbar mobile deve continuar disponível
    E o acesso ao drawer deve permanecer funcional
