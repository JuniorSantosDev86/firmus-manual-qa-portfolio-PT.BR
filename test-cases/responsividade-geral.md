# Casos de Teste — Responsividade geral

## 1. Informações do documento

| Campo | Informação |
|---|---|
| Projeto | Portfólio de QA Manual — Firmus |
| Sistema sob teste | Aplicação Firmus |
| Módulo | Responsividade geral |
| Tipo de documento | Casos de teste manuais (planejamento) |
| Responsável | Ademir dos Santos Junior |
| Status | Planejado |

## 2. Objetivo

Preparar cobertura manual profissional para validar Responsividade geral do Firmus em desktop, tablet-like e mobile-like, mantendo todos os casos como Não Executado.

## 3. Base da análise

Inspeção estática do projeto `firmus-app` e análise de layout, componentes responsivos, classes Tailwind, navegação, cards, grids, listas, formulários e módulos principais.

## 4. Regras e premissas de responsividade

- Não registrar resultado real de UI sem execução manual em navegador.
- Priorizar legibilidade, navegabilidade, hierarquia visual e acesso às ações principais.
- Considerar shell interno com sidebar desktop e topbar/drawer mobile.
- Verificar risco de overflow horizontal global nas páginas críticas.

## 5. Viewports sugeridas para execução futura

- Desktop amplo: `1440x900`
- Desktop comum: `1366x768`
- Tablet-like: `768x1024`
- Mobile-like: `390x844`
- Mobile pequeno: `360x740`

## 6. Fora de escopo

- Execução manual real neste ciclo.
- Coleta de screenshots reais neste ciclo.
- Testes automatizados, API e banco.
- Correção de código da aplicação.

## 7. Massa de dados ou condições sugeridas

- Usuário autenticado com acesso ao shell interno.
- Base com poucos registros e base com muitos registros para listas.
- Cenários com estados vazios.
- Cenários com mensagens de validação/erro em formulários.
- Conteúdo com textos curtos e longos.

## 8. Casos de teste detalhados

| ID | Módulo | Tipo | Prioridade | Severidade se falhar | Status de design | Status de execução | Base da definição | Pré-condições | Dados/Condição de teste | Viewport sugerida | Passos detalhados | Resultado esperado | Resultado atual | Evidência | Observações |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| TC-RESP-001 | Responsividade geral | Responsivo | Alta | Alta | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de layout, componentes responsivos, classes Tailwind, navegação, cards, grids, listas, formulários e módulos principais. | App acessível e usuário autenticado | Shell interno carregado | 1440x900 | 1. Acessar Dashboard. 2. Validar shell em desktop amplo. 3. Navegar entre módulos principais. | Layout global legível e navegável sem quebra crítica. | Não Executado | Não coletada | Preparado para execução futura. |
| TC-RESP-002 | Responsividade geral | Responsivo | Alta | Alta | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de layout, componentes responsivos, classes Tailwind, navegação, cards, grids, listas, formulários e módulos principais. | App acessível e usuário autenticado | Shell interno carregado | 1366x768 | 1. Acessar Dashboard. 2. Validar shell em desktop comum. | Layout global preservado em desktop comum. | Não Executado | Não coletada | Preparado para execução futura. |
| TC-RESP-003 | Responsividade geral | Responsivo | Alta | Média | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de layout, componentes responsivos, classes Tailwind, navegação, cards, grids, listas, formulários e módulos principais. | App acessível e usuário autenticado | Rotas principais acessíveis | 768x1024 | 1. Acessar módulos principais. 2. Verificar adaptação tablet-like. | Conteúdo legível e ações acessíveis em tablet-like. | Não Executado | Não coletada | Preparado para execução futura. |
| TC-RESP-004 | Responsividade geral | Responsivo | Alta | Alta | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de layout, componentes responsivos, classes Tailwind, navegação, cards, grids, listas, formulários e módulos principais. | App acessível e usuário autenticado | Rotas internas acessíveis | 390x844 | 1. Acessar Dashboard em mobile-like. 2. Verificar topbar e conteúdo. | Layout global mobile-like utilizável e legível. | Não Executado | Não coletada | Preparado para execução futura. |
| TC-RESP-005 | Responsividade geral | Navegação | Alta | Alta | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de layout, componentes responsivos, classes Tailwind, navegação, cards, grids, listas, formulários e módulos principais. | Usuário autenticado | Menu principal disponível | 1366x768 | 1. Verificar sidebar. 2. Percorrer links principais. | Sidebar visível e navegável em desktop. | Não Executado | Não coletada | Preparado para execução futura. |
| TC-RESP-006 | Responsividade geral | Navegação | Alta | Média | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de layout, componentes responsivos, classes Tailwind, navegação, cards, grids, listas, formulários e módulos principais. | Usuário autenticado | Rota interna aberta | 390x844 | 1. Abrir rota interna. 2. Verificar topbar mobile e botão menu. | Topbar mobile exibida corretamente. | Não Executado | Não coletada | Preparado para execução futura. |
| TC-RESP-007 | Responsividade geral | Navegação | Alta | Alta | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de layout, componentes responsivos, classes Tailwind, navegação, cards, grids, listas, formulários e módulos principais. | Usuário autenticado | Rota interna aberta | 390x844 | 1. Abrir drawer. 2. Navegar por um item. 3. Fechar drawer. | Drawer abre/fecha sem sobreposição crítica persistente. | Não Executado | Não coletada | Preparado para execução futura. |
| TC-RESP-008 | Dashboard | Responsivo | Alta | Alta | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de layout, componentes responsivos, classes Tailwind, navegação, cards, grids, listas, formulários e módulos principais. | Usuário autenticado | Dados básicos no dashboard | 390x844 | 1. Acessar Dashboard. 2. Verificar cards e seções. | Dashboard legível em mobile-like. | Não Executado | Não coletada | Preparado para execução futura. |
| TC-RESP-009 | Clientes | Responsivo | Alta | Alta | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de layout, componentes responsivos, classes Tailwind, navegação, cards, grids, listas, formulários e módulos principais. | Usuário autenticado | Base com clientes | 390x844 | 1. Acessar Clientes. 2. Verificar listagem e ações. | Clientes utilizável em mobile-like. | Não Executado | Não coletada | Preparado para execução futura. |
| TC-RESP-010 | Orçamentos | Responsivo | Alta | Alta | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de layout, componentes responsivos, classes Tailwind, navegação, cards, grids, listas, formulários e módulos principais. | Usuário autenticado | Base com orçamentos | 390x844 | 1. Acessar Orçamentos. 2. Verificar listagem e ações. | Orçamentos utilizável em mobile-like. | Não Executado | Não coletada | Preparado para execução futura. |
| TC-RESP-011 | Cobranças | Responsivo | Alta | Alta | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de layout, componentes responsivos, classes Tailwind, navegação, cards, grids, listas, formulários e módulos principais. | Usuário autenticado | Base com cobranças | 390x844 | 1. Acessar Cobranças. 2. Verificar listagem e ações. | Cobranças utilizável em mobile-like. | Não Executado | Não coletada | Preparado para execução futura. |
| TC-RESP-012 | Lembretes | Responsivo | Média | Média | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de layout, componentes responsivos, classes Tailwind, navegação, cards, grids, listas, formulários e módulos principais. | Usuário autenticado | Base com lembretes | 390x844 | 1. Acessar Lembretes. 2. Verificar cards/lista e ações. | Lembretes legível e utilizável em mobile-like. | Não Executado | Não coletada | Preparado para execução futura. |
| TC-RESP-013 | Logs de atividade | Responsivo | Média | Média | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de layout, componentes responsivos, classes Tailwind, navegação, cards, grids, listas, formulários e módulos principais. | Usuário autenticado | Base com logs | 390x844 | 1. Acessar Logs. 2. Verificar feed/filtros. | Logs legíveis sem quebra crítica em mobile-like. | Não Executado | Não coletada | Preparado para execução futura. |
| TC-RESP-014 | Entrada assistida | Responsivo | Alta | Alta | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de layout, componentes responsivos, classes Tailwind, navegação, cards, grids, listas, formulários e módulos principais. | Usuário autenticado | Base mínima para fluxo assistido | 390x844 | 1. Acessar Entrada assistida. 2. Verificar input principal e ações. | Formulário/ações utilizáveis em mobile-like. | Não Executado | Não coletada | Preparado para execução futura. |
| TC-RESP-015 | Resumo semanal | Responsivo | Média | Média | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de layout, componentes responsivos, classes Tailwind, navegação, cards, grids, listas, formulários e módulos principais. | Usuário autenticado | Base com dados semanais | 390x844 | 1. Acessar Resumo semanal. 2. Verificar cards e métricas. | Hierarquia visual preservada em mobile-like. | Não Executado | Não coletada | Preparado para execução futura. |
| TC-RESP-016 | Visão Financeira | Responsivo | Alta | Alta | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de layout, componentes responsivos, classes Tailwind, navegação, cards, grids, listas, formulários e módulos principais. | Usuário autenticado | Base com dados financeiros | 390x844 | 1. Acessar Visão Financeira. 2. Verificar blocos de indicadores. | Módulo legível em mobile-like. | Não Executado | Não coletada | Preparado para execução futura. |
| TC-RESP-017 | Responsividade geral | Layout | Alta | Alta | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de layout, componentes responsivos, classes Tailwind, navegação, cards, grids, listas, formulários e módulos principais. | Usuário autenticado | Módulos com cards/grids | 390x844 | 1. Percorrer módulos com grids/cards. 2. Observar adaptação de colunas. | Sem quebra crítica de cards/grids. | Não Executado | Não coletada | Preparado para execução futura. |
| TC-RESP-018 | Responsividade geral | Listas | Alta | Alta | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de layout, componentes responsivos, classes Tailwind, navegação, cards, grids, listas, formulários e módulos principais. | Usuário autenticado | Base com poucos e muitos registros | 390x844 | 1. Acessar listas principais. 2. Observar overflow horizontal. | Sem overflow horizontal global indevido. | Não Executado | Não coletada | Preparado para execução futura. |
| TC-RESP-019 | Responsividade geral | Formulários | Alta | Alta | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de layout, componentes responsivos, classes Tailwind, navegação, cards, grids, listas, formulários e módulos principais. | Usuário autenticado | Formulários com campos curtos e longos | 390x844 | 1. Abrir formulários de módulos operacionais. 2. Verificar campos e labels. | Campos utilizáveis e legíveis em mobile-like. | Não Executado | Não coletada | Preparado para execução futura. |
| TC-RESP-020 | Responsividade geral | Usabilidade | Alta | Alta | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de layout, componentes responsivos, classes Tailwind, navegação, cards, grids, listas, formulários e módulos principais. | Usuário autenticado | CTAs principais visíveis | 390x844 | 1. Verificar botões primários/secundários em módulos-chave. | Botões e CTAs acessíveis em telas pequenas. | Não Executado | Não coletada | Preparado para execução futura. |
| TC-RESP-021 | Responsividade geral | Modal/Drawer | Alta | Alta | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de layout, componentes responsivos, classes Tailwind, navegação, cards, grids, listas, formulários e módulos principais. | Usuário autenticado | Presença de drawer/superfícies sobrepostas | 390x844 | 1. Abrir drawer e superfícies equivalentes. 2. Validar legibilidade e fechamento. | Superfícies utilizáveis em mobile-like. | Não Executado | Não coletada | Preparado para execução futura. |
| TC-RESP-022 | Responsividade geral | Validação | Média | Média | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de layout, componentes responsivos, classes Tailwind, navegação, cards, grids, listas, formulários e módulos principais. | Usuário autenticado | Fluxos com validação | 390x844 | 1. Acionar validações de formulário. 2. Observar mensagens. | Mensagens de erro/validação sem quebrar layout. | Não Executado | Não coletada | Preparado para execução futura. |
| TC-RESP-023 | Responsividade geral | Estado vazio | Média | Média | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de layout, componentes responsivos, classes Tailwind, navegação, cards, grids, listas, formulários e módulos principais. | Usuário autenticado | Módulos sem dados | 390x844 | 1. Abrir módulos sem registros. 2. Verificar estado vazio. | Estado vazio legível com CTA utilizável. | Não Executado | Não coletada | Preparado para execução futura. |
| TC-RESP-024 | Responsividade geral | Legibilidade | Média | Média | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de layout, componentes responsivos, classes Tailwind, navegação, cards, grids, listas, formulários e módulos principais. | Usuário autenticado | Dados com textos longos | 390x844 | 1. Abrir telas com textos longos. 2. Verificar quebra de linha. | Textos longos sem romper layout. | Não Executado | Não coletada | Preparado para execução futura. |
| TC-RESP-025 | Responsividade geral | Overflow | Alta | Alta | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de layout, componentes responsivos, classes Tailwind, navegação, cards, grids, listas, formulários e módulos principais. | Usuário autenticado | Percurso por páginas principais | 360x740 | 1. Percorrer páginas principais em mobile pequeno. 2. Observar scroll horizontal global. | Ausência de scroll horizontal indevido. | Não Executado | Não coletada | Preparado para execução futura. |
| TC-RESP-026 | Responsividade geral | Scroll | Alta | Alta | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de layout, componentes responsivos, classes Tailwind, navegação, cards, grids, listas, formulários e módulos principais. | Usuário autenticado | Conteúdo longo em telas principais | 390x844 | 1. Navegar em conteúdos longos. 2. Validar acesso ao fim da página. | Scroll vertical preservado com acesso aos conteúdos principais. | Não Executado | Não coletada | Preparado para execução futura. |
| TC-RESP-027 | Responsividade geral | Navegação | Média | Média | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de layout, componentes responsivos, classes Tailwind, navegação, cards, grids, listas, formulários e módulos principais. | Usuário autenticado | Rota interna aberta em mobile-like | 390x844 | 1. Abrir rota interna. 2. Fazer refresh. 3. Validar navegação. | Navegação mobile utilizável após refresh. | Não Executado | Não coletada | Preparado para execução futura. |
| TC-RESP-028 | Responsividade geral | Legibilidade | Média | Média | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de layout, componentes responsivos, classes Tailwind, navegação, cards, grids, listas, formulários e módulos principais. | Usuário autenticado | Rotas principais acessíveis | 390x844 | 1. Percorrer telas principais em mobile-like. 2. Avaliar hierarquia visual. | Hierarquia visual clara em telas pequenas. | Não Executado | Não coletada | Preparado para execução futura. |
| TC-RESP-029 | Responsividade geral | Qualidade visual | Média | Média | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de layout, componentes responsivos, classes Tailwind, navegação, cards, grids, listas, formulários e módulos principais. | Usuário autenticado | Módulos com dados diversos | 390x844 | 1. Percorrer módulos críticos. 2. Observar placeholders técnicos/textos cortados. | Sem placeholders técnicos, dados quebrados ou cortes críticos de texto. | Não Executado | Não coletada | Preparado para execução futura. |
| TC-RESP-030 | Responsividade geral | Legibilidade | Alta | Alta | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de layout, componentes responsivos, classes Tailwind, navegação, cards, grids, listas, formulários e módulos principais. | Usuário autenticado | Rotas críticas acessíveis | 390x844 | 1. Avaliar títulos, labels, valores e ações em mobile-like. | Legibilidade mínima preservada para operação. | Não Executado | Não coletada | Preparado para execução futura. |

## 9. Checklist de pré-execução manual

- [ ] Confirmar aplicação acessível.
- [ ] Confirmar usuário autenticado.
- [ ] Confirmar viewports que serão usadas.
- [ ] Confirmar massa de dados representativa.
- [ ] Confirmar módulos principais a percorrer.
- [ ] Confirmar navegação desktop.
- [ ] Confirmar navegação mobile/drawer.
- [ ] Confirmar formulários com dados curtos e longos.
- [ ] Confirmar listas com poucos e muitos registros.
- [ ] Confirmar estados vazios.
- [ ] Confirmar cenários com mensagens de erro/validação.
- [ ] Confirmar se há modais/dialogs/drawers.
- [ ] Confirmar pasta de evidências.
- [ ] Confirmar próximo número de bug disponível.
- [ ] Confirmar padrão de nomenclatura das screenshots.
- [ ] Confirmar que ciclos anteriores não serão alterados.

## 10. Plano de evidências para execução futura

- `TC-RESP-001-layout-desktop-amplo.png`
- `TC-RESP-004-layout-mobile-like.png`
- `TC-RESP-007-drawer-mobile-sem-sobreposicao.png`
- `TC-RESP-008-dashboard-mobile-like.png`
- `TC-RESP-009-clientes-mobile-like.png`
- `TC-RESP-010-orcamentos-mobile-like.png`
- `TC-RESP-011-cobrancas-mobile-like.png`
- `TC-RESP-014-entrada-assistida-mobile-like.png`
- `TC-RESP-015-resumo-semanal-mobile-like.png`
- `TC-RESP-016-visao-financeira-mobile-like.png`
- `TC-RESP-018-listas-sem-overflow-horizontal.png`
- `TC-RESP-019-formularios-mobile-like.png`
- `TC-RESP-021-modal-mobile-like.png`
- `TC-RESP-025-sem-scroll-horizontal-indevido.png`
- `BUG-008-responsividade-[descricao-curta].png`

Estes arquivos são apenas nomes sugeridos para evidências futuras. Nenhuma evidência visual foi coletada neste ciclo.

## 11. Critérios de aceite da responsividade geral

- Shell interno utilizável em desktop e mobile-like.
- Navegação principal acessível sem bloqueio crítico.
- Conteúdo principal legível em viewports planejadas.
- Ausência de overflow horizontal global indevido nas páginas principais.
- Scroll vertical preservado para acesso ao conteúdo.

## 12. Observação sobre execução

Documento de planejamento baseado em análise estática. Execução manual real em navegador permanece pendente para ciclo futuro.
