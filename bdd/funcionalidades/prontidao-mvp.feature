# Status: Planejado.
# Base de análise: inspeção estática do projeto firmus-app.
# Observação: Estes cenários BDD descrevem o comportamento esperado do módulo Prontidão do MVP e ainda precisam de execução manual via navegador em ciclo futuro.

@planejado @mvp @prontidao @analise-estatica
Funcionalidade: Prontidão do MVP
  Como usuário autenticado do Firmus
  Quero revisar a prontidão operacional do MVP
  Para decidir com segurança o avanço do uso beta

  Contexto:
    Dado que o usuário está autenticado no Firmus
    E a rota "/mvp-readiness" está disponível na navegação principal como "Prontidão do MVP"

  @smoke @checklist
  Cenário: BDD-MVP-001 — Acessar a página de Prontidão do MVP
    Quando o usuário acessa a rota "/mvp-readiness"
    Então a página deve exibir o título "Prontidão do MVP"
    E deve exibir o painel principal de prontidão
    E deve manter o contexto "MVP Hardening"

  @smoke @progresso
  Cenário: BDD-MVP-002 — Exibir status geral da prontidão
    Quando a página de prontidão é carregada
    Então deve exibir um status geral entre "Pronto para beta", "Pronto com alertas" ou "Beta ainda bloqueado"
    E deve exibir o resumo textual correspondente ao status atual

  @progresso @pendencias
  Cenário: BDD-MVP-003 — Exibir contadores de bloqueios, alertas e pontos prontos
    Quando a página apresenta o resumo de prontidão
    Então deve exibir os cards "Bloqueios", "Alertas" e "Pontos prontos"
    E cada card deve apresentar contagem numérica coerente com os itens avaliados

  @checklist @criterios
  Cenário: BDD-MVP-004 — Exibir checklist agrupado por domínios de prontidão
    Quando o snapshot de prontidão estiver disponível
    Então a página deve listar grupos de checklist por domínio operacional
    E cada grupo deve exibir quantidade de pontos acompanhados
    E cada item deve apresentar label, descrição e status

  @checklist @pendencias
  Cenário: BDD-MVP-005 — Exibir itens com status de bloqueio
    Dado que existam itens classificados como bloqueio
    Quando o usuário visualizar o checklist
    Então os itens bloqueados devem ser identificáveis pelo status "Bloqueio"
    E devem indicar descrição objetiva da pendência

  @checklist @progresso
  Cenário: BDD-MVP-006 — Exibir itens com status pronto e atenção
    Quando o usuário revisar os itens de prontidão
    Então itens prontos devem exibir status "Pronto"
    E itens com risco parcial devem exibir status "Atenção"

  @criterios @cta
  Cenário: BDD-MVP-007 — Comunicar critérios de prontidão por regras reais do workspace
    Quando o módulo calcular a prontidão
    Então os critérios devem refletir estado de perfil, onboarding, operação principal, fiscal, confiabilidade e consistência
    E o texto deve indicar claramente quando o beta está bloqueado por requisitos mínimos

  @pendencias @cta
  Cenário: BDD-MVP-008 — Exibir próximas revisões sugeridas quando houver itens não prontos
    Dado que existam itens com status diferente de "Pronto"
    Quando a seção de próximas revisões for exibida
    Então a página deve listar ações recomendadas priorizadas
    E cada ação com destino deve exibir CTA "Abrir módulo"

  @cta @navegacao
  Cenário: BDD-MVP-009 — Exibir CTA de revisão de onboarding
    Quando o painel de resumo estiver visível
    Então deve existir o CTA "Revisar onboarding"
    E esse CTA deve apontar para a rota "/onboarding"

  @navegacao @cta
  Cenário: BDD-MVP-010 — Exibir CTAs dos itens para módulos relacionados
    Quando um item de prontidão possuir destino configurado
    Então o item deve exibir o CTA "Abrir módulo"
    E o link deve apontar para rota coerente com a pendência descrita

  @checklist @qualidade
  Cenário: BDD-MVP-011 — Exibir grupos de cobertura revisada sem dados quebrados
    Quando a seção "Cobertura revisada" for apresentada
    Então ela deve listar apenas grupos existentes no snapshot atual
    E não deve exibir placeholders, textos técnicos ou labels vazias

  @navegacao @smoke
  Cenário: BDD-MVP-012 — Navegar entre Dashboard e Prontidão do MVP
    Quando o usuário alterna entre "/" e "/mvp-readiness"
    Então o módulo deve permanecer acessível
    E a identificação "Prontidão do MVP" deve continuar consistente

  @refresh @smoke
  Cenário: BDD-MVP-013 — Recarregar a página sem perda de estrutura funcional
    Quando o usuário recarrega "/mvp-readiness"
    Então deve haver estado de carregamento "Carregando prontidão do MVP..."
    E após o carregamento o painel de prontidão deve ser renderizado novamente

  @responsivo @desktop
  Cenário: BDD-MVP-014 — Comportamento esperado em viewport desktop
    Quando a tela for exibida em viewport desktop
    Então os blocos de resumo devem manter leitura e organização em grade
    E os grupos de checklist devem permanecer legíveis e navegáveis

  @responsivo @mobile
  Cenário: BDD-MVP-015 — Comportamento esperado em viewport mobile-like
    Quando a tela for exibida em viewport mobile-like
    Então os conteúdos devem reorganizar sem sobreposição impeditiva
    E CTAs e textos devem permanecer acionáveis e legíveis

  @qualidade @progresso
  Cenário: BDD-MVP-016 — Comunicar valor operacional da prontidão para decisão de beta
    Quando o usuário consulta o módulo
    Então a combinação de status geral, resumo, contadores e checklist deve apoiar decisão operacional
    E as mensagens devem estar em PT-BR compreensível para operação diária
