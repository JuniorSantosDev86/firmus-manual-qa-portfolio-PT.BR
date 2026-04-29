# Ciclo de Execução 17 — Responsividade geral — Preparação e Análise Estática

## Informações do documento

| Campo | Informação |
|---|---|
| Projeto | Portfólio de QA Manual — Firmus |
| Sistema sob teste | Aplicação Firmus |
| Tipo de documento | Preparação de execução / análise estática |
| Ciclo | 17 |
| Módulo | Responsividade geral |
| Responsável | Ademir dos Santos Junior |
| Status | Preparado para execução manual futura |

## Objetivo

Documentar a preparação do ciclo de testes de Responsividade geral com base na inspeção estática do projeto `firmus-app`, aprofundando cenários BDD e casos de teste para futura execução manual.

## Base da análise

- Projeto analisado: `firmus-app`
- Repositório de documentação atualizado: `firmus-manual-qa-portfolio-PT.BR`
- Tipo de análise: inspeção estática de layout, breakpoints, componentes, grids, cards, formulários, listas, navegação e classes responsivas
- Execução em navegador: Não realizada
- Screenshots: Não coletadas
- Resultado real de UI: Pendente de execução manual futura

## Escopo preparado

- Layout desktop.
- Layout tablet-like.
- Layout mobile-like.
- Sidebar desktop.
- Topbar mobile.
- Drawer mobile.
- Cards e grids.
- Listas e tabelas.
- Formulários.
- Botões e CTAs.
- Modais/dialogs/drawers.
- Estados vazios.
- Mensagens de erro e validação.
- Textos longos.
- Scroll vertical.
- Risco de overflow horizontal.
- Legibilidade geral.
- Módulos principais em viewport reduzida.
- Plano de evidências futuras.
- Checklist de pré-execução manual.

## Fora de escopo

- Execução manual via navegador.
- Testes automatizados.
- Testes de API.
- Validação direta em banco de dados.
- Testes de carga.
- Testes invasivos de segurança.
- Revisão de código com alteração.
- Validação visual real em runtime.
- Auditoria completa de acessibilidade.
- Teste em dispositivos físicos reais.
- Validação cross-browser completa.

## Arquivos do produto consultados

| Arquivo | Uso na análise |
|---|---|
| `firmus-app/app/layout.tsx` | Layout raiz e composição do shell interno |
| `firmus-app/components/layout/app-shell.tsx` | Estrutura global, topbar mobile, container e alternância desktop/mobile |
| `firmus-app/components/layout/sidebar-nav.tsx` | Sidebar desktop e scroll da navegação |
| `firmus-app/components/layout/mobile-drawer.tsx` | Drawer mobile e interação de abertura/fechamento |
| `firmus-app/lib/navigation.ts` | Itens de navegação e módulos críticos cobertos |
| `firmus-app/app/globals.css` | Classes utilitárias e padrões responsivos reutilizados |
| `firmus-app/components/dashboard/internal-dashboard-home.tsx` | Estrutura do Dashboard em cards/seções |
| `firmus-app/components/clients-manager.tsx` | Estrutura de listagem e formulário de Clientes |
| `firmus-app/components/quotes-manager.tsx` | Estrutura de listagem/formulário de Orçamentos |
| `firmus-app/components/charges-manager.tsx` | Estrutura de Cobranças e risco de overflow |
| `firmus-app/components/reminders/reminders-manager.tsx` | Estrutura de Lembretes e estados |
| `firmus-app/components/activity-logs/activity-logs-view.tsx` | Feed/lista de Logs e filtros |
| `firmus-app/components/assisted-input/assisted-input-manager.tsx` | Formulários e mensagens da Entrada assistida |
| `firmus-app/components/weekly-summary/weekly-summary-view.tsx` | Cards/métricas do Resumo semanal |
| `firmus-app/components/financial-overview-summary.tsx` | Indicadores da Visão Financeira |
| `firmus-app/cypress/e2e/home.cy.ts` | Referência de viewport desktop/mobile e drawer |
| `firmus-app/cypress/e2e/security-foundation.cy.ts` | Referência de navegação responsiva visível |
| `firmus-app/cypress/e2e/activity-logs.cy.ts` | Referência de navegação para Logs em viewport desktop |

## Resumo do ciclo

| Item | Resultado |
|---|---|
| BDD de Responsividade geral | Aprofundado |
| Casos de teste de Responsividade geral | Aprofundados |
| Checklist de pré-execução | Criado |
| Plano de evidências futuras | Criado |
| Execução manual via navegador | Não realizada |
| Evidências visuais | Não coletadas |
| Bugs reais reportados | Nenhum por inspeção estática neste ciclo |
| Status para próxima etapa | Pronto para execução manual futura |

## Casos preparados

| ID | Caso de Teste | Status de design | Status de execução | Viewport principal | Observação |
|---|---|---|---|---|---|
| TC-RESP-001 | Exibir layout global corretamente em desktop amplo | Planejado | Não Executado | 1440x900 | Preparado com base em inspeção estática |
| TC-RESP-002 | Exibir layout global corretamente em desktop comum | Planejado | Não Executado | 1366x768 | Preparado com base em inspeção estática |
| TC-RESP-003 | Exibir layout global corretamente em tablet-like | Planejado | Não Executado | 768x1024 | Preparado com base em inspeção estática |
| TC-RESP-004 | Exibir layout global corretamente em mobile-like | Planejado | Não Executado | 390x844 | Preparado com base em inspeção estática |
| TC-RESP-005 | Exibir sidebar corretamente em desktop | Planejado | Não Executado | 1366x768 | Preparado com base em inspeção estática |
| TC-RESP-006 | Exibir topbar mobile corretamente em mobile-like | Planejado | Não Executado | 390x844 | Preparado com base em inspeção estática |
| TC-RESP-007 | Abrir e fechar drawer mobile sem sobreposição crítica | Planejado | Não Executado | 390x844 | Preparado com base em inspeção estática |
| TC-RESP-008 | Exibir Dashboard corretamente em mobile-like | Planejado | Não Executado | 390x844 | Preparado com base em inspeção estática |
| TC-RESP-009 | Exibir Clientes corretamente em mobile-like | Planejado | Não Executado | 390x844 | Preparado com base em inspeção estática |
| TC-RESP-010 | Exibir Orçamentos corretamente em mobile-like | Planejado | Não Executado | 390x844 | Preparado com base em inspeção estática |
| TC-RESP-011 | Exibir Cobranças corretamente em mobile-like | Planejado | Não Executado | 390x844 | Preparado com base em inspeção estática |
| TC-RESP-012 | Exibir Lembretes corretamente em mobile-like | Planejado | Não Executado | 390x844 | Preparado com base em inspeção estática |
| TC-RESP-013 | Exibir Logs de atividade corretamente em mobile-like | Planejado | Não Executado | 390x844 | Preparado com base em inspeção estática |
| TC-RESP-014 | Exibir Entrada assistida corretamente em mobile-like | Planejado | Não Executado | 390x844 | Preparado com base em inspeção estática |
| TC-RESP-015 | Exibir Resumo semanal corretamente em mobile-like | Planejado | Não Executado | 390x844 | Preparado com base em inspeção estática |
| TC-RESP-016 | Exibir Visão Financeira corretamente em mobile-like | Planejado | Não Executado | 390x844 | Preparado com base em inspeção estática |
| TC-RESP-017 | Exibir cards e grids sem quebra crítica em telas pequenas | Planejado | Não Executado | 390x844 | Preparado com base em inspeção estática |
| TC-RESP-018 | Exibir listas sem overflow horizontal indevido | Planejado | Não Executado | 390x844 | Preparado com base em inspeção estática |
| TC-RESP-019 | Exibir formulários com campos utilizáveis em mobile-like | Planejado | Não Executado | 390x844 | Preparado com base em inspeção estática |
| TC-RESP-020 | Exibir botões e CTAs acessíveis em telas pequenas | Planejado | Não Executado | 390x844 | Preparado com base em inspeção estática |
| TC-RESP-021 | Exibir modais/dialogs/drawers utilizáveis em mobile-like | Planejado | Não Executado | 390x844 | Preparado com base em inspeção estática |
| TC-RESP-022 | Exibir mensagens de erro e validação sem quebrar layout | Planejado | Não Executado | 390x844 | Preparado com base em inspeção estática |
| TC-RESP-023 | Exibir estados vazios com boa legibilidade em mobile-like | Planejado | Não Executado | 390x844 | Preparado com base em inspeção estática |
| TC-RESP-024 | Manter textos longos com quebra adequada | Planejado | Não Executado | 390x844 | Preparado com base em inspeção estática |
| TC-RESP-025 | Evitar scroll horizontal indevido nas páginas principais | Planejado | Não Executado | 360x740 | Preparado com base em inspeção estática |
| TC-RESP-026 | Preservar scroll vertical e acesso aos conteúdos principais | Planejado | Não Executado | 390x844 | Preparado com base em inspeção estática |
| TC-RESP-027 | Manter navegação utilizável após refresh em mobile-like | Planejado | Não Executado | 390x844 | Preparado com base em inspeção estática |
| TC-RESP-028 | Comunicar claramente a hierarquia visual em telas pequenas | Planejado | Não Executado | 390x844 | Preparado com base em inspeção estática |
| TC-RESP-029 | Não exibir placeholders técnicos, dados quebrados ou textos cortados | Planejado | Não Executado | 390x844 | Preparado com base em inspeção estática |
| TC-RESP-030 | Manter legibilidade mínima de títulos, labels, valores e ações | Planejado | Não Executado | 390x844 | Preparado com base em inspeção estática |

## Checklist de pré-execução manual

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

## Plano de evidências futuras

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
- `BUG-008-responsividade-[descricao-curta].png`, se bug for encontrado no futuro.

Estes arquivos são apenas nomes sugeridos para evidências futuras. Nenhuma evidência visual foi coletada neste ciclo.

## Bugs encontrados por inspeção estática

Nenhum bug foi reportado neste ciclo, pois não houve execução manual via navegador. A criação de bugs funcionais/visuais deve ocorrer somente após execução real ou inconsistência comprovável por inspeção estática.

## Evidências

Nenhuma evidência visual foi coletada neste ciclo, pois a análise foi feita diretamente no projeto `firmus-app`, sem execução no navegador.

## Decisão do ciclo

Preparado para execução manual futura.

A Responsividade geral agora possui BDD, casos de teste, checklist de pré-execução e plano de evidências prontos para um ciclo real posterior.

## Riscos conhecidos

- Comportamento visual real ainda não validado em navegador.
- Breakpoints ainda precisam ser confirmados em runtime.
- Drawer/menu mobile ainda precisa ser confirmado em execução manual.
- Grids e cards ainda precisam ser avaliados com dados reais.
- Textos longos ainda precisam ser testados manualmente.
- Listas e formulários ainda precisam ser validados em viewport reduzida.
- Possíveis diferenças entre código analisado e comportamento em runtime.
- Evidências ainda precisam ser coletadas em ciclo futuro.

## Próximos passos

- Iniciar execução manual de Responsividade geral em ciclo futuro.
- Executar TC-RESP-001 a TC-RESP-030.
- Coletar screenshots reais conforme plano de evidências.
- Registrar bugs visuais/funcionais se observados.
- Atualizar matriz de cobertura após execução real.
- Reavaliar Go/No-Go da responsividade geral após validação em UI.
