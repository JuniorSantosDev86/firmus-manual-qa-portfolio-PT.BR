# Casos de Teste — DAS

## Informações do documento

| Campo | Informação |
|---|---|
| Projeto | Portfólio de QA Manual — Firmus |
| Sistema sob teste | Aplicação Firmus |
| Módulo | DAS |
| Tipo de documento | Casos de teste manuais (preparação) |
| Responsável | Ademir dos Santos Junior |
| Status geral | Planejado / Não Executado |

## Objetivo

Definir cobertura manual do módulo DAS para execução futura, com foco em acompanhamento de competência, status, vencimento estimado e handoff para canal oficial.

## Base da análise

- Inspeção estática do projeto `firmus-app`.
- Leitura de rotas, componentes, textos, estados e regras do módulo DAS.
- Análise de arquivos de domínio, storage, serviços e referências de testes automatizados.
- Sem execução manual no navegador neste ciclo.
- Sem coleta de evidências visuais neste ciclo.

## Regras e premissas do módulo

- Rota principal do módulo: `/das`.
- Label de navegação do módulo: `DAS`.
- O módulo comunica explicitamente que emissão e pagamento oficial acontecem fora do Firmus.
- Há estado vazio quando não existem registros de competência.
- Há listagem de registros quando existem competências no storage interno.
- Status previstos para exibição: `Pendente`, `Pago` e `Vencido` (derivado).
- Vencimento é exibido como estimado com base na competência mensal.
- Handoff oficial direciona para canal da Receita.
- Ação "Marcar como pago" atualiza status no contexto interno do módulo.

## Fora de escopo

- Execução manual via navegador neste ciclo.
- Testes automatizados.
- Testes de API.
- Validação direta em banco de dados.
- Emissão real de DAS em canal oficial.
- Pagamento real de guia.
- Interpretação fiscal/legal definitiva.

## Massa de dados ou condições sugeridas

- Usuário autenticado com acesso ao módulo DAS no plano vigente.
- Cenário A: sem registros em `firmus.das-records` (estado vazio).
- Cenário B: registro pendente com competência válida (ex.: `2026-04`).
- Cenário C: registro pago com `paidAt` válido.
- Cenário D: registro pendente com competência vencida para derivar status `Vencido`.

## Casos de teste detalhados

### TC-DAS-001 — Carregar a página de DAS com sucesso
- ID: TC-DAS-001
- Módulo: DAS
- Tipo: Funcional
- Prioridade: Alta
- Severidade se falhar: Alta
- Status de design: Planejado
- Status de execução: Não Executado
- Base da definição: Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo DAS.
- Pré-condições: Usuário autenticado e aplicação acessível.
- Dados de teste ou condição de teste: Rota `/das` disponível.
- Passos detalhados:
  1. Acessar o módulo DAS pela navegação interna.
  2. Confirmar carregamento da rota `/das`.
- Resultado esperado: Página do DAS carregada com conteúdo principal sem erro técnico ao usuário.
- Resultado atual: Não Executado.
- Evidência: Pendente de execução manual.
- Observações: Validar também redirecionamento indevido.

### TC-DAS-002 — Exibir identificação visual do módulo DAS
- ID: TC-DAS-002
- Módulo: DAS
- Tipo: UI/Conteúdo
- Prioridade: Alta
- Severidade se falhar: Média
- Status de design: Planejado
- Status de execução: Não Executado
- Base da definição: Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo DAS.
- Pré-condições: Página de DAS carregada.
- Dados de teste ou condição de teste: N/A.
- Passos detalhados:
  1. Observar o cabeçalho da página.
  2. Validar título e descrição do módulo.
- Resultado esperado: Título "DAS" visível e mensagem operacional/fiscal coerente com o módulo.
- Resultado atual: Não Executado.
- Evidência: Pendente de execução manual.
- Observações: Conferir consistência em PT-BR.

### TC-DAS-003 — Exibir status da obrigação DAS quando disponível
- ID: TC-DAS-003
- Módulo: DAS
- Tipo: Funcional
- Prioridade: Alta
- Severidade se falhar: Alta
- Status de design: Planejado
- Status de execução: Não Executado
- Base da definição: Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo DAS.
- Pré-condições: Existir ao menos um registro de DAS.
- Dados de teste ou condição de teste: Registro com status pendente/pago.
- Passos detalhados:
  1. Acessar a listagem de DAS.
  2. Verificar campo de status do registro.
- Resultado esperado: Status exibido com label legível e coerente com o estado do registro.
- Resultado atual: Não Executado.
- Evidência: Pendente de execução manual.
- Observações: Cobrir também badge visual de status.

### TC-DAS-004 — Exibir competência mensal quando disponível
- ID: TC-DAS-004
- Módulo: DAS
- Tipo: Funcional
- Prioridade: Alta
- Severidade se falhar: Média
- Status de design: Planejado
- Status de execução: Não Executado
- Base da definição: Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo DAS.
- Pré-condições: Existir registro com competência válida.
- Dados de teste ou condição de teste: Competência no formato `AAAA-MM`.
- Passos detalhados:
  1. Abrir registro de DAS na lista.
  2. Validar exibição da competência.
- Resultado esperado: Competência exibida em formato operacional `MM/AAAA`.
- Resultado atual: Não Executado.
- Evidência: Pendente de execução manual.
- Observações: Não exibir formato técnico bruto ao usuário final.

### TC-DAS-005 — Exibir data de vencimento quando disponível
- ID: TC-DAS-005
- Módulo: DAS
- Tipo: Funcional
- Prioridade: Alta
- Severidade se falhar: Média
- Status de design: Planejado
- Status de execução: Não Executado
- Base da definição: Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo DAS.
- Pré-condições: Existir registro com competência válida.
- Dados de teste ou condição de teste: Competência com vencimento estimado derivável.
- Passos detalhados:
  1. Acessar o card de competência.
  2. Localizar campo "Vencimento estimado".
- Resultado esperado: Data exibida em formato legível PT-BR.
- Resultado atual: Não Executado.
- Evidência: Pendente de execução manual.
- Observações: Se valor inválido, sistema deve manter apresentação segura.

### TC-DAS-006 — Exibir valor, estimativa ou referência quando aplicável
- ID: TC-DAS-006
- Módulo: DAS
- Tipo: Conteúdo/Regra
- Prioridade: Média
- Severidade se falhar: Baixa
- Status de design: Planejado
- Status de execução: Não Executado
- Base da definição: Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo DAS.
- Pré-condições: Página de DAS carregada.
- Dados de teste ou condição de teste: N/A.
- Passos detalhados:
  1. Revisar campos do card e do estado vazio.
  2. Verificar presença de valor/estimativa/referência quando o produto suportar esse dado.
- Resultado esperado: Ausência de campo de valor deve ser comunicada sem ambiguidade; se houver valor, deve ser legível.
- Resultado atual: Não Executado.
- Evidência: Pendente de execução manual.
- Observações: No código analisado, foco atual está em competência/status/vencimento.

### TC-DAS-007 — Exibir estado pendente de forma compreensível
- ID: TC-DAS-007
- Módulo: DAS
- Tipo: Funcional
- Prioridade: Alta
- Severidade se falhar: Média
- Status de design: Planejado
- Status de execução: Não Executado
- Base da definição: Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo DAS.
- Pré-condições: Registro pendente disponível.
- Dados de teste ou condição de teste: Status `pending`.
- Passos detalhados:
  1. Abrir módulo com registro pendente.
  2. Validar label e badge de status.
- Resultado esperado: Exibição clara de status pendente, sem termos técnicos confusos.
- Resultado atual: Não Executado.
- Evidência: Pendente de execução manual.
- Observações: Conferir contraste visual e legibilidade.

### TC-DAS-008 — Exibir estado pago de forma compreensível
- ID: TC-DAS-008
- Módulo: DAS
- Tipo: Funcional
- Prioridade: Alta
- Severidade se falhar: Média
- Status de design: Planejado
- Status de execução: Não Executado
- Base da definição: Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo DAS.
- Pré-condições: Registro pago disponível.
- Dados de teste ou condição de teste: Status `paid` com `paidAt`.
- Passos detalhados:
  1. Abrir módulo com registro pago.
  2. Validar status e data associada.
- Resultado esperado: Exibição de status pago e campo temporal como "Pago em".
- Resultado atual: Não Executado.
- Evidência: Pendente de execução manual.
- Observações: Ação de marcar pago deve ficar desabilitada nesse estado.

### TC-DAS-009 — Exibir estado vencido de forma compreensível
- ID: TC-DAS-009
- Módulo: DAS
- Tipo: Funcional/Regra de prazo
- Prioridade: Alta
- Severidade se falhar: Alta
- Status de design: Planejado
- Status de execução: Não Executado
- Base da definição: Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo DAS.
- Pré-condições: Registro pendente com competência vencida.
- Dados de teste ou condição de teste: Competência cujo vencimento estimado já passou.
- Passos detalhados:
  1. Abrir módulo com competência em atraso.
  2. Validar status resolvido do item.
- Resultado esperado: Status exibido como "Vencido" com sinalização visual de alerta.
- Resultado atual: Não Executado.
- Evidência: Pendente de execução manual.
- Observações: Status vencido é derivado em runtime.

### TC-DAS-010 — Exibir estado vazio ou inicial sem quebrar a experiência
- ID: TC-DAS-010
- Módulo: DAS
- Tipo: Negativo/Estado vazio
- Prioridade: Alta
- Severidade se falhar: Média
- Status de design: Planejado
- Status de execução: Não Executado
- Base da definição: Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo DAS.
- Pré-condições: Não existir registro no storage.
- Dados de teste ou condição de teste: `firmus.das-records` vazio/ausente.
- Passos detalhados:
  1. Acessar DAS sem registros.
  2. Revisar textos e ações do estado vazio.
- Resultado esperado: Mensagem de estado vazio clara, sem erro técnico nem layout quebrado.
- Resultado atual: Não Executado.
- Evidência: Pendente de execução manual.
- Observações: Deve manter CTA para canal oficial.

### TC-DAS-011 — Exibir alerta de prazo quando aplicável
- ID: TC-DAS-011
- Módulo: DAS
- Tipo: Funcional/Regra de prazo
- Prioridade: Média
- Severidade se falhar: Média
- Status de design: Planejado
- Status de execução: Não Executado
- Base da definição: Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo DAS.
- Pré-condições: Registro pendente com prazo vencido.
- Dados de teste ou condição de teste: Cenário com status derivado para vencido.
- Passos detalhados:
  1. Carregar registro em atraso.
  2. Validar presença do indicador de status vencido.
- Resultado esperado: Alerta de prazo representado pelo estado "Vencido" e badge correspondente.
- Resultado atual: Não Executado.
- Evidência: Pendente de execução manual.
- Observações: Validar consistência com data de vencimento estimado.

### TC-DAS-012 — Exibir orientação para canal oficial quando aplicável
- ID: TC-DAS-012
- Módulo: DAS
- Tipo: Conteúdo/Compliance
- Prioridade: Alta
- Severidade se falhar: Alta
- Status de design: Planejado
- Status de execução: Não Executado
- Base da definição: Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo DAS.
- Pré-condições: Página de DAS carregada (com ou sem registros).
- Dados de teste ou condição de teste: N/A.
- Passos detalhados:
  1. Revisar textos informativos do módulo.
  2. Confirmar orientação fiscal sobre canal oficial.
- Resultado esperado: Texto deve informar claramente que emissão/pagamento acontece fora do Firmus.
- Resultado atual: Não Executado.
- Evidência: Pendente de execução manual.
- Observações: Verificar presença da orientação também no estado vazio.

### TC-DAS-013 — Validar CTA de handoff para canal oficial quando disponível
- ID: TC-DAS-013
- Módulo: DAS
- Tipo: Navegação externa
- Prioridade: Alta
- Severidade se falhar: Alta
- Status de design: Planejado
- Status de execução: Não Executado
- Base da definição: Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo DAS.
- Pré-condições: CTA disponível no estado vazio e/ou nos cards de competência.
- Dados de teste ou condição de teste: URL oficial configurada.
- Passos detalhados:
  1. Identificar CTA de canal oficial.
  2. Validar destino configurado e comportamento de nova aba.
- Resultado esperado: Link aponta para domínio oficial da Receita e abre em nova aba.
- Resultado atual: Não Executado.
- Evidência: Pendente de execução manual.
- Observações: Não concluir transação real em canal externo.

### TC-DAS-014 — Comunicar que o Firmus não substitui canal oficial, se aplicável
- ID: TC-DAS-014
- Módulo: DAS
- Tipo: Conteúdo/Compliance
- Prioridade: Alta
- Severidade se falhar: Alta
- Status de design: Planejado
- Status de execução: Não Executado
- Base da definição: Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo DAS.
- Pré-condições: Módulo DAS acessível.
- Dados de teste ou condição de teste: N/A.
- Passos detalhados:
  1. Ler textos do cabeçalho e notas do módulo.
  2. Verificar se limite de responsabilidade está explícito.
- Resultado esperado: Comunicação clara de que o processo oficial ocorre fora do Firmus.
- Resultado atual: Não Executado.
- Evidência: Pendente de execução manual.
- Observações: Evitar ambiguidades fiscais para usuário final.

### TC-DAS-015 — Navegar entre DAS e Dashboard
- ID: TC-DAS-015
- Módulo: DAS
- Tipo: Navegação
- Prioridade: Média
- Severidade se falhar: Média
- Status de design: Planejado
- Status de execução: Não Executado
- Base da definição: Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo DAS.
- Pré-condições: Usuário autenticado.
- Dados de teste ou condição de teste: Menu com itens Dashboard e DAS.
- Passos detalhados:
  1. Ir para DAS pelo menu.
  2. Retornar para Dashboard.
  3. Acessar DAS novamente.
- Resultado esperado: Navegação funcional entre rotas internas, mantendo sessão ativa.
- Resultado atual: Não Executado.
- Evidência: Pendente de execução manual.
- Observações: Validar item de menu `nav-das`.

### TC-DAS-016 — Manter DAS utilizável após refresh
- ID: TC-DAS-016
- Módulo: DAS
- Tipo: Resiliência de UI
- Prioridade: Média
- Severidade se falhar: Média
- Status de design: Planejado
- Status de execução: Não Executado
- Base da definição: Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo DAS.
- Pré-condições: Usuário autenticado na página de DAS.
- Dados de teste ou condição de teste: Com e sem registros de DAS.
- Passos detalhados:
  1. Acessar DAS.
  2. Atualizar a página do navegador.
  3. Validar recarregamento do módulo.
- Resultado esperado: Página recarrega sem erro técnico e mantém conteúdo utilizável.
- Resultado atual: Não Executado.
- Evidência: Pendente de execução manual.
- Observações: Verificar renderização segura de estado vazio e lista.

### TC-DAS-017 — Exibir DAS corretamente em viewport desktop
- ID: TC-DAS-017
- Módulo: DAS
- Tipo: Responsividade
- Prioridade: Média
- Severidade se falhar: Média
- Status de design: Planejado
- Status de execução: Não Executado
- Base da definição: Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo DAS.
- Pré-condições: Módulo DAS acessível.
- Dados de teste ou condição de teste: Viewport desktop.
- Passos detalhados:
  1. Abrir DAS em resolução desktop.
  2. Verificar alinhamento dos cards e blocos de informação.
- Resultado esperado: Layout organizado, legível e sem overflow horizontal.
- Resultado atual: Não Executado.
- Evidência: Pendente de execução manual.
- Observações: Conferir grid de detalhes e botões de ação.

### TC-DAS-018 — Exibir DAS corretamente em viewport mobile-like
- ID: TC-DAS-018
- Módulo: DAS
- Tipo: Responsividade
- Prioridade: Média
- Severidade se falhar: Média
- Status de design: Planejado
- Status de execução: Não Executado
- Base da definição: Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo DAS.
- Pré-condições: Módulo DAS acessível.
- Dados de teste ou condição de teste: Viewport mobile-like.
- Passos detalhados:
  1. Abrir DAS em viewport reduzido.
  2. Verificar adaptação de textos, cards e CTAs.
- Resultado esperado: Conteúdo legível e acionável, sem truncamento crítico.
- Resultado atual: Não Executado.
- Evidência: Pendente de execução manual.
- Observações: Validar usabilidade de ações por toque.

### TC-DAS-019 — Não exibir placeholders, dados técnicos ou mensagens confusas
- ID: TC-DAS-019
- Módulo: DAS
- Tipo: Qualidade de conteúdo
- Prioridade: Alta
- Severidade se falhar: Média
- Status de design: Planejado
- Status de execução: Não Executado
- Base da definição: Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo DAS.
- Pré-condições: Módulo DAS acessível.
- Dados de teste ou condição de teste: N/A.
- Passos detalhados:
  1. Revisar labels, mensagens e campos exibidos.
  2. Validar ausência de placeholders e erros técnicos visíveis.
- Resultado esperado: Conteúdo final em PT-BR, sem `undefined`, `null` ou mensagens técnicas indevidas.
- Resultado atual: Não Executado.
- Evidência: Pendente de execução manual.
- Observações: Incluir revisão de feedback de ação.

### TC-DAS-020 — Comunicar claramente o valor operacional do acompanhamento do DAS para o usuário
- ID: TC-DAS-020
- Módulo: DAS
- Tipo: UX/Conteúdo
- Prioridade: Média
- Severidade se falhar: Média
- Status de design: Planejado
- Status de execução: Não Executado
- Base da definição: Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo DAS.
- Pré-condições: Módulo DAS acessível.
- Dados de teste ou condição de teste: N/A.
- Passos detalhados:
  1. Avaliar conteúdo principal do módulo e ações disponíveis.
  2. Confirmar compreensão de competência, status e próximo passo operacional.
- Resultado esperado: Usuário entende o acompanhamento interno e quando deve ir ao canal oficial.
- Resultado atual: Não Executado.
- Evidência: Pendente de execução manual.
- Observações: Validar clareza sem linguagem fiscal ambígua.

## Checklist de pré-execução manual

- [ ] Confirmar aplicação acessível.
- [ ] Confirmar usuário autenticado.
- [ ] Confirmar rota de DAS disponível.
- [ ] Confirmar massa de dados inicial.
- [ ] Confirmar se o módulo possui dados de competência/vencimento/status.
- [ ] Confirmar se há estado vazio/inicial.
- [ ] Confirmar se existe CTA para canal oficial.
- [ ] Confirmar se há aviso de canal oficial ou limitação fiscal.
- [ ] Confirmar viewports que serão usadas.
- [ ] Confirmar pasta de evidências.
- [ ] Confirmar próximo número de bug disponível.
- [ ] Confirmar padrão de nomenclatura das screenshots.
- [ ] Confirmar que ciclos anteriores não serão alterados.

## Plano de evidências para execução futura

- `TC-DAS-001-das-carregamento.png`
- `TC-DAS-003-das-status-obrigacao.png`
- `TC-DAS-005-das-vencimento.png`
- `TC-DAS-007-das-estado-pendente.png`
- `TC-DAS-008-das-estado-pago.png`
- `TC-DAS-009-das-estado-vencido.png`
- `TC-DAS-012-das-orientacao-canal-oficial.png`
- `TC-DAS-013-das-handoff-canal-oficial.png`
- `TC-DAS-017-das-desktop.png`
- `TC-DAS-018-das-mobile-like.png`
- `BUG-008-das-[descricao-curta].png`, se bug for encontrado no futuro.

Estes arquivos são apenas nomes sugeridos para evidências futuras. Nenhuma evidência visual foi coletada neste ciclo.

## Critérios de aceite do módulo

- Cobertura documental de TC-DAS-001 a TC-DAS-020 concluída.
- Cenários BDD do DAS alinhados ao comportamento esperado identificado no código.
- Checklist de pré-execução disponível para início de execução real futura.
- Plano de evidências definido para captura padronizada em ciclo de execução manual.

## Observação sobre execução

Este documento representa preparação baseada em análise estática. Não houve execução manual via navegador neste ciclo e todos os casos permanecem como Não Executado.
