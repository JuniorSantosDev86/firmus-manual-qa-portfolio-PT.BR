# Casos de Teste — Resumo semanal

## 1. Informações do documento

| Campo | Informação |
|---|---|
| Projeto | Portfólio de QA Manual — Firmus |
| Sistema sob teste | Aplicação Firmus |
| Módulo | Resumo semanal |
| Tipo de documento | Casos de teste manuais (preparação) |
| Versão | Ciclo 15 |
| Idioma | PT-BR |

## 2. Objetivo

Preparar a cobertura de testes manuais do módulo Resumo semanal com base em inspeção estática do projeto `firmus-app`.

## 3. Base da análise

- Inspeção estática do projeto `firmus-app`.
- Leitura de rotas, componentes, textos, estados, métricas e serviços do módulo.
- Sem execução manual em navegador.
- Sem coleta de screenshots.

## 4. Regras e premissas do módulo

- Rota principal: `/weekly-summary`.
- Título esperado: `Resumo semanal`.
- Período semanal esperado: janela de 7 dias (início até fim da semana de referência), com formatação pt-BR.
- Totais esperados: recebido no período, em aberto, em atraso, lembretes pendentes e lembretes concluídos.
- Seções esperadas: destaques, cobranças vencidas, cobranças próximas, lembretes pendentes, lembretes concluídos no período e atividade recente.
- Fontes de dados locais: cobranças, lembretes e timeline de eventos.

## 5. Fora de escopo

- Execução manual real via navegador neste ciclo.
- Testes automatizados.
- Testes de API e banco de dados.
- Correções no código da aplicação.

## 6. Massa de dados ou condições sugeridas

- Cenário com dados mistos: cobrança paga no período, cobrança em aberto, cobrança em atraso, lembrete pendente, lembrete concluído, eventos de timeline.
- Cenário sem dados: armazenamento local sem cobranças, lembretes e eventos.
- Cenário com datas ausentes/inválidas para validar fallback `Sem data`.

## 7. Casos de teste detalhados

### TC-WEEK-001 — Carregar a página de Resumo semanal com sucesso
- ID: TC-WEEK-001
- Módulo: Resumo semanal
- Tipo: Funcional
- Prioridade: Alta
- Severidade se falhar: Alta
- Status de design: Planejado
- Status de execução: Não Executado
- Base da definição: Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Resumo semanal.
- Pré-condições: Usuário autenticado e rota `/weekly-summary` acessível.
- Dados de teste ou condição de teste: Dados mínimos válidos no storage local.
- Passos detalhados: 1. Acessar `/weekly-summary`. 2. Observar carregamento inicial do módulo.
- Resultado esperado: Página carrega sem erro e renderiza o módulo Resumo semanal.
- Resultado atual: Não validado em navegador.
- Evidência: Pendente de execução manual.
- Observações: Caso preparado por análise estática.

### TC-WEEK-002 — Exibir identificação visual do módulo Resumo semanal
- ID: TC-WEEK-002
- Módulo: Resumo semanal
- Tipo: Funcional
- Prioridade: Alta
- Severidade se falhar: Média
- Status de design: Planejado
- Status de execução: Não Executado
- Base da definição: Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Resumo semanal.
- Pré-condições: Página de resumo semanal carregada.
- Dados de teste ou condição de teste: Não aplicável.
- Passos detalhados: 1. Abrir o módulo. 2. Verificar título e descrição principal.
- Resultado esperado: Exibir `Resumo semanal` e texto de apoio do módulo.
- Resultado atual: Não validado em navegador.
- Evidência: Pendente de execução manual.
- Observações: Validar clareza e consistência textual.

### TC-WEEK-003 — Exibir período semanal de forma clara
- ID: TC-WEEK-003
- Módulo: Resumo semanal
- Tipo: Funcional
- Prioridade: Alta
- Severidade se falhar: Média
- Status de design: Planejado
- Status de execução: Não Executado
- Base da definição: Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Resumo semanal.
- Pré-condições: Módulo carregado.
- Dados de teste ou condição de teste: Data de referência conhecida.
- Passos detalhados: 1. Abrir módulo. 2. Localizar bloco `Período`.
- Resultado esperado: Intervalo exibido em formato `dd/mm/aaaa até dd/mm/aaaa`.
- Resultado atual: Não validado em navegador.
- Evidência: Pendente de execução manual.
- Observações: O cálculo em código usa intervalo de 7 dias.

### TC-WEEK-004 — Exibir cards ou blocos de resumo quando houver dados
- ID: TC-WEEK-004
- Módulo: Resumo semanal
- Tipo: Funcional
- Prioridade: Alta
- Severidade se falhar: Alta
- Status de design: Planejado
- Status de execução: Não Executado
- Base da definição: Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Resumo semanal.
- Pré-condições: Dados de cobrança/lembretes presentes.
- Dados de teste ou condição de teste: Valores > 0 em cobranças e lembretes.
- Passos detalhados: 1. Carregar com dados. 2. Verificar os 5 cartões de totalização.
- Resultado esperado: Cartões exibidos com valores e contagens consistentes.
- Resultado atual: Não validado em navegador.
- Evidência: Pendente de execução manual.
- Observações: Confirmar coerência com origem dos dados.

### TC-WEEK-005 — Exibir estado vazio quando não houver dados
- ID: TC-WEEK-005
- Módulo: Resumo semanal
- Tipo: Negativo/Estado vazio
- Prioridade: Alta
- Severidade se falhar: Média
- Status de design: Planejado
- Status de execução: Não Executado
- Base da definição: Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Resumo semanal.
- Pré-condições: Sem registros de cobranças, lembretes e timeline.
- Dados de teste ou condição de teste: Storage sem dados.
- Passos detalhados: 1. Abrir módulo sem dados. 2. Inspecionar mensagens de vazio por seção.
- Resultado esperado: Mensagens de vazio claras e ausência de quebra de layout.
- Resultado atual: Não validado em navegador.
- Evidência: Pendente de execução manual.
- Observações: Conferir textos: nenhuma cobrança, nenhum lembrete, nenhuma atividade.

### TC-WEEK-006 — Exibir métricas financeiras quando disponíveis
- ID: TC-WEEK-006
- Módulo: Resumo semanal
- Tipo: Funcional
- Prioridade: Alta
- Severidade se falhar: Alta
- Status de design: Planejado
- Status de execução: Não Executado
- Base da definição: Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Resumo semanal.
- Pré-condições: Cobranças com status variados.
- Dados de teste ou condição de teste: Pendentes, atrasadas e pagas no período.
- Passos detalhados: 1. Abrir módulo com massa financeira. 2. Verificar valores em cartões.
- Resultado esperado: Recebido, Em aberto e Em atraso exibidos em BRL.
- Resultado atual: Não validado em navegador.
- Evidência: Pendente de execução manual.
- Observações: Confirmar soma em centavos convertida para moeda.

### TC-WEEK-007 — Exibir cobranças da semana quando disponíveis
- ID: TC-WEEK-007
- Módulo: Resumo semanal
- Tipo: Funcional
- Prioridade: Alta
- Severidade se falhar: Alta
- Status de design: Planejado
- Status de execução: Não Executado
- Base da definição: Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Resumo semanal.
- Pré-condições: Cobranças em atraso.
- Dados de teste ou condição de teste: Cobrança vencida com data e valor.
- Passos detalhados: 1. Abrir seção `Cobranças vencidas`. 2. Conferir itens listados.
- Resultado esperado: Exibir identificador parcial, vencimento e valor formatado.
- Resultado atual: Não validado em navegador.
- Evidência: Pendente de execução manual.
- Observações: Ordenação prevista por data de vencimento.

### TC-WEEK-008 — Exibir orçamentos da semana quando disponíveis
- ID: TC-WEEK-008
- Módulo: Resumo semanal
- Tipo: Funcional
- Prioridade: Média
- Severidade se falhar: Média
- Status de design: Planejado
- Status de execução: Não Executado
- Base da definição: Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Resumo semanal.
- Pré-condições: Timeline com eventos relacionados a orçamento.
- Dados de teste ou condição de teste: Eventos `quote_created`/`quote_approved` no período.
- Passos detalhados: 1. Abrir seção `Atividade recente`. 2. Verificar presença de eventos de orçamento.
- Resultado esperado: Eventos de orçamento aparecem com label amigável.
- Resultado atual: Não validado em navegador.
- Evidência: Pendente de execução manual.
- Observações: Não existe seção dedicada de orçamentos; cobertura ocorre via atividade recente.

### TC-WEEK-009 — Exibir lembretes ou pendências da semana quando disponíveis
- ID: TC-WEEK-009
- Módulo: Resumo semanal
- Tipo: Funcional
- Prioridade: Alta
- Severidade se falhar: Alta
- Status de design: Planejado
- Status de execução: Não Executado
- Base da definição: Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Resumo semanal.
- Pré-condições: Lembretes pendentes disponíveis.
- Dados de teste ou condição de teste: Título e vencimento de lembrete.
- Passos detalhados: 1. Abrir seção `Lembretes pendentes`. 2. Conferir itens.
- Resultado esperado: Título exibido e data de vencimento ou `Sem data`.
- Resultado atual: Não validado em navegador.
- Evidência: Pendente de execução manual.
- Observações: Contador deve refletir a quantidade listada.

### TC-WEEK-010 — Exibir atividades recentes ou eventos da semana quando disponíveis
- ID: TC-WEEK-010
- Módulo: Resumo semanal
- Tipo: Funcional
- Prioridade: Média
- Severidade se falhar: Média
- Status de design: Planejado
- Status de execução: Não Executado
- Base da definição: Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Resumo semanal.
- Pré-condições: Eventos no período semanal.
- Dados de teste ou condição de teste: Até 10 eventos para testar limite.
- Passos detalhados: 1. Abrir seção `Atividade recente`. 2. Verificar ordenação e quantidade.
- Resultado esperado: Mostrar até 8 eventos, ordenados do mais recente para o mais antigo.
- Resultado atual: Não validado em navegador.
- Evidência: Pendente de execução manual.
- Observações: Verificar labels de tipo conhecidos.

### TC-WEEK-011 — Exibir próximas ações quando disponíveis
- ID: TC-WEEK-011
- Módulo: Resumo semanal
- Tipo: Funcional
- Prioridade: Média
- Severidade se falhar: Média
- Status de design: Planejado
- Status de execução: Não Executado
- Base da definição: Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Resumo semanal.
- Pré-condições: Cobranças próximas e lembretes pendentes.
- Dados de teste ou condição de teste: Cobrança com vencimento em até 7 dias.
- Passos detalhados: 1. Abrir módulo com pendências futuras. 2. Verificar seções de proximidade e destaques.
- Resultado esperado: Cobranças próximas e destaques devem sugerir acompanhamento operacional.
- Resultado atual: Não validado em navegador.
- Evidência: Pendente de execução manual.
- Observações: O módulo não possui CTA explícito de próxima ação no código atual.

### TC-WEEK-012 — Exibir insights ou alertas quando disponíveis
- ID: TC-WEEK-012
- Módulo: Resumo semanal
- Tipo: Funcional
- Prioridade: Média
- Severidade se falhar: Média
- Status de design: Planejado
- Status de execução: Não Executado
- Base da definição: Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Resumo semanal.
- Pré-condições: Existência de atraso, pendências e/ou recebimentos.
- Dados de teste ou condição de teste: Dados com combinações distintas.
- Passos detalhados: 1. Abrir seção `Destaques`. 2. Validar coerência das mensagens.
- Resultado esperado: Mensagens condizentes com totais e seções do resumo.
- Resultado atual: Não validado em navegador.
- Evidência: Pendente de execução manual.
- Observações: Mensagens são derivadas por regra deterministicamente.

### TC-WEEK-013 — Formatar valores monetários corretamente
- ID: TC-WEEK-013
- Módulo: Resumo semanal
- Tipo: Formatação
- Prioridade: Alta
- Severidade se falhar: Média
- Status de design: Planejado
- Status de execução: Não Executado
- Base da definição: Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Resumo semanal.
- Pré-condições: Valores monetários distintos (zero e positivos).
- Dados de teste ou condição de teste: Centavos com casas decimais.
- Passos detalhados: 1. Carregar dados financeiros. 2. Conferir padrão monetário exibido.
- Resultado esperado: Formato `R$ x.xxx,xx` em locale pt-BR.
- Resultado atual: Não validado em navegador.
- Evidência: Pendente de execução manual.
- Observações: Conferir cartões e listas de cobrança.

### TC-WEEK-014 — Formatar datas corretamente
- ID: TC-WEEK-014
- Módulo: Resumo semanal
- Tipo: Formatação
- Prioridade: Alta
- Severidade se falhar: Média
- Status de design: Planejado
- Status de execução: Não Executado
- Base da definição: Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Resumo semanal.
- Pré-condições: Itens com data válida e sem data.
- Dados de teste ou condição de teste: dueDate/completedAt válidos e ausentes.
- Passos detalhados: 1. Conferir período e listas com datas. 2. Conferir fallback sem data.
- Resultado esperado: Datas em pt-BR e uso de `Sem data` quando aplicável.
- Resultado atual: Não validado em navegador.
- Evidência: Pendente de execução manual.
- Observações: Atividade recente usa data e hora curta pt-BR.

### TC-WEEK-015 — Validar coerência entre totalizadores e dados de origem
- ID: TC-WEEK-015
- Módulo: Resumo semanal
- Tipo: Integridade funcional
- Prioridade: Alta
- Severidade se falhar: Alta
- Status de design: Planejado
- Status de execução: Não Executado
- Base da definição: Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Resumo semanal.
- Pré-condições: Massa conhecida de cobranças, lembretes e eventos.
- Dados de teste ou condição de teste: Cenário controlado com totais esperados.
- Passos detalhados: 1. Carregar massa controlada. 2. Comparar totais com listas e eventos.
- Resultado esperado: Totais e seções coerentes com regras do serviço.
- Resultado atual: Não validado em navegador.
- Evidência: Pendente de execução manual.
- Observações: Validar principalmente recebido no período e em atraso.

### TC-WEEK-016 — Validar CTAs para módulos relacionados quando disponíveis
- ID: TC-WEEK-016
- Módulo: Resumo semanal
- Tipo: Navegação
- Prioridade: Média
- Severidade se falhar: Média
- Status de design: Planejado
- Status de execução: Não Executado
- Base da definição: Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Resumo semanal.
- Pré-condições: Navegação da aplicação disponível.
- Dados de teste ou condição de teste: Itens de menu habilitados.
- Passos detalhados: 1. Verificar se há CTAs internos na tela. 2. Validar navegação por menu para módulos correlatos.
- Resultado esperado: Na ausência de CTA interno, navegação deve ocorrer via menu sem inconsistência.
- Resultado atual: Não validado em navegador.
- Evidência: Pendente de execução manual.
- Observações: Código atual não mostra CTA interno específico na view.

### TC-WEEK-017 — Manter Resumo semanal utilizável após refresh
- ID: TC-WEEK-017
- Módulo: Resumo semanal
- Tipo: Robustez
- Prioridade: Média
- Severidade se falhar: Média
- Status de design: Planejado
- Status de execução: Não Executado
- Base da definição: Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Resumo semanal.
- Pré-condições: Página previamente carregada.
- Dados de teste ou condição de teste: Cenário com e sem dados.
- Passos detalhados: 1. Recarregar página. 2. Validar renderização novamente.
- Resultado esperado: Módulo recalcula e mantém consistência sem tela quebrada.
- Resultado atual: Não validado em navegador.
- Evidência: Pendente de execução manual.
- Observações: Serviço é recomputado no carregamento do componente.

### TC-WEEK-018 — Navegar entre Resumo semanal e Dashboard
- ID: TC-WEEK-018
- Módulo: Resumo semanal
- Tipo: Navegação
- Prioridade: Média
- Severidade se falhar: Média
- Status de design: Planejado
- Status de execução: Não Executado
- Base da definição: Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Resumo semanal.
- Pré-condições: Menu principal/auxiliar disponível.
- Dados de teste ou condição de teste: Não aplicável.
- Passos detalhados: 1. Ir para resumo semanal. 2. Voltar ao dashboard. 3. Retornar ao resumo.
- Resultado esperado: Alternância entre `/` e `/weekly-summary` funcionando.
- Resultado atual: Não validado em navegador.
- Evidência: Pendente de execução manual.
- Observações: Item de menu esperado `nav-weekly-summary`.

### TC-WEEK-019 — Exibir Resumo semanal corretamente em viewport desktop
- ID: TC-WEEK-019
- Módulo: Resumo semanal
- Tipo: Responsivo
- Prioridade: Média
- Severidade se falhar: Média
- Status de design: Planejado
- Status de execução: Não Executado
- Base da definição: Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Resumo semanal.
- Pré-condições: Viewport desktop configurada.
- Dados de teste ou condição de teste: Largura >= 1024.
- Passos detalhados: 1. Abrir módulo em desktop. 2. Verificar legibilidade e distribuição dos blocos.
- Resultado esperado: Painéis e listas legíveis; grid de métricas com 5 cartões em desktop amplo.
- Resultado atual: Não validado em navegador.
- Evidência: Pendente de execução manual.
- Observações: Validar clipping e sobreposição em runtime.

### TC-WEEK-020 — Exibir Resumo semanal corretamente em viewport mobile-like
- ID: TC-WEEK-020
- Módulo: Resumo semanal
- Tipo: Responsivo
- Prioridade: Média
- Severidade se falhar: Alta
- Status de design: Planejado
- Status de execução: Não Executado
- Base da definição: Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Resumo semanal.
- Pré-condições: Viewport mobile-like configurada.
- Dados de teste ou condição de teste: Largura ~375.
- Passos detalhados: 1. Abrir módulo em mobile-like. 2. Verificar quebra de linha, leitura e scroll.
- Resultado esperado: Conteúdo utilizável sem sobreposição crítica.
- Resultado atual: Não validado em navegador.
- Evidência: Pendente de execução manual.
- Observações: Confirmar comportamento real da navegação e listas em viewport reduzida.

### TC-WEEK-021 — Não exibir placeholders técnicos, dados quebrados ou mensagens confusas
- ID: TC-WEEK-021
- Módulo: Resumo semanal
- Tipo: Qualidade de conteúdo
- Prioridade: Alta
- Severidade se falhar: Média
- Status de design: Planejado
- Status de execução: Não Executado
- Base da definição: Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Resumo semanal.
- Pré-condições: Módulo carregado com e sem dados.
- Dados de teste ou condição de teste: Cenários combinados.
- Passos detalhados: 1. Revisar textos de título, seções, itens e vazios. 2. Revisar ausência de placeholders técnicos.
- Resultado esperado: Mensagens claras ao usuário final, sem ruído técnico indevido.
- Resultado atual: Não validado em navegador.
- Evidência: Pendente de execução manual.
- Observações: Validar também labels da atividade recente.

### TC-WEEK-022 — Comunicar claramente o valor operacional do resumo semanal para o usuário
- ID: TC-WEEK-022
- Módulo: Resumo semanal
- Tipo: Usabilidade funcional
- Prioridade: Média
- Severidade se falhar: Média
- Status de design: Planejado
- Status de execução: Não Executado
- Base da definição: Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Resumo semanal.
- Pré-condições: Módulo com dados representativos.
- Dados de teste ou condição de teste: Cenário com pendências e recebimentos.
- Passos detalhados: 1. Ler resumo completo. 2. Verificar se período, totais, pendências e atividade sustentam decisão operacional.
- Resultado esperado: Tela comunica panorama semanal de forma objetiva e acionável.
- Resultado atual: Não validado em navegador.
- Evidência: Pendente de execução manual.
- Observações: Resultado final depende de validação manual em UI real.

## 8. Checklist de pré-execução manual

- [ ] Confirmar aplicação acessível.
- [ ] Confirmar usuário autenticado.
- [ ] Confirmar rota de Resumo semanal disponível.
- [ ] Confirmar massa de dados inicial.
- [ ] Confirmar semana/período de referência.
- [ ] Confirmar existência de dados com cobranças, orçamentos, lembretes, atividades ou finanças.
- [ ] Confirmar cenário sem dados para estado vazio.
- [ ] Confirmar se existem CTAs para módulos relacionados.
- [ ] Confirmar formato esperado de valores monetários.
- [ ] Confirmar formato esperado de datas.
- [ ] Confirmar viewports que serão usadas.
- [ ] Confirmar pasta de evidências.
- [ ] Confirmar próximo número de bug disponível.
- [ ] Confirmar padrão de nomenclatura das screenshots.
- [ ] Confirmar que ciclos anteriores não serão alterados.

## 9. Plano de evidências para execução futura

- `TC-WEEK-001-resumo-semanal-carregamento.png`
- `TC-WEEK-003-resumo-semanal-periodo.png`
- `TC-WEEK-004-resumo-semanal-cards.png`
- `TC-WEEK-005-resumo-semanal-estado-vazio.png`
- `TC-WEEK-006-resumo-semanal-metricas-financeiras.png`
- `TC-WEEK-009-resumo-semanal-pendencias.png`
- `TC-WEEK-011-resumo-semanal-proximas-acoes.png`
- `TC-WEEK-013-resumo-semanal-valores-monetarios.png`
- `TC-WEEK-019-resumo-semanal-desktop.png`
- `TC-WEEK-020-resumo-semanal-mobile-like.png`
- `BUG-008-resumo-semanal-[descricao-curta].png`, se bug for encontrado no futuro.

Estes arquivos são apenas nomes sugeridos para evidências futuras. Nenhuma evidência visual foi coletada neste ciclo.

## 10. Critérios de aceite do módulo

- Casos TC-WEEK-001 a TC-WEEK-022 executados em ciclo manual futuro.
- Evidências coletadas conforme plano.
- Bugs funcionais registrados apenas com falha observada em execução real.

## 11. Observação sobre execução

Este documento foi preparado por análise estática de código. Não houve execução manual via navegador neste ciclo.
