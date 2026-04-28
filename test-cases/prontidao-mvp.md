# Casos de Teste — Prontidão do MVP

## 1. Informações do documento

| Campo | Informação |
|---|---|
| Projeto | Portfólio de QA Manual — Firmus |
| Módulo | Prontidão do MVP |
| Tipo de documento | Casos de teste manuais |
| Responsável | Ademir dos Santos Junior |
| Status geral | Planejado |

## 2. Objetivo

Definir casos de teste manuais detalhados para o módulo Prontidão do MVP com base em inspeção estática do projeto `firmus-app`, preparando a execução funcional futura em navegador.

## 3. Base da análise

- Inspeção estática do projeto `firmus-app`.
- Leitura de rota, componentes, serviços, regras e textos do módulo Prontidão do MVP.
- Sem execução manual em navegador neste ciclo.
- Sem coleta de screenshots neste ciclo.

## 4. Regras e premissas do módulo

- Rota principal do módulo: `/mvp-readiness`.
- Identificação do menu: `Prontidão do MVP`.
- Título da página: `Prontidão do MVP`.
- Contexto exibido no header: `MVP Hardening`.
- Status geral possível: `Pronto para beta`, `Pronto com alertas`, `Beta ainda bloqueado`.
- Contadores de resumo: `Bloqueios`, `Alertas`, `Pontos prontos`.
- CTA principal de revisão: `Revisar onboarding` com destino para `/onboarding`.
- CTA por item e por próxima revisão: `Abrir módulo`.
- Grupos de checklist: Autenticação e fronteiras; Onboarding e primeiro uso; Operação principal; Fluxos fiscais; Superfícies públicas; Confiabilidade e recuperação; Consistência e usabilidade.
- Estados de item: `Pronto`, `Atenção`, `Bloqueio`.

## 5. Fora de escopo

- Execução manual via navegador neste ciclo.
- Testes automatizados.
- Testes de API.
- Validação direta em banco de dados.
- Testes de carga.
- Testes invasivos de segurança.
- Alteração de código do produto.

## 6. Massa de dados ou condições sugeridas

- Usuário autenticado.
- Workspace sem dados operacionais para validar cenário de bloqueios.
- Workspace com dados coerentes (perfil, clientes, serviços, orçamentos, cobranças, fiscal, templates, automação) para validar cenário de prontidão.
- Viewports recomendadas para execução futura: desktop 1366x900 e mobile-like 390x844.

## 7. Casos de teste detalhados

| ID | Módulo | Tipo | Prioridade | Severidade se falhar | Status de design | Status de execução | Base da definição | Pré-condições | Dados de teste ou condição de teste | Passos detalhados | Resultado esperado | Resultado atual | Evidência | Observações |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| TC-MVP-001 | Prontidão do MVP | Funcional | Alta | Alta | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Prontidão do MVP. | Usuário autenticado. | Rota `/mvp-readiness` disponível. | 1. Acessar a aplicação autenticada. 2. Navegar para `Prontidão do MVP`. 3. Validar carregamento da rota. | A página deve carregar a rota `/mvp-readiness` com conteúdo principal do módulo. | Não executado neste ciclo. | Não coletada neste ciclo. | Preparado para execução manual futura. |
| TC-MVP-002 | Prontidão do MVP | Funcional | Alta | Média | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Prontidão do MVP. | Usuário autenticado em `/mvp-readiness`. | Header e título visíveis. | 1. Abrir `/mvp-readiness`. 2. Verificar título e contexto. | Deve exibir `Prontidão do MVP` e contexto `MVP Hardening` com descrição coerente. | Não executado neste ciclo. | Não coletada neste ciclo. | Preparado para execução manual futura. |
| TC-MVP-003 | Prontidão do MVP | Funcional | Alta | Alta | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Prontidão do MVP. | Usuário autenticado em `/mvp-readiness`. | Snapshot disponível. | 1. Abrir `/mvp-readiness`. 2. Verificar grupos e itens do checklist. | O checklist deve ser exibido por grupos com itens, label e descrição. | Não executado neste ciclo. | Não coletada neste ciclo. | Preparado para execução manual futura. |
| TC-MVP-004 | Prontidão do MVP | Funcional | Alta | Alta | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Prontidão do MVP. | Usuário autenticado em `/mvp-readiness`. | Painel de resumo visível. | 1. Acessar a página. 2. Revisar status geral e resumo textual. 3. Revisar contadores. | Deve exibir status geral e contagens de bloqueios, alertas e pontos prontos de forma compreensível. | Não executado neste ciclo. | Não coletada neste ciclo. | Preparado para execução manual futura. |
| TC-MVP-005 | Prontidão do MVP | Funcional | Média | Média | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Prontidão do MVP. | Itens com status pronto presentes no snapshot. | Condição com pelo menos 1 item pronto. | 1. Acessar checklist. 2. Identificar item com status `Pronto`. | Itens concluídos devem estar claramente identificados e com descrição sem ambiguidade. | Não executado neste ciclo. | Não coletada neste ciclo. | Preparado para execução manual futura. |
| TC-MVP-006 | Prontidão do MVP | Funcional | Alta | Alta | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Prontidão do MVP. | Itens de atenção/bloqueio presentes no snapshot. | Condição com pendências reais no workspace. | 1. Acessar checklist. 2. Identificar itens `Atenção` e/ou `Bloqueio`. | Itens pendentes devem ser compreensíveis, com descrição objetiva da pendência. | Não executado neste ciclo. | Não coletada neste ciclo. | Preparado para execução manual futura. |
| TC-MVP-007 | Prontidão do MVP | Funcional | Alta | Alta | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Prontidão do MVP. | Página carregada. | Critérios mapeados no serviço de prontidão. | 1. Acessar módulo. 2. Revisar critérios refletidos no checklist e resumo. | O módulo deve comunicar critérios mínimos de prontidão e bloqueios relevantes para avanço de beta. | Não executado neste ciclo. | Não coletada neste ciclo. | Preparado para execução manual futura. |
| TC-MVP-008 | Prontidão do MVP | Funcional | Média | Média | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Prontidão do MVP. | Itens não prontos existentes. | Seção de próximas revisões visível. | 1. Acessar módulo com pendências. 2. Verificar seção `Próximas revisões sugeridas`. | Deve exibir lista priorizada de próximas ações e descrição de cada item. | Não executado neste ciclo. | Não coletada neste ciclo. | Preparado para execução manual futura. |
| TC-MVP-009 | Prontidão do MVP | Navegação | Média | Média | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Prontidão do MVP. | CTAs visíveis no resumo e itens. | Condição com itens que tenham `href`. | 1. Acessar módulo. 2. Verificar CTA `Revisar onboarding`. 3. Verificar CTAs `Abrir módulo` dos itens. | CTAs devem exibir destino coerente para módulos relacionados sem link vazio. | Não executado neste ciclo. | Não coletada neste ciclo. | Preparado para execução manual futura. |
| TC-MVP-010 | Prontidão do MVP | Estado vazio/Resiliência | Média | Média | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Prontidão do MVP. | Usuário autenticado em `/mvp-readiness`. | Estado inicial de carregamento. | 1. Abrir `/mvp-readiness`. 2. Observar estado inicial antes do snapshot. | Deve exibir mensagem `Carregando prontidão do MVP...` sem quebra da experiência. | Não executado neste ciclo. | Não coletada neste ciclo. | Preparado para execução manual futura. |
| TC-MVP-011 | Prontidão do MVP | Qualidade de conteúdo | Alta | Média | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Prontidão do MVP. | Página e seções visíveis. | Conteúdo textual completo do módulo. | 1. Acessar `/mvp-readiness`. 2. Revisar textos de status, grupos, itens e CTAs. | Não deve exibir placeholders, mensagens técnicas indevidas ou textos confusos ao usuário final. | Não executado neste ciclo. | Não coletada neste ciclo. | Preparado para execução manual futura. |
| TC-MVP-012 | Prontidão do MVP | Navegação | Média | Média | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Prontidão do MVP. | Usuário autenticado. | Dashboard e módulo de prontidão acessíveis. | 1. Acessar `/mvp-readiness`. 2. Navegar para Dashboard. 3. Retornar para prontidão. | A navegação entre Dashboard e Prontidão do MVP deve manter estabilidade funcional do módulo. | Não executado neste ciclo. | Não coletada neste ciclo. | Preparado para execução manual futura. |
| TC-MVP-013 | Prontidão do MVP | Resiliência | Média | Média | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Prontidão do MVP. | Usuário autenticado em `/mvp-readiness`. | Estado local do workspace persistido. | 1. Abrir `/mvp-readiness`. 2. Executar refresh. 3. Verificar retomada do conteúdo. | O módulo deve permanecer utilizável após refresh e recalcular snapshot sem erro aparente. | Não executado neste ciclo. | Não coletada neste ciclo. | Preparado para execução manual futura. |
| TC-MVP-014 | Prontidão do MVP | Responsivo | Média | Média | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Prontidão do MVP. | Usuário autenticado em `/mvp-readiness`. | Viewport desktop 1366x900. | 1. Abrir módulo em desktop. 2. Revisar cards, listas e CTAs. | Em desktop o layout deve manter legibilidade, alinhamento e operação dos elementos. | Não executado neste ciclo. | Não coletada neste ciclo. | Preparado para execução manual futura. |
| TC-MVP-015 | Prontidão do MVP | Responsivo | Média | Média | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Prontidão do MVP. | Usuário autenticado em `/mvp-readiness`. | Viewport mobile-like 390x844. | 1. Abrir módulo em mobile-like. 2. Revisar empilhamento e acionamento de CTAs. | Em mobile-like o layout deve manter leitura e acionamento sem sobreposição impeditiva. | Não executado neste ciclo. | Não coletada neste ciclo. | Preparado para execução manual futura. |
| TC-MVP-016 | Prontidão do MVP | Usabilidade/Conteúdo | Alta | Alta | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Prontidão do MVP. | Página carregada com resumo e checklist. | Conteúdo integral da tela de prontidão. | 1. Acessar `/mvp-readiness`. 2. Revisar status geral, resumo, contadores, pendências e ações. | O módulo deve comunicar valor operacional claro para decisão de preparo e avanço do MVP. | Não executado neste ciclo. | Não coletada neste ciclo. | Preparado para execução manual futura. |

## 8. Critérios de aceite do módulo

- Rota `/mvp-readiness` acessível para usuário autenticado.
- Identificação do módulo clara no header.
- Status geral e resumo textual coerentes com o estado do workspace.
- Contadores de bloqueios/alertas/pontos prontos visíveis e compreensíveis.
- Checklist agrupado com itens e status legíveis.
- Próximas revisões sugeridas e CTAs de navegação coerentes quando houver pendências.
- Navegação e refresh preservam estabilidade funcional do módulo.
- Conteúdo em PT-BR sem placeholders técnicos aparentes.

## 9. Observação sobre execução

Todos os casos deste documento permanecem com `Status de design: Planejado` e `Status de execução: Não Executado`, pois este ciclo foi de análise estática/documental do módulo Prontidão do MVP.
