# Casos de Teste — Lembretes

## 1. Informações do documento

| Campo | Informação |
|---|---|
| Projeto | Portfólio de QA Manual — Firmus |
| Módulo | Lembretes |
| Responsável | Ademir dos Santos Junior |
| Tipo | Preparação de testes manuais |
| Status geral | Planejado / Não Executado |

## 2. Objetivo

Preparar a cobertura de testes manuais do módulo Lembretes para execução futura em navegador, com base em inspeção estática do projeto `firmus-app`.

## 3. Base da análise

Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Lembretes.

## 4. Regras e premissas do módulo

- Rota prevista: `/reminders`.
- Label no menu: `Lembretes`.
- Formulário disponível com campos de título, descrição, data, cliente e cobrança.
- Campo `Título` obrigatório para criação.
- Persistência local em `localStorage` com chave `firmus.reminders`.
- Status esperados no domínio: `pending` e `done`.
- Exibição em grupos de `Pendentes` e `Concluídos`.
- Marcação de concluído disponível para itens pendentes.

## 5. Fora de escopo

- Execução manual via navegador neste ciclo.
- Coleta de screenshots neste ciclo.
- Testes automatizados.
- Testes de API e banco de dados.
- Integrações externas reais de notificação.

## 6. Massa de dados ou condições sugeridas

- Usuário autenticado e aplicação disponível.
- Base com cenário sem lembretes.
- Base com lembrete pendente sem data.
- Base com lembrete pendente com data futura, data de hoje e data vencida.
- Base com lembrete concluído.
- Base com cliente e cobrança vinculáveis para validação de referências.

## 7. Casos de teste detalhados

Todos os casos abaixo permanecem com:
- Status de design: `Planejado`
- Status de execução: `Não Executado`
- Base da definição: `Inspeção estática do projeto firmus-app e análise de rotas/componentes/textos relacionados ao módulo Lembretes.`

| ID | Módulo | Tipo | Prioridade | Severidade se falhar | Status de design | Status de execução | Base da definição | Pré-condições | Dados de teste ou condição de teste | Passos detalhados | Resultado esperado | Resultado atual | Evidência | Observações |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| TC-LEM-001 | Lembretes | Funcional | Alta | Alta | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Lembretes. | Usuário autenticado. | Rota `/reminders` acessível. | 1. Acessar `/reminders`. 2. Verificar carregamento da página. | Página de Lembretes carregada sem erro de rota. | Não executado neste ciclo. | Não aplicável neste ciclo. | Preparado por análise estática. |
| TC-LEM-002 | Lembretes | UI/Conteúdo | Alta | Média | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Lembretes. | Página carregada. | N/A | 1. Verificar título e descrição do módulo. 2. Confirmar seções principais. | Identificação textual de Lembretes clara e consistente. | Não executado neste ciclo. | Não aplicável neste ciclo. | Preparado por análise estática. |
| TC-LEM-003 | Lembretes | Funcional | Alta | Alta | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Lembretes. | Existem lembretes no armazenamento. | Lembretes pendentes/concluídos preexistentes. | 1. Abrir módulo. 2. Verificar renderização de itens da listagem. | Listagem exibe os lembretes existentes de forma legível. | Não executado neste ciclo. | Não aplicável neste ciclo. | Preparado por análise estática. |
| TC-LEM-004 | Lembretes | Funcional | Alta | Média | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Lembretes. | Sem lembretes pendentes e/ou concluídos. | Base vazia. | 1. Abrir módulo sem dados. 2. Verificar mensagens de estado vazio. | Exibir mensagens "Nenhum lembrete pendente." e/ou "Nenhum lembrete concluído." conforme contexto. | Não executado neste ciclo. | Não aplicável neste ciclo. | Preparado por análise estática. |
| TC-LEM-005 | Lembretes | Funcional | Média | Média | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Lembretes. | Página carregada. | N/A | 1. Verificar presença do CTA de criação. | Botão "Criar lembrete" disponível quando módulo estiver acessível. | Não executado neste ciclo. | Não aplicável neste ciclo. | Preparado por análise estática. |
| TC-LEM-006 | Lembretes | Funcional | Média | Média | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Lembretes. | Página carregada. | N/A | 1. Verificar seção "Novo lembrete". 2. Confirmar campos do formulário. | Formulário exibido com campos esperados e estrutura usável. | Não executado neste ciclo. | Não aplicável neste ciclo. | Preparado por análise estática. |
| TC-LEM-007 | Lembretes | Funcional | Alta | Alta | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Lembretes. | Formulário disponível. | Título válido e demais campos opcionais preenchidos. | 1. Preencher dados válidos. 2. Criar lembrete. 3. Verificar entrada em pendentes. | Lembrete criado e exibido em "Pendentes" com dados informados. | Não executado neste ciclo. | Não aplicável neste ciclo. | Preparado por análise estática. |
| TC-LEM-008 | Lembretes | Validação | Alta | Alta | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Lembretes. | Formulário disponível. | Título vazio. | 1. Manter título vazio. 2. Tentar criar lembrete. | Cadastro bloqueado sem criação de novo lembrete. | Não executado neste ciclo. | Não aplicável neste ciclo. | Preparado por análise estática. |
| TC-LEM-009 | Lembretes | Validação | Média | Média | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Lembretes. | Formulário disponível. | Data inválida, quando aplicável ao input. | 1. Informar data inválida. 2. Tentar criar lembrete. | Data inválida não deve quebrar fluxo; data persistida deve ser tratada com segurança. | Não executado neste ciclo. | Não aplicável neste ciclo. | Preparado por análise estática. |
| TC-LEM-010 | Lembretes | Funcional | Média | Média | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Lembretes. | Existe lembrete criado. | Lembrete com título/descrição/data. | 1. Criar ou carregar lembrete existente. 2. Validar card na lista. | Exibir informações de lembrete com clareza e sem ruído técnico. | Não executado neste ciclo. | Não aplicável neste ciclo. | Preparado por análise estática. |
| TC-LEM-011 | Lembretes | Funcional | Alta | Média | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Lembretes. | Existem lembretes com datas variadas. | Data vencida, hoje e futura. | 1. Exibir listagem de pendentes. 2. Verificar indicador de prazo/status no item. | Indicadores coerentes como "Atrasado", "Hoje" ou data formatada. | Não executado neste ciclo. | Não aplicável neste ciclo. | Preparado por análise estática. |
| TC-LEM-012 | Lembretes | Funcional | Média | Média | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Lembretes. | Há lembrete pendente. | N/A | 1. Abrir seção Pendentes. 2. Validar presença do item e ações. | Lembrete pendente identificado corretamente na seção apropriada. | Não executado neste ciclo. | Não aplicável neste ciclo. | Preparado por análise estática. |
| TC-LEM-013 | Lembretes | Funcional | Média | Média | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Lembretes. | Há lembrete concluído. | N/A | 1. Abrir seção Concluídos. 2. Validar presença do item concluído. | Lembrete concluído identificado corretamente na seção apropriada. | Não executado neste ciclo. | Não aplicável neste ciclo. | Preparado por análise estática. |
| TC-LEM-014 | Lembretes | Funcional | Média | Média | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Lembretes. | Há lembrete pendente com data no passado. | Lembrete vencido. | 1. Abrir seção Pendentes. 2. Verificar indicador de atraso. | Lembrete vencido sinalizado de forma compreensível. | Não executado neste ciclo. | Não aplicável neste ciclo. | Preparado por análise estática. |
| TC-LEM-015 | Lembretes | Funcional | Alta | Média | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Lembretes. | Há lembrete pendente com ação disponível. | N/A | 1. Acionar "Marcar como concluído" em lembrete pendente. 2. Revisar listas. | Item removido de Pendentes e exibido em Concluídos. | Não executado neste ciclo. | Não aplicável neste ciclo. | Preparado por análise estática. |
| TC-LEM-016 | Lembretes | Funcional | Média | Média | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Lembretes. | Funcionalidade de reabertura disponível em runtime. | N/A | 1. Localizar ação de reabrir em item concluído, se existir. 2. Executar reabertura. | Quando disponível, item retorna para Pendentes com estado consistente. | Não executado neste ciclo. | Não aplicável neste ciclo. | Ação não identificada na inspeção estática atual; validar em execução real. |
| TC-LEM-017 | Lembretes | Funcional | Média | Média | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Lembretes. | Funcionalidade de edição disponível em runtime. | N/A | 1. Localizar ação de editar, se existir. 2. Atualizar dados do lembrete. | Quando disponível, alterações persistem e são refletidas na lista. | Não executado neste ciclo. | Não aplicável neste ciclo. | Ação não identificada na inspeção estática atual; validar em execução real. |
| TC-LEM-018 | Lembretes | Validação | Média | Média | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Lembretes. | Edição disponível em runtime. | Dados inválidos em edição. | 1. Tentar editar com dados inválidos. 2. Confirmar bloqueio. | Quando disponível, edição inválida deve ser impedida. | Não executado neste ciclo. | Não aplicável neste ciclo. | Depende de existência de fluxo de edição em runtime. |
| TC-LEM-019 | Lembretes | Funcional | Média | Alta | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Lembretes. | Exclusão disponível em runtime. | N/A | 1. Acionar exclusão de lembrete, se existir. 2. Confirmar exclusão. | Quando disponível, lembrete é removido apenas após confirmação. | Não executado neste ciclo. | Não aplicável neste ciclo. | Fluxo de exclusão não identificado na inspeção estática atual. |
| TC-LEM-020 | Lembretes | Funcional | Média | Média | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Lembretes. | Exclusão com confirmação disponível. | N/A | 1. Iniciar exclusão, se existir. 2. Cancelar confirmação. | Quando disponível, cancelamento mantém lembrete intacto. | Não executado neste ciclo. | Não aplicável neste ciclo. | Depende de fluxo de exclusão em runtime. |
| TC-LEM-021 | Lembretes | Funcional | Alta | Alta | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Lembretes. | Existem lembretes persistidos. | N/A | 1. Recarregar página. 2. Verificar dados e seções. | Módulo permanece utilizável após refresh com restauração de dados persistidos. | Não executado neste ciclo. | Não aplicável neste ciclo. | Preparado por análise estática. |
| TC-LEM-022 | Lembretes | Navegação | Média | Média | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Lembretes. | Menu principal disponível. | N/A | 1. Navegar de Dashboard para Lembretes. 2. Voltar ao Dashboard. | Navegação entre módulos ocorre sem inconsistência de rota/label. | Não executado neste ciclo. | Não aplicável neste ciclo. | Preparado por análise estática. |
| TC-LEM-023 | Lembretes | Responsivo | Média | Média | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Lembretes. | Aplicação em viewport desktop. | Ex.: 1366x768. | 1. Abrir módulo em desktop. 2. Verificar grid e legibilidade. | Layout desktop permanece estável, legível e operável. | Não executado neste ciclo. | Não aplicável neste ciclo. | Preparado por análise estática. |
| TC-LEM-024 | Lembretes | Responsivo | Média | Média | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Lembretes. | Aplicação em viewport mobile-like. | Ex.: 390x844. | 1. Abrir módulo em mobile-like. 2. Verificar empilhamento e operabilidade. | Layout mobile-like sem perda de acesso a ações essenciais. | Não executado neste ciclo. | Não aplicável neste ciclo. | Preparado por análise estática. |
| TC-LEM-025 | Lembretes | Qualidade | Média | Média | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Lembretes. | Página carregada. | N/A | 1. Revisar textos e labels exibidos. 2. Procurar termos técnicos indevidos/placeholder. | Não exibir placeholders quebrados ou mensagens confusas para usuário final. | Não executado neste ciclo. | Não aplicável neste ciclo. | Preparado por análise estática. |
| TC-LEM-026 | Lembretes | Usabilidade | Média | Média | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Lembretes. | Página carregada. | N/A | 1. Analisar fluxo de criação/listagem/conclusão. 2. Avaliar clareza operacional do módulo. | Módulo comunica valor de acompanhamento de pendências de forma clara. | Não executado neste ciclo. | Não aplicável neste ciclo. | Preparado por análise estática. |

## 8. Checklist de pré-execução manual

- [ ] Confirmar aplicação acessível.
- [ ] Confirmar usuário autenticado.
- [ ] Confirmar rota de Lembretes disponível.
- [ ] Confirmar massa de dados inicial.
- [ ] Confirmar se há ou não lembretes existentes.
- [ ] Confirmar se o módulo possui criação manual de lembrete.
- [ ] Confirmar se ações de edição/exclusão/conclusão estão disponíveis.
- [ ] Confirmar se existe status pendente/concluído/vencido.
- [ ] Confirmar viewports que serão usadas.
- [ ] Confirmar pasta de evidências.
- [ ] Confirmar próximo número de bug disponível.
- [ ] Confirmar padrão de nomenclatura das screenshots.
- [ ] Confirmar que ciclos anteriores não serão alterados.

## 9. Plano de evidências para execução futura

- `TC-LEM-001-lembretes-carregamento.png`
- `TC-LEM-004-lembretes-estado-vazio.png`
- `TC-LEM-007-lembrete-criado-com-dados-validos.png`
- `TC-LEM-009-lembrete-data-invalida.png`
- `TC-LEM-011-lembrete-status-visivel.png`
- `TC-LEM-015-lembrete-marcado-concluido.png`
- `TC-LEM-017-lembrete-editado.png`
- `TC-LEM-019-lembrete-exclusao-confirmada.png`
- `TC-LEM-023-lembretes-desktop.png`
- `TC-LEM-024-lembretes-mobile-like.png`
- `BUG-008-lembretes-[descricao-curta].png`, se bug for encontrado no futuro.

Estes arquivos são apenas nomes sugeridos para evidências futuras. Nenhuma evidência visual foi coletada neste ciclo.

## 10. Critérios de aceite do módulo

- Casos TC-LEM-001 a TC-LEM-026 prontos para execução manual futura.
- Cobertura contempla rota, conteúdo, criação, validação, status, navegação, refresh e responsividade.
- Dependências de validação em runtime explicitadas sem afirmação de execução real neste ciclo.

## 11. Observação sobre execução

Este documento representa preparação de testes por inspeção estática. Não houve execução manual via navegador neste ciclo.
