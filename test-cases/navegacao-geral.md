# Casos de Teste — Navegação geral

## 1. Informações do documento

| Campo | Informação |
|---|---|
| Projeto | Portfólio de QA Manual — Firmus |
| Sistema sob teste | Aplicação Firmus |
| Módulo | Navegação geral |
| Responsável | Ademir dos Santos Junior |
| Tipo | Preparação de testes por análise estática |
| Última atualização | 2026-04-29 |

## 2. Objetivo

Definir cobertura manual profissional para Navegação geral, pronta para execução futura em navegador, com base em inspeção estática do projeto `firmus-app`.

## 3. Base da análise

Inspeção estática do projeto `firmus-app` e análise de rotas, componentes de layout, sidebar, drawer, top navigation e configuração de navegação.

## 4. Regras e premissas de navegação

- A navegação principal é definida em `firmus-app/lib/navigation.ts`.
- A navegação desktop usa sidebar (`sidebar-nav`).
- A navegação mobile-like usa topbar + drawer (`mobile-topbar`, `mobile-drawer`).
- Rotas privadas exigem autenticação (`proxy.ts` e `lib/auth/route-boundary.ts`).
- Parte dos módulos pode ter bloqueio por plano no conteúdo, com mensagem de upgrade.

## 5. Fora de escopo

- Execução manual real via navegador neste documento.
- Automação de testes.
- Testes de API.
- Coleta de screenshots neste ciclo de preparação.

## 6. Massa de dados ou condições sugeridas

- Usuário autenticado válido.
- Massa com módulos acessíveis e rotas internas ativas.
- Cenário de plano com restrições e sem restrições.
- Viewports: desktop e mobile-like.

## 7. Casos de teste detalhados

Base da definição (todos os casos): Inspeção estática do projeto `firmus-app` e análise de rotas, componentes de layout, sidebar, drawer, top navigation e configuração de navegação.

| ID | Módulo | Tipo | Prioridade | Severidade se falhar | Status de design | Status de execução | Pré-condições | Dados/Condição de teste | Passos detalhados | Resultado esperado | Resultado atual | Evidência | Observações |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| TC-NAV-001 | Navegação geral | Funcional/UI | Alta | Alta | Planejado | Não Executado | Usuário autenticado | Viewport desktop | 1. Acessar rota interna. 2. Observar shell. | Sidebar visível com grupos e itens de navegação. | Pendente de execução manual | Não coletada | Definido por análise estática |
| TC-NAV-002 | Navegação geral | Funcional/UI | Alta | Alta | Planejado | Não Executado | Usuário autenticado | Viewport mobile-like | 1. Acessar rota interna. 2. Observar topbar. | Topbar mobile com botão Menu visível. | Pendente de execução manual | Não coletada | Definido por análise estática |
| TC-NAV-003 | Navegação geral | Funcional/UI | Alta | Alta | Planejado | Não Executado | Usuário autenticado | Mobile drawer disponível | 1. Abrir menu. 2. Fechar menu. | Drawer abre e fecha sem travar navegação. | Pendente de execução manual | Não coletada | Definido por análise estática |
| TC-NAV-004 | Navegação geral | Funcional | Alta | Alta | Planejado | Não Executado | Usuário autenticado | Item Dashboard | 1. Clicar em Dashboard. | Navega para `/`. | Pendente de execução manual | Não coletada | Definido por análise estática |
| TC-NAV-005 | Navegação geral | Funcional | Alta | Alta | Planejado | Não Executado | Usuário autenticado | Item Perfil da Empresa | 1. Clicar em Perfil da Empresa. | Navega para `/business-profile`. | Pendente de execução manual | Não coletada | Definido por análise estática |
| TC-NAV-006 | Navegação geral | Funcional | Alta | Alta | Planejado | Não Executado | Usuário autenticado | Item Clientes | 1. Clicar em Clientes. | Navega para `/clients`. | Pendente de execução manual | Não coletada | Definido por análise estática |
| TC-NAV-007 | Navegação geral | Funcional | Alta | Alta | Planejado | Não Executado | Usuário autenticado | Item Plano | 1. Clicar em Plano. | Navega para `/plan`. | Pendente de execução manual | Não coletada | Definido por análise estática |
| TC-NAV-008 | Navegação geral | Funcional | Alta | Alta | Planejado | Não Executado | Usuário autenticado | Item Prontidão do MVP | 1. Clicar no item. | Navega para `/mvp-readiness`. | Pendente de execução manual | Não coletada | Definido por análise estática |
| TC-NAV-009 | Navegação geral | Funcional | Alta | Alta | Planejado | Não Executado | Usuário autenticado | Item Serviços | 1. Clicar em Serviços. | Navega para `/services`. | Pendente de execução manual | Não coletada | Definido por análise estática |
| TC-NAV-010 | Navegação geral | Funcional | Alta | Alta | Planejado | Não Executado | Usuário autenticado | Item Orçamentos | 1. Clicar em Orçamentos. | Navega para `/quotes`. | Pendente de execução manual | Não coletada | Definido por análise estática |
| TC-NAV-011 | Navegação geral | Funcional | Alta | Alta | Planejado | Não Executado | Usuário autenticado | Item Cobranças | 1. Clicar em Cobranças. | Navega para `/charges`. | Pendente de execução manual | Não coletada | Definido por análise estática |
| TC-NAV-012 | Navegação geral | Funcional | Alta | Alta | Planejado | Não Executado | Usuário autenticado | Item DAS | 1. Clicar em DAS. | Navega para `/das`. | Pendente de execução manual | Não coletada | Definido por análise estática |
| TC-NAV-013 | Navegação geral | Funcional | Alta | Alta | Planejado | Não Executado | Usuário autenticado | Item NFSe | 1. Clicar em NFSe. | Navega para `/nfse`. | Pendente de execução manual | Não coletada | Definido por análise estática |
| TC-NAV-014 | Navegação geral | Funcional | Média | Alta | Planejado | Não Executado | Usuário autenticado | Item Lembretes | 1. Clicar em Lembretes. | Navega para `/reminders`. | Pendente de execução manual | Não coletada | Definido por análise estática |
| TC-NAV-015 | Navegação geral | Funcional | Média | Média | Planejado | Não Executado | Usuário autenticado | Item Logs de atividade | 1. Clicar no item. | Navega para `/activity-logs`. | Pendente de execução manual | Não coletada | Definido por análise estática |
| TC-NAV-016 | Navegação geral | Funcional | Média | Média | Planejado | Não Executado | Usuário autenticado | Item Radar de reativação | 1. Clicar no item. | Navega para `/reactivation-radar`. | Pendente de execução manual | Não coletada | Definido por análise estática |
| TC-NAV-017 | Navegação geral | Funcional | Média | Média | Planejado | Não Executado | Usuário autenticado | Item Modelos | 1. Clicar em Modelos. | Navega para `/templates`. | Pendente de execução manual | Não coletada | Definido por análise estática |
| TC-NAV-018 | Navegação geral | Funcional | Média | Média | Planejado | Não Executado | Usuário autenticado | Item Entrada assistida | 1. Clicar no item. | Navega para `/assisted-input`. | Pendente de execução manual | Não coletada | Definido por análise estática |
| TC-NAV-019 | Navegação geral | Funcional | Média | Média | Planejado | Não Executado | Usuário autenticado | Item Sugestões | 1. Clicar no item. | Navega para `/assisted-charge-suggestions`. | Pendente de execução manual | Não coletada | Definido por análise estática |
| TC-NAV-020 | Navegação geral | Funcional | Média | Alta | Planejado | Não Executado | Usuário autenticado | Item Regras de automação | 1. Clicar no item. | Navega para `/automation-rules`. | Pendente de execução manual | Não coletada | Definido por análise estática |
| TC-NAV-021 | Navegação geral | Funcional | Média | Média | Planejado | Não Executado | Usuário autenticado | Item Resumo semanal | 1. Clicar no item. | Navega para `/weekly-summary`. | Pendente de execução manual | Não coletada | Definido por análise estática |
| TC-NAV-022 | Navegação geral | Funcional | Média | Alta | Planejado | Não Executado | Usuário autenticado | Item Visão Financeira | 1. Clicar no item. | Navega para `/financial-overview`. | Pendente de execução manual | Não coletada | Definido por análise estática |
| TC-NAV-023 | Navegação geral | Funcional/UI | Alta | Média | Planejado | Não Executado | Usuário autenticado | Rota interna ativa | 1. Acessar módulo. 2. Verificar item ativo. | Item atual com estado ativo e `aria-current=page`. | Pendente de execução manual | Não coletada | Definido por análise estática |
| TC-NAV-024 | Navegação geral | Conteúdo | Alta | Média | Planejado | Não Executado | Navegação carregada | Lista de labels | 1. Revisar labels. | Labels claros e em PT-BR. | Coberto por análise estática / Pendente validação visual | Não coletada | Definido por análise estática |
| TC-NAV-025 | Navegação geral | Integridade | Alta | Alta | Planejado | Não Executado | Configuração disponível | Itens de menu | 1. Revisar hrefs em configuração. | Sem href vazio ou quebrado evidente. | Coberto por análise estática / Pendente runtime | Não coletada | Definido por análise estática |
| TC-NAV-026 | Navegação geral | Integridade | Média | Média | Planejado | Não Executado | Configuração disponível | Lista de itens | 1. Revisar duplicidade indevida. | Sem links duplicados indevidos na navegação principal. | Coberto por análise estática / Pendente runtime | Não coletada | Definido por análise estática |
| TC-NAV-027 | Navegação geral | Regra de negócio | Alta | Alta | Planejado | Não Executado | Cenário de plano restrito | Recursos com entitlement | 1. Navegar até módulo com regra de plano. | Bloqueio por plano comunicado com clareza quando aplicável. | Coberto por análise estática / Pendente execução | Não coletada | Definido por análise estática |
| TC-NAV-028 | Navegação geral | Funcional | Média | Média | Planejado | Não Executado | Usuário em módulo interno | Item Dashboard | 1. Ir para módulo interno. 2. Retornar ao Dashboard. | Retorno para `/` preservando navegação utilizável. | Pendente de execução manual | Não coletada | Definido por análise estática |
| TC-NAV-029 | Navegação geral | Resiliência | Média | Média | Planejado | Não Executado | Usuário autenticado | Refresh em rota interna | 1. Abrir módulo. 2. Atualizar página. | Navegação permanece utilizável após refresh. | Pendente de execução manual | Não coletada | Definido por análise estática |
| TC-NAV-030 | Navegação geral | Responsividade | Alta | Alta | Planejado | Não Executado | Viewport mobile-like | Menu mobile aberto | 1. Abrir drawer. 2. Navegar entre itens. | Sem sobreposição crítica que impeça uso. | Pendente de execução manual | Não coletada | Definido por análise estática |
| TC-NAV-031 | Navegação geral | Usabilidade | Média | Média | Planejado | Não Executado | Navegação carregada | Grupos e ordem de módulos | 1. Observar agrupamento e sequência. | Hierarquia de módulos clara para o usuário. | Coberto por análise estática / Pendente validação com UI real | Não coletada | Definido por análise estática |
| TC-NAV-032 | Navegação geral | Qualidade de conteúdo | Média | Média | Planejado | Não Executado | Navegação carregada | Textos de navegação | 1. Revisar labels e textos de apoio. | Sem placeholders técnicos, dados quebrados ou labels confusos. | Coberto por análise estática / Pendente validação em navegador | Não coletada | Definido por análise estática |

## 8. Checklist de pré-execução manual

- [ ] Confirmar aplicação acessível.
- [ ] Confirmar usuário autenticado.
- [ ] Confirmar lista oficial de módulos esperados.
- [ ] Confirmar rotas/hrefs esperados para cada módulo.
- [ ] Confirmar navegação desktop disponível.
- [ ] Confirmar navegação mobile/drawer disponível.
- [ ] Confirmar quais módulos podem ter bloqueio por plano.
- [ ] Confirmar viewport desktop.
- [ ] Confirmar viewport mobile-like.
- [ ] Confirmar se o estado ativo é exibido.
- [ ] Confirmar se há top navigation além da sidebar.
- [ ] Confirmar pasta de evidências.
- [ ] Confirmar próximo número de bug disponível.
- [ ] Confirmar padrão de nomenclatura das screenshots.
- [ ] Confirmar que ciclos anteriores não serão alterados.

## 9. Plano de evidências para execução futura

- `TC-NAV-001-navegacao-desktop.png`
- `TC-NAV-002-navegacao-mobile-like.png`
- `TC-NAV-003-drawer-mobile-aberto.png`
- `TC-NAV-004-navegacao-dashboard.png`
- `TC-NAV-006-navegacao-clientes.png`
- `TC-NAV-011-navegacao-cobrancas.png`
- `TC-NAV-015-navegacao-logs-atividade.png`
- `TC-NAV-020-navegacao-regras-automacao.png`
- `TC-NAV-023-estado-ativo-menu.png`
- `TC-NAV-027-modulo-bloqueado-plano.png`
- `TC-NAV-030-navegacao-mobile-sem-sobreposicao.png`
- `BUG-008-navegacao-[descricao-curta].png`, se bug for encontrado no futuro.

Estes arquivos são apenas nomes sugeridos para evidências futuras. Nenhuma evidência visual foi coletada neste ciclo.

## 10. Critérios de aceite da navegação geral

- Cobertura de todos os módulos mapeados na navegação principal.
- Navegação funcional em desktop e mobile-like.
- Estado ativo coerente com rota atual.
- Labels claros em PT-BR.
- Sem links vazios/quebrados evidentes.
- Tratamento de bloqueio por plano claro quando aplicável.

## 11. Observação sobre execução

Este documento registra preparação de cobertura por análise estática. A validação real de UI permanece pendente para execução manual futura em navegador.
