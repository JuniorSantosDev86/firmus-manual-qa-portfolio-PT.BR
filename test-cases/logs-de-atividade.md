# Casos de Teste — Logs de atividade

## 1. Informações do documento

| Campo | Informação |
|---|---|
| Projeto | Portfólio de QA Manual — Firmus |
| Sistema sob teste | Aplicação Firmus |
| Módulo | Logs de atividade |
| Responsável | Ademir dos Santos Junior |
| Tipo | Preparação para execução manual |
| Última atualização | 2026-04-29 |

## 2. Objetivo

Preparar cobertura manual do módulo Logs de atividade com base em inspeção estática, estruturando casos de teste para execução futura em navegador.

## 3. Base da análise

- Inspeção estática do projeto `firmus-app`.
- Leitura de rotas, componentes, domínio e serviços do módulo.
- Leitura de testes Cypress do módulo como referência de comportamento esperado.
- Sem execução manual no navegador.
- Sem coleta de screenshots neste ciclo.

## 4. Regras e premissas do módulo

- Rota principal: `/activity-logs`.
- Label de navegação: `Logs de atividade`.
- Filtros disponíveis: categoria (`todos`, `operacao`, `seguranca`, `automacao`, `privacidade`) e busca textual (`q`).
- Paginação por limite com padrão 40 e teto 200 (`limit`).
- Ordenação esperada: data/hora decrescente.
- Fonte de dados: trilha de auditoria de segurança/privacidade normalizada para `ActivityLogEntry`.
- Estado vazio esperado: `Nenhum evento corresponde aos filtros atuais.`

## 5. Fora de escopo

- Execução manual real neste ciclo.
- Testes automatizados.
- Testes de API isolados.
- Validação de banco de dados.
- Testes de carga e segurança invasiva.

## 6. Massa de dados ou condições sugeridas

- Sessão autenticada válida.
- Cenário com eventos já existentes.
- Cenário sem correspondência para filtros.
- Eventos de segurança (login/logout), privacidade (review), operação (quote/charge) e automação quando disponíveis.

## 7. Casos de teste detalhados

Base da definição de todos os casos: Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Logs de atividade.

### TC-LOG-001 — Carregar a página de Logs de atividade com sucesso
- ID: TC-LOG-001
- Módulo: Logs de atividade
- Tipo: Funcional
- Prioridade: Alta
- Severidade se falhar: Alta
- Status de design: Planejado
- Status de execução: Não Executado
- Pré-condições: Usuário autenticado e aplicação acessível.
- Dados de teste: Rota `/activity-logs`.
- Passos detalhados:
1. Acessar o menu lateral autenticado.
2. Acionar entrada Logs de atividade.
3. Confirmar carregamento da rota.
- Resultado esperado: Página carregada sem bloqueios para sessão autenticada.
- Resultado atual: Não validado em navegador.
- Evidência: Pendente de execução manual.
- Observações: Coberto por análise estática de rota e page component.

### TC-LOG-002 — Exibir identificação visual do módulo Logs de atividade
- ID: TC-LOG-002
- Módulo: Logs de atividade
- Tipo: UI/Conteúdo
- Prioridade: Alta
- Severidade se falhar: Média
- Status de design: Planejado
- Status de execução: Não Executado
- Pré-condições: Página de Logs acessível.
- Dados de teste: Título e descrição do cabeçalho.
- Passos detalhados:
1. Acessar `/activity-logs`.
2. Verificar título principal.
3. Verificar descrição de contexto operacional e rastreabilidade.
- Resultado esperado: Identificação visual clara do módulo.
- Resultado atual: Não validado em navegador.
- Evidência: Pendente de execução manual.
- Observações: Labels encontrados em `app/activity-logs/page.tsx`.

### TC-LOG-003 — Exibir listagem de logs quando houver registros
- ID: TC-LOG-003
- Módulo: Logs de atividade
- Tipo: Funcional
- Prioridade: Alta
- Severidade se falhar: Alta
- Status de design: Planejado
- Status de execução: Não Executado
- Pré-condições: Existência de eventos na fonte de auditoria.
- Dados de teste: Registros com id/categoria/status/mensagem/timestamp.
- Passos detalhados:
1. Acessar `/activity-logs` com massa contendo eventos.
2. Verificar presença da lista de trilha.
3. Verificar itens renderizados.
- Resultado esperado: Lista com eventos exibida e contador atualizado.
- Resultado atual: Não validado em navegador.
- Evidência: Pendente de execução manual.
- Observações: `activity-logs-feed`, `activity-log-item` previstos.

### TC-LOG-004 — Exibir estado vazio quando não houver logs
- ID: TC-LOG-004
- Módulo: Logs de atividade
- Tipo: Funcional/Negativo
- Prioridade: Alta
- Severidade se falhar: Média
- Status de design: Planejado
- Status de execução: Não Executado
- Pré-condições: Filtro sem correspondência.
- Dados de teste: Query inexistente.
- Passos detalhados:
1. Aplicar busca sem resultados.
2. Observar área da trilha.
- Resultado esperado: Exibir `Nenhum evento corresponde aos filtros atuais.`
- Resultado atual: Não validado em navegador.
- Evidência: Pendente de execução manual.
- Observações: Estado vazio explícito no componente.

### TC-LOG-005 — Exibir data e hora do log de forma compreensível
- ID: TC-LOG-005
- Módulo: Logs de atividade
- Tipo: UI/Conteúdo
- Prioridade: Alta
- Severidade se falhar: Média
- Status de design: Planejado
- Status de execução: Não Executado
- Base da definição: Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Logs de atividade.
- Pré-condições: Eventos disponíveis.
- Dados de teste: Campo `occurredAt`.
- Passos detalhados:
1. Acessar lista com eventos.
2. Verificar formatação visível de data/hora.
3. Verificar atributo técnico `dateTime` no elemento de tempo.
- Resultado esperado: Data/hora legível em pt-BR e atributo técnico presente.
- Resultado atual: Não validado em navegador.
- Evidência: Pendente de execução manual.
- Observações: Formatação feita por `formatActivityLogTimestamp`.

### TC-LOG-006 — Exibir descrição clara da atividade
- ID: TC-LOG-006
- Módulo: Logs de atividade
- Tipo: Conteúdo Funcional
- Prioridade: Alta
- Severidade se falhar: Alta
- Status de design: Planejado
- Status de execução: Não Executado
- Base da definição: Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Logs de atividade.
- Pré-condições: Eventos com ações mapeadas e não mapeadas.
- Dados de teste: `message` dos eventos.
- Passos detalhados:
1. Exibir lista com eventos de tipos distintos.
2. Validar clareza das mensagens.
3. Validar presença de contexto adicional quando aplicável.
- Resultado esperado: Mensagens compreensíveis, sem texto técnico confuso.
- Resultado atual: Não validado em navegador.
- Evidência: Pendente de execução manual.
- Observações: Mensagens derivadas de `toActivityLogMessage` + contexto.

### TC-LOG-007 — Exibir tipo ou categoria do evento quando disponível
- ID: TC-LOG-007
- Módulo: Logs de atividade
- Tipo: Funcional/UI
- Prioridade: Média
- Severidade se falhar: Média
- Status de design: Planejado
- Status de execução: Não Executado
- Base da definição: Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Logs de atividade.
- Pré-condições: Eventos com categorias distintas.
- Dados de teste: Operação, Segurança, Automação, Privacidade.
- Passos detalhados:
1. Carregar trilha com múltiplas categorias.
2. Verificar badges de categoria.
- Resultado esperado: Badge coerente com categoria resolvida do evento.
- Resultado atual: Não validado em navegador.
- Evidência: Pendente de execução manual.
- Observações: Categoria calculada por ação.

### TC-LOG-008 — Exibir entidade relacionada ao log quando disponível
- ID: TC-LOG-008
- Módulo: Logs de atividade
- Tipo: Funcional
- Prioridade: Média
- Severidade se falhar: Média
- Status de design: Planejado
- Status de execução: Não Executado
- Base da definição: Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Logs de atividade.
- Pré-condições: Evento com `entityType` e/ou `entityId` e/ou `entityLabel`.
- Dados de teste: metadata de entidade.
- Passos detalhados:
1. Renderizar evento com referência de entidade.
2. Verificar bloco `Entidade`.
- Resultado esperado: Exibição de referência com label/tipo e id quando disponível.
- Resultado atual: Não validado em navegador.
- Evidência: Pendente de execução manual.
- Observações: Bloco condicionado à presença de dados da entidade.

### TC-LOG-009 — Diferenciar origem manual e automática quando disponível
- ID: TC-LOG-009
- Módulo: Logs de atividade
- Tipo: Funcional
- Prioridade: Média
- Severidade se falhar: Média
- Status de design: Planejado
- Status de execução: Não Executado
- Base da definição: Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Logs de atividade.
- Pré-condições: Eventos com `actorType` diferentes.
- Dados de teste: owner, anonymous, system.
- Passos detalhados:
1. Exibir eventos com atores distintos.
2. Verificar rótulo de ator mostrado ao usuário.
- Resultado esperado: Diferenciação textual de origem (operador, sistema, não autenticado/tentativa).
- Resultado atual: Não validado em navegador.
- Evidência: Pendente de execução manual.
- Observações: Não há campo explícito "manual/automática"; inferência ocorre por ator/contexto.

### TC-LOG-010 — Ordenar logs por data de forma coerente
- ID: TC-LOG-010
- Módulo: Logs de atividade
- Tipo: Funcional
- Prioridade: Alta
- Severidade se falhar: Alta
- Status de design: Planejado
- Status de execução: Não Executado
- Base da definição: Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Logs de atividade.
- Pré-condições: Conjunto com múltiplos timestamps.
- Dados de teste: Eventos em horários distintos.
- Passos detalhados:
1. Abrir trilha recente.
2. Comparar sequência temporal dos itens.
- Resultado esperado: Ordem decrescente por timestamp; empate por id.
- Resultado atual: Não validado em navegador.
- Evidência: Pendente de execução manual.
- Observações: Regra vista em `sortActivityLogsReverseChronological`.

### TC-LOG-011 — Filtrar logs por tipo ou módulo quando a ação estiver disponível
- ID: TC-LOG-011
- Módulo: Logs de atividade
- Tipo: Funcional
- Prioridade: Alta
- Severidade se falhar: Média
- Status de design: Planejado
- Status de execução: Não Executado
- Base da definição: Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Logs de atividade.
- Pré-condições: Existência de eventos em múltiplas categorias e mensagens.
- Dados de teste: Categoria + termo de busca.
- Passos detalhados:
1. Aplicar filtro por categoria.
2. Aplicar busca textual.
3. Limpar filtros.
- Resultado esperado: Resultado coerente, sem erro, com retorno ao padrão ao limpar.
- Resultado atual: Não validado em navegador.
- Evidência: Pendente de execução manual.
- Observações: Filtros por `category` e `q`; não há filtro por data no módulo atual.

### TC-LOG-012 — Registrar atividade de criação quando integrada a outros módulos
- ID: TC-LOG-012
- Módulo: Logs de atividade
- Tipo: Integração Funcional
- Prioridade: Média
- Severidade se falhar: Média
- Status de design: Planejado
- Status de execução: Não Executado
- Base da definição: Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Logs de atividade.
- Pré-condições: Fluxos que gravam ações de criação na trilha de auditoria.
- Dados de teste: criação de regra de automação, revisão de privacidade etc.
- Passos detalhados:
1. Executar ação de criação no módulo integrado.
2. Acessar Logs de atividade.
3. Buscar evento correspondente.
- Resultado esperado: Evento de criação rastreável quando a integração existir.
- Resultado atual: Não validado em navegador.
- Evidência: Pendente de execução manual.
- Observações: Cobertura depende de execução real intermodular.

### TC-LOG-013 — Registrar atividade de edição quando integrada a outros módulos
- ID: TC-LOG-013
- Módulo: Logs de atividade
- Tipo: Integração Funcional
- Prioridade: Média
- Severidade se falhar: Média
- Status de design: Planejado
- Status de execução: Não Executado
- Base da definição: Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Logs de atividade.
- Pré-condições: Existência de fluxos com emissão de evento de edição.
- Dados de teste: edição em módulos que publiquem ação auditável.
- Passos detalhados:
1. Executar edição no módulo integrado.
2. Consultar Logs de atividade.
3. Confirmar rastreio do evento de edição.
- Resultado esperado: Evento de edição aparece quando integração estiver implementada.
- Resultado atual: Não validado em navegador.
- Evidência: Pendente de execução manual.
- Observações: Confirmar cobertura real em runtime.

### TC-LOG-014 — Registrar atividade de exclusão quando integrada a outros módulos
- ID: TC-LOG-014
- Módulo: Logs de atividade
- Tipo: Integração Funcional
- Prioridade: Média
- Severidade se falhar: Média
- Status de design: Planejado
- Status de execução: Não Executado
- Base da definição: Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Logs de atividade.
- Pré-condições: Fluxos com emissão de evento de exclusão.
- Dados de teste: exclusão em módulos integrados.
- Passos detalhados:
1. Executar exclusão em fluxo integrado.
2. Consultar logs.
3. Verificar existência e clareza do registro.
- Resultado esperado: Registro de exclusão rastreável quando integração existir.
- Resultado atual: Não validado em navegador.
- Evidência: Pendente de execução manual.
- Observações: Planejado para validação prática.

### TC-LOG-015 — Registrar atividade de pagamento ou conclusão quando integrada a outros módulos
- ID: TC-LOG-015
- Módulo: Logs de atividade
- Tipo: Integração Funcional
- Prioridade: Alta
- Severidade se falhar: Alta
- Status de design: Planejado
- Status de execução: Não Executado
- Base da definição: Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Logs de atividade.
- Pré-condições: Fluxos que disparem `charge_marked_paid` e eventos semelhantes.
- Dados de teste: pagamento de cobrança, conclusão relevante.
- Passos detalhados:
1. Concluir ação de pagamento/conclusão em módulo de origem.
2. Abrir Logs de atividade.
3. Buscar evento correspondente.
- Resultado esperado: Evento operacional registrado com mensagem adequada.
- Resultado atual: Não validado em navegador.
- Evidência: Pendente de execução manual.
- Observações: `charge_marked_paid` está mapeado no domínio.

### TC-LOG-016 — Evitar duplicação indevida de registros de log
- ID: TC-LOG-016
- Módulo: Logs de atividade
- Tipo: Qualidade de dados
- Prioridade: Alta
- Severidade se falhar: Média
- Status de design: Planejado
- Status de execução: Não Executado
- Base da definição: Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Logs de atividade.
- Pré-condições: Base com múltiplos registros de eventos.
- Dados de teste: IDs de eventos.
- Passos detalhados:
1. Carregar listagem de logs.
2. Verificar repetição indevida de mesmo evento/id.
- Resultado esperado: Sem duplicação indevida por renderização ou consulta.
- Resultado atual: Não validado em navegador.
- Evidência: Pendente de execução manual.
- Observações: Validar especialmente após filtros e paginação.

### TC-LOG-017 — Manter Logs de atividade utilizável após refresh
- ID: TC-LOG-017
- Módulo: Logs de atividade
- Tipo: Robustez
- Prioridade: Média
- Severidade se falhar: Média
- Status de design: Planejado
- Status de execução: Não Executado
- Base da definição: Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Logs de atividade.
- Pré-condições: Sessão ativa.
- Dados de teste: URL com e sem query params.
- Passos detalhados:
1. Abrir logs com filtros.
2. Atualizar página.
3. Verificar manutenção de acesso e parâmetros.
- Resultado esperado: Página continua funcional e mantém comportamento esperado.
- Resultado atual: Não validado em navegador.
- Evidência: Pendente de execução manual.
- Observações: Reaplicação de query prevista por leitura de `searchParams`.

### TC-LOG-018 — Navegar entre Logs de atividade e Dashboard
- ID: TC-LOG-018
- Módulo: Logs de atividade
- Tipo: Navegação
- Prioridade: Média
- Severidade se falhar: Média
- Status de design: Planejado
- Status de execução: Não Executado
- Base da definição: Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Logs de atividade.
- Pré-condições: Usuário autenticado.
- Dados de teste: Navegação lateral.
- Passos detalhados:
1. Acessar Dashboard.
2. Ir para Logs de atividade via menu.
3. Retornar ao Dashboard.
- Resultado esperado: Navegação consistente entre módulos sem perda de contexto da sessão.
- Resultado atual: Não validado em navegador.
- Evidência: Pendente de execução manual.
- Observações: Entrada `nav-activity-logs` mapeada em navegação.

### TC-LOG-019 — Exibir Logs de atividade corretamente em viewport desktop
- ID: TC-LOG-019
- Módulo: Logs de atividade
- Tipo: Responsivo
- Prioridade: Média
- Severidade se falhar: Média
- Status de design: Planejado
- Status de execução: Não Executado
- Base da definição: Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Logs de atividade.
- Pré-condições: Viewport desktop (ex.: 1280x800).
- Dados de teste: Lista com eventos e filtros.
- Passos detalhados:
1. Abrir módulo em desktop.
2. Verificar alinhamento da grade de filtros e cards.
- Resultado esperado: Layout legível e sem sobreposição.
- Resultado atual: Não validado em navegador.
- Evidência: Pendente de execução manual.
- Observações: Grid `md:grid-cols-[220px_1fr_auto_auto]` previsto.

### TC-LOG-020 — Exibir Logs de atividade corretamente em viewport mobile-like
- ID: TC-LOG-020
- Módulo: Logs de atividade
- Tipo: Responsivo
- Prioridade: Alta
- Severidade se falhar: Alta
- Status de design: Planejado
- Status de execução: Não Executado
- Base da definição: Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Logs de atividade.
- Pré-condições: Viewport mobile-like (ex.: 390x844).
- Dados de teste: Lista com eventos e filtros.
- Passos detalhados:
1. Abrir módulo em viewport mobile-like.
2. Verificar legibilidade dos filtros, badges e mensagens.
3. Verificar ausência de overflow impeditivo.
- Resultado esperado: Usabilidade preservada em mobile-like.
- Resultado atual: Não validado em navegador.
- Evidência: Pendente de execução manual.
- Observações: Validação real pendente em ciclo futuro.

### TC-LOG-021 — Não exibir placeholders, dados técnicos ou mensagens confusas
- ID: TC-LOG-021
- Módulo: Logs de atividade
- Tipo: Qualidade de conteúdo
- Prioridade: Alta
- Severidade se falhar: Média
- Status de design: Planejado
- Status de execução: Não Executado
- Base da definição: Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Logs de atividade.
- Pré-condições: Renderização de lista e estado vazio.
- Dados de teste: Diferentes tipos de evento.
- Passos detalhados:
1. Inspecionar conteúdo textual dos itens.
2. Inspecionar estado vazio e labels.
3. Verificar ausência de termos técnicos brutos sem contexto.
- Resultado esperado: Conteúdo compreensível para operação diária.
- Resultado atual: Não validado em navegador.
- Evidência: Pendente de execução manual.
- Observações: Mensagens fallback devem manter clareza mínima.

### TC-LOG-022 — Comunicar claramente o valor operacional da rastreabilidade para o usuário
- ID: TC-LOG-022
- Módulo: Logs de atividade
- Tipo: Usabilidade/Produto
- Prioridade: Média
- Severidade se falhar: Média
- Status de design: Planejado
- Status de execução: Não Executado
- Base da definição: Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Logs de atividade.
- Pré-condições: Página carregada.
- Dados de teste: Texto de descrição e organização dos eventos.
- Passos detalhados:
1. Ler descrição da página e dos filtros.
2. Verificar se a tela orienta inspeção de histórico.
3. Verificar se a trilha oferece contexto mínimo de ação, ator e tempo.
- Resultado esperado: Usuário entende finalidade de rastreabilidade operacional.
- Resultado atual: Não validado em navegador.
- Evidência: Pendente de execução manual.
- Observações: Validação final depende de uso real em UI.

## 8. Checklist de pré-execução manual

- [ ] Confirmar aplicação acessível.
- [ ] Confirmar usuário autenticado.
- [ ] Confirmar rota de Logs de atividade disponível.
- [ ] Confirmar massa de dados inicial.
- [ ] Confirmar se há logs existentes ou estado vazio.
- [ ] Confirmar quais módulos geram eventos de log.
- [ ] Confirmar se filtros/ordenação existem.
- [ ] Confirmar se há logs manuais e automáticos.
- [ ] Confirmar se data/hora aparecem corretamente.
- [ ] Confirmar viewports que serão usadas.
- [ ] Confirmar pasta de evidências.
- [ ] Confirmar próximo número de bug disponível.
- [ ] Confirmar padrão de nomenclatura das screenshots.
- [ ] Confirmar que ciclos anteriores não serão alterados.

## 9. Plano de evidências para execução futura

- `TC-LOG-001-logs-carregamento.png`
- `TC-LOG-004-logs-estado-vazio.png`
- `TC-LOG-005-log-data-hora.png`
- `TC-LOG-006-log-descricao-clara.png`
- `TC-LOG-010-logs-ordenacao-data.png`
- `TC-LOG-011-logs-filtro-tipo.png`
- `TC-LOG-012-log-criacao-registro.png`
- `TC-LOG-016-logs-sem-duplicacao.png`
- `TC-LOG-019-logs-desktop.png`
- `TC-LOG-020-logs-mobile-like.png`
- `BUG-008-logs-[descricao-curta].png`, se bug for encontrado no futuro.

Estes arquivos são apenas nomes sugeridos para evidências futuras. Nenhuma evidência visual foi coletada neste ciclo.

## 10. Critérios de aceite do módulo

- Página acessível para sessão autenticada.
- Título e descrição do módulo visíveis e coerentes.
- Lista de eventos funcional quando houver dados.
- Estado vazio claro quando não houver correspondência.
- Filtros de categoria e busca operacionais.
- Ordenação temporal coerente.
- Conteúdo textual compreensível e sem placeholders.
- Navegação entre módulos sem quebra de sessão.

## 11. Observação sobre execução

Documento preparado por análise estática. Todos os casos permanecem planejados e com status de execução `Não Executado` até ciclo de validação manual em navegador.
