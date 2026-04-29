# Ciclo de Execução 16 — Navegação geral — Preparação e Análise Estática

## Informações do documento

| Campo | Informação |
|---|---|
| Projeto | Portfólio de QA Manual — Firmus |
| Sistema sob teste | Aplicação Firmus |
| Tipo de documento | Preparação de execução / análise estática |
| Ciclo | 16 |
| Módulo | Navegação geral |
| Responsável | Ademir dos Santos Junior |
| Status | Preparado para execução manual futura |

## Objetivo

Documentar a preparação do ciclo de testes de Navegação geral com base na inspeção estática do projeto `firmus-app`, aprofundando cenários BDD e casos de teste para futura execução manual.

## Base da análise

- Projeto analisado: `firmus-app`
- Repositório de documentação atualizado: `firmus-manual-qa-portfolio-PT.BR`
- Tipo de análise: inspeção estática de layout, sidebar, drawer, top navigation, rotas, labels, hrefs e comportamento esperado
- Execução em navegador: Não realizada
- Screenshots: Não coletadas
- Resultado real de UI: Pendente de execução manual futura

## Escopo preparado

- Navegação desktop.
- Navegação mobile-like.
- Drawer/menu mobile.
- Top navigation, se existir.
- Rotas principais.
- Labels de menu.
- Estado ativo.
- Navegação entre Dashboard e módulos internos.
- Links internos e hrefs.
- Módulos bloqueados por plano, se aplicável.
- Refresh e manutenção de navegação.
- Ausência de links quebrados evidentes.
- Ausência de duplicidade indevida.
- Usabilidade básica.
- Qualidade de conteúdo.
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
- Validação de permissões de backend real, salvo indícios estáticos visíveis.

## Arquivos do produto consultados

| Arquivo | Uso na análise |
|---|---|
| `firmus-app/lib/navigation.ts` | Lista de itens, labels, grupos, rotas e test IDs da navegação |
| `firmus-app/components/layout/app-shell.tsx` | Estrutura global de navegação, topbar mobile, trigger do drawer e contexto interno |
| `firmus-app/components/layout/sidebar-nav.tsx` | Renderização da sidebar desktop e regra de item ativo |
| `firmus-app/components/layout/mobile-drawer.tsx` | Renderização do drawer mobile e regra de item ativo |
| `firmus-app/components/dashboard/top-navigation.tsx` | Referência de navegação superior auxiliar e links complementares |
| `firmus-app/app/layout.tsx` | Composição do layout raiz com AppShell |
| `firmus-app/proxy.ts` | Proteção de rotas privadas e redirecionamento para login |
| `firmus-app/lib/auth/route-boundary.ts` | Definição de rotas públicas e privadas |
| `firmus-app/components/plan/plan-feature-guard.tsx` | Comportamento de bloqueio de recurso por plano |
| `firmus-app/lib/services/plan-entitlements.ts` | Regras de entitlement, bloqueio e mensagens por plano |
| `firmus-app/cypress/e2e/home.cy.ts` | Referência de comportamento esperado para sidebar e drawer mobile |
| `firmus-app/cypress/e2e/activity-logs.cy.ts` | Referência de navegação por item de menu e rota de logs |
| `firmus-app/cypress/e2e/security-foundation.cy.ts` | Referência de segregação entre rotas públicas e shell interno |
| `firmus-app/cypress/e2e/public-bio.cy.ts` | Referência de ausência de navegação interna em rota pública |
| `firmus-app/cypress/e2e/public-quote.cy.ts` | Referência de ausência de navegação interna em rota pública |

## Resumo do ciclo

| Item | Resultado |
|---|---|
| BDD de Navegação geral | Aprofundado |
| Casos de teste de Navegação geral | Aprofundados |
| Checklist de pré-execução | Criado |
| Plano de evidências futuras | Criado |
| Execução manual via navegador | Não realizada |
| Evidências visuais | Não coletadas |
| Bugs reais reportados | Nenhum neste ciclo |
| Status para próxima etapa | Pronto para execução manual futura |

## Casos preparados

| ID | Caso de Teste | Status de design | Status de execução | Observação |
|---|---|---|---|---|
| TC-NAV-001 | Exibir navegação principal em desktop | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-NAV-002 | Exibir navegação principal em mobile-like | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-NAV-003 | Abrir e fechar menu/drawer mobile quando disponível | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-NAV-004 | Navegar para Dashboard | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-NAV-005 | Navegar para Perfil da Empresa | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-NAV-006 | Navegar para Clientes | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-NAV-007 | Navegar para Plano | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-NAV-008 | Navegar para Prontidão do MVP | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-NAV-009 | Navegar para Serviços | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-NAV-010 | Navegar para Orçamentos | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-NAV-011 | Navegar para Cobranças | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-NAV-012 | Navegar para DAS | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-NAV-013 | Navegar para NFSe | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-NAV-014 | Navegar para Lembretes | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-NAV-015 | Navegar para Logs de atividade | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-NAV-016 | Navegar para Radar de reativação | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-NAV-017 | Navegar para Modelos | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-NAV-018 | Navegar para Entrada assistida | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-NAV-019 | Navegar para Sugestões | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-NAV-020 | Navegar para Regras de automação | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-NAV-021 | Navegar para Resumo semanal | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-NAV-022 | Navegar para Visão Financeira | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-NAV-023 | Exibir estado ativo do item atual | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-NAV-024 | Validar labels de navegação em PT-BR | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-NAV-025 | Garantir que rotas internas não tenham href vazio ou quebrado | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-NAV-026 | Evitar links duplicados indevidos na navegação principal | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-NAV-027 | Validar comportamento de módulos bloqueados por plano quando aplicável | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-NAV-028 | Retornar ao Dashboard a partir de módulos internos | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-NAV-029 | Manter navegação utilizável após refresh | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-NAV-030 | Exibir navegação sem sobreposição crítica em viewport mobile-like | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-NAV-031 | Comunicar claramente a hierarquia dos módulos para o usuário | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-NAV-032 | Não exibir placeholders técnicos, dados quebrados ou labels confusos | Planejado | Não Executado | Preparado com base em inspeção estática |

## Checklist de pré-execução manual

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

## Plano de evidências futuras

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

## Bugs encontrados por inspeção estática

Nenhum bug foi reportado neste ciclo, pois não houve execução manual via navegador. A criação de bugs funcionais deve ocorrer somente após execução real ou inconsistência comprovável por inspeção estática.

## Evidências

Nenhuma evidência visual foi coletada neste ciclo, pois a análise foi feita diretamente no projeto `firmus-app`, sem execução no navegador.

## Decisão do ciclo

Preparado para execução manual futura.

A Navegação geral agora possui BDD, casos de teste, checklist de pré-execução e plano de evidências prontos para um ciclo real posterior.

## Riscos conhecidos

- Comportamento visual real ainda não validado em navegador.
- Responsividade ainda não validada por viewport real.
- Drawer/menu mobile ainda precisa ser confirmado em execução manual.
- Estado ativo ainda precisa ser confirmado em runtime.
- Rotas bloqueadas por plano ainda precisam ser confirmadas manualmente.
- Possíveis diferenças entre código analisado e comportamento em runtime.
- Evidências ainda precisam ser coletadas em ciclo futuro.

## Próximos passos

- Iniciar execução manual da Navegação geral em ciclo futuro.
- Executar TC-NAV-001 a TC-NAV-032.
- Coletar screenshots reais conforme plano de evidências.
- Registrar bugs funcionais se observados.
- Atualizar matriz de cobertura após execução real.
- Reavaliar Go/No-Go da navegação geral após validação em UI.
