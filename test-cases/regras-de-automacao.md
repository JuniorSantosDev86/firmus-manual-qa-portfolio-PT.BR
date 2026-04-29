# Casos de Teste — Regras de automação

## 1. Informações do documento

| Campo | Informação |
|---|---|
| Projeto | Portfólio de QA Manual — Firmus |
| Sistema sob teste | Aplicação Firmus |
| Módulo | Regras de automação |
| Responsável | Ademir dos Santos Junior |
| Status geral | Planejado / Não Executado |

## 2. Objetivo

Definir cobertura de testes manuais do módulo Regras de automação com base em inspeção estática do projeto `firmus-app`, preparando execução real futura em navegador.

## 3. Base da análise

Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Regras de automação.

## 4. Regras e premissas do módulo

- Rota principal: `/automation-rules`.
- Acesso protegido por feature flag de plano `automation_rules_access`.
- Persistência local em `localStorage` com chave `firmus.automationRules`.
- Criação de regra exige nome não vazio.
- Gatilhos: evento e condição derivada.
- Ações possuem tipos determinados no domínio.
- Alternância de status ativa/inativa disponível por item.
- Execução pode gerar lembrete real somente para ação executável.

## 5. Fora de escopo

- Testes automatizados.
- Testes de API.
- Testes de performance.
- Testes invasivos de segurança.
- Integrações externas reais.

## 6. Massa de dados ou condições sugeridas

- Workspace sem regras para estado vazio.
- Workspace com regra ativa e inativa.
- Eventos de timeline contendo `quote_approved`, `charge_created`, `charge_paid`.
- Cobranças pendentes para condições `charge_overdue` e `charge_due_soon`.
- Plano `free`/`plus` para bloqueio e `pro` para acesso.

## 7. Casos de teste detalhados

> Padrão aplicável a todos os casos:
> - Status de design: Planejado
> - Status de execução: Não Executado
> - Base da definição: Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Regras de automação.

### TC-AUTO-001 — Carregar a página de Regras de automação com sucesso
- ID: TC-AUTO-001
- Módulo: Regras de automação
- Tipo: Funcional
- Prioridade: Alta
- Severidade se falhar: Alta
- Status de design: Planejado
- Status de execução: Não Executado
- Base da definição: Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Regras de automação.
- Pré-condições: Usuário autenticado com acesso ao recurso.
- Dados de teste: Rota `/automation-rules`.
- Passos detalhados: 1. Acessar o módulo. 2. Validar carregamento da página e das seções principais.
- Resultado esperado: Página carregada com cabeçalho e estrutura do módulo sem quebra.
- Resultado atual: Não validado em navegador.
- Evidência: Pendente de execução manual.
- Observações: Caso preparado por análise estática.

### TC-AUTO-002 — Exibir identificação visual do módulo Regras de automação
- ID: TC-AUTO-002
- Módulo: Regras de automação
- Tipo: UI/Conteúdo
- Prioridade: Alta
- Severidade se falhar: Média
- Status de design: Planejado
- Status de execução: Não Executado
- Base da definição: Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Regras de automação.
- Pré-condições: Acesso ao módulo disponível.
- Dados de teste: Título e descrição da página.
- Passos detalhados: 1. Abrir módulo. 2. Verificar título e texto descritivo.
- Resultado esperado: Identificação clara do módulo e propósito operacional.
- Resultado atual: Não validado em navegador.
- Evidência: Pendente de execução manual.
- Observações: Validar texto final renderizado.

### TC-AUTO-003 — Exibir listagem de regras quando houver registros
- ID: TC-AUTO-003
- Módulo: Regras de automação
- Tipo: Funcional
- Prioridade: Alta
- Severidade se falhar: Alta
- Status de design: Planejado
- Status de execução: Não Executado
- Base da definição: Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Regras de automação.
- Pré-condições: Existirem regras salvas.
- Dados de teste: Regras ativas e inativas.
- Passos detalhados: 1. Abrir módulo com regras existentes. 2. Verificar lista.
- Resultado esperado: Lista exibe quantidade e itens cadastrados.
- Resultado atual: Não validado em navegador.
- Evidência: Pendente de execução manual.
- Observações: Confirmar ordenação observada em runtime.

### TC-AUTO-004 — Exibir estado vazio quando não houver regras
- ID: TC-AUTO-004
- Módulo: Regras de automação
- Tipo: Funcional
- Prioridade: Alta
- Severidade se falhar: Média
- Status de design: Planejado
- Status de execução: Não Executado
- Base da definição: Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Regras de automação.
- Pré-condições: Não existir regra salva.
- Dados de teste: Storage sem registros.
- Passos detalhados: 1. Abrir módulo sem regras. 2. Verificar mensagem de estado vazio.
- Resultado esperado: Estado vazio claro e orientativo.
- Resultado atual: Não validado em navegador.
- Evidência: Pendente de execução manual.
- Observações: Validar legibilidade da mensagem.

### TC-AUTO-005 — Exibir regra com nome, gatilho, ação e status claros
- ID: TC-AUTO-005
- Módulo: Regras de automação
- Tipo: Funcional/UI
- Prioridade: Alta
- Severidade se falhar: Alta
- Status de design: Planejado
- Status de execução: Não Executado
- Base da definição: Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Regras de automação.
- Pré-condições: Existir regra cadastrada.
- Dados de teste: Regra com gatilho e ação definidos.
- Passos detalhados: 1. Abrir listagem. 2. Verificar campos exibidos no card.
- Resultado esperado: Nome, gatilho, ação e status compreensíveis.
- Resultado atual: Não validado em navegador.
- Evidência: Pendente de execução manual.
- Observações: Verificar badge Ativa/Inativa.

### TC-AUTO-006 — Exibir ação de criação de regra quando disponível
- ID: TC-AUTO-006
- Módulo: Regras de automação
- Tipo: Funcional
- Prioridade: Alta
- Severidade se falhar: Alta
- Status de design: Planejado
- Status de execução: Não Executado
- Base da definição: Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Regras de automação.
- Pré-condições: Acesso ao módulo liberado.
- Dados de teste: Botão "Criar regra".
- Passos detalhados: 1. Abrir módulo. 2. Localizar ação de criação.
- Resultado esperado: Ação de criação disponível e identificável.
- Resultado atual: Não validado em navegador.
- Evidência: Pendente de execução manual.
- Observações: Confirmar estado habilitado/desabilitado em runtime.

### TC-AUTO-007 — Abrir formulário de criação de regra quando disponível
- ID: TC-AUTO-007
- Módulo: Regras de automação
- Tipo: Funcional
- Prioridade: Alta
- Severidade se falhar: Alta
- Status de design: Planejado
- Status de execução: Não Executado
- Base da definição: Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Regras de automação.
- Pré-condições: Acesso ao módulo liberado.
- Dados de teste: Seção "Nova regra".
- Passos detalhados: 1. Abrir módulo. 2. Validar renderização do formulário.
- Resultado esperado: Campos de criação exibidos corretamente.
- Resultado atual: Não validado em navegador.
- Evidência: Pendente de execução manual.
- Observações: Validar seletores dinâmicos.

### TC-AUTO-008 — Criar regra com dados válidos quando disponível
- ID: TC-AUTO-008
- Módulo: Regras de automação
- Tipo: Funcional
- Prioridade: Alta
- Severidade se falhar: Alta
- Status de design: Planejado
- Status de execução: Não Executado
- Base da definição: Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Regras de automação.
- Pré-condições: Formulário disponível.
- Dados de teste: Nome válido, gatilho válido e ação válida.
- Passos detalhados: 1. Preencher campos. 2. Confirmar criação.
- Resultado esperado: Nova regra incluída na lista e formulário resetado.
- Resultado atual: Não validado em navegador.
- Evidência: Pendente de execução manual.
- Observações: Validar persistência após refresh.

### TC-AUTO-009 — Impedir criação de regra com campos obrigatórios vazios
- ID: TC-AUTO-009
- Módulo: Regras de automação
- Tipo: Negativo/Validação
- Prioridade: Alta
- Severidade se falhar: Alta
- Status de design: Planejado
- Status de execução: Não Executado
- Base da definição: Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Regras de automação.
- Pré-condições: Formulário disponível.
- Dados de teste: Nome vazio.
- Passos detalhados: 1. Não preencher nome. 2. Tentar criar regra.
- Resultado esperado: Regra não criada.
- Resultado atual: Não validado em navegador.
- Evidência: Pendente de execução manual.
- Observações: Campo possui `required` e validação adicional por trim.

### TC-AUTO-010 — Impedir criação com gatilho inválido
- ID: TC-AUTO-010
- Módulo: Regras de automação
- Tipo: Negativo/Robustez
- Prioridade: Média
- Severidade se falhar: Média
- Status de design: Planejado
- Status de execução: Não Executado
- Base da definição: Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Regras de automação.
- Pré-condições: Cenário de dado inválido em storage.
- Dados de teste: Trigger inválido persistido.
- Passos detalhados: 1. Carregar regras com trigger inválido. 2. Observar comportamento.
- Resultado esperado: Normalização segura para trigger padrão sem quebra.
- Resultado atual: Coberto por análise estática; pendente de validação manual.
- Evidência: Pendente de execução manual.
- Observações: Baseado em normalização do storage.

### TC-AUTO-011 — Impedir criação com ação inválida
- ID: TC-AUTO-011
- Módulo: Regras de automação
- Tipo: Negativo/Robustez
- Prioridade: Média
- Severidade se falhar: Média
- Status de design: Planejado
- Status de execução: Não Executado
- Base da definição: Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Regras de automação.
- Pré-condições: Cenário de dado inválido em storage.
- Dados de teste: Action inválida persistida.
- Passos detalhados: 1. Carregar regras com action inválida. 2. Observar comportamento.
- Resultado esperado: Normalização segura para ação padrão sem quebra.
- Resultado atual: Coberto por análise estática; pendente de validação manual.
- Evidência: Pendente de execução manual.
- Observações: Baseado em normalização do storage.

### TC-AUTO-012 — Editar regra existente quando disponível
- ID: TC-AUTO-012
- Módulo: Regras de automação
- Tipo: Funcional
- Prioridade: Média
- Severidade se falhar: Média
- Status de design: Planejado
- Status de execução: Não Executado
- Base da definição: Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Regras de automação.
- Pré-condições: Regra existente.
- Dados de teste: N/A.
- Passos detalhados: 1. Verificar se há ação de edição disponível na UI do módulo.
- Resultado esperado: Caso de edição deve ser validado somente se a ação existir em runtime.
- Resultado atual: Não validado em navegador.
- Evidência: Pendente de execução manual.
- Observações: Não há controle explícito de edição identificado no componente atual.

### TC-AUTO-013 — Impedir edição de regra com dados inválidos
- ID: TC-AUTO-013
- Módulo: Regras de automação
- Tipo: Negativo
- Prioridade: Média
- Severidade se falhar: Média
- Status de design: Planejado
- Status de execução: Não Executado
- Base da definição: Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Regras de automação.
- Pré-condições: Edição disponível em runtime.
- Dados de teste: Campos inválidos durante edição.
- Passos detalhados: 1. Tentar salvar edição inválida.
- Resultado esperado: Sistema não deve persistir edição inválida.
- Resultado atual: Não validado em navegador.
- Evidência: Pendente de execução manual.
- Observações: Dependente de disponibilidade de edição em UI real.

### TC-AUTO-014 — Ativar regra quando a ação estiver disponível
- ID: TC-AUTO-014
- Módulo: Regras de automação
- Tipo: Funcional
- Prioridade: Alta
- Severidade se falhar: Alta
- Status de design: Planejado
- Status de execução: Não Executado
- Base da definição: Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Regras de automação.
- Pré-condições: Regra inativa existente.
- Dados de teste: Botão "Ativar".
- Passos detalhados: 1. Acionar ativação em regra inativa.
- Resultado esperado: Status alterado para ativa e `updatedAt` atualizado.
- Resultado atual: Não validado em navegador.
- Evidência: Pendente de execução manual.
- Observações: Toggle implementado em serviço.

### TC-AUTO-015 — Inativar regra quando a ação estiver disponível
- ID: TC-AUTO-015
- Módulo: Regras de automação
- Tipo: Funcional
- Prioridade: Alta
- Severidade se falhar: Alta
- Status de design: Planejado
- Status de execução: Não Executado
- Base da definição: Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Regras de automação.
- Pré-condições: Regra ativa existente.
- Dados de teste: Botão "Desativar".
- Passos detalhados: 1. Acionar desativação em regra ativa.
- Resultado esperado: Status alterado para inativa e `updatedAt` atualizado.
- Resultado atual: Não validado em navegador.
- Evidência: Pendente de execução manual.
- Observações: Toggle implementado em serviço.

### TC-AUTO-016 — Excluir regra após confirmação quando disponível
- ID: TC-AUTO-016
- Módulo: Regras de automação
- Tipo: Funcional
- Prioridade: Média
- Severidade se falhar: Média
- Status de design: Planejado
- Status de execução: Não Executado
- Base da definição: Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Regras de automação.
- Pré-condições: Regra existente.
- Dados de teste: N/A.
- Passos detalhados: 1. Verificar ação de exclusão, se existente em runtime.
- Resultado esperado: Exclusão deve exigir confirmação antes de remover.
- Resultado atual: Não validado em navegador.
- Evidência: Pendente de execução manual.
- Observações: Não há fluxo de exclusão explícito no componente atual.

### TC-AUTO-017 — Cancelar exclusão de regra quando disponível
- ID: TC-AUTO-017
- Módulo: Regras de automação
- Tipo: Funcional
- Prioridade: Média
- Severidade se falhar: Média
- Status de design: Planejado
- Status de execução: Não Executado
- Base da definição: Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Regras de automação.
- Pré-condições: Fluxo de exclusão disponível.
- Dados de teste: N/A.
- Passos detalhados: 1. Iniciar exclusão. 2. Cancelar.
- Resultado esperado: Regra deve permanecer sem alterações.
- Resultado atual: Não validado em navegador.
- Evidência: Pendente de execução manual.
- Observações: Dependente de existência da ação em UI real.

### TC-AUTO-018 — Respeitar limite de plano para automações quando aplicável
- ID: TC-AUTO-018
- Módulo: Regras de automação
- Tipo: Regra de negócio
- Prioridade: Alta
- Severidade se falhar: Alta
- Status de design: Planejado
- Status de execução: Não Executado
- Base da definição: Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Regras de automação.
- Pré-condições: Plano sem entitlement para automação.
- Dados de teste: Plano `free` ou `plus`.
- Passos detalhados: 1. Acessar módulo com plano bloqueado.
- Resultado esperado: Exibição de estado bloqueado com orientação de upgrade.
- Resultado atual: Coberto por análise estática; pendente de validação manual.
- Evidência: Pendente de execução manual.
- Observações: Feature mínima mapeada para plano `pro`.

### TC-AUTO-019 — Exibir feedback de sucesso, erro ou bloqueio de forma compreensível
- ID: TC-AUTO-019
- Módulo: Regras de automação
- Tipo: UX/Funcional
- Prioridade: Alta
- Severidade se falhar: Média
- Status de design: Planejado
- Status de execução: Não Executado
- Base da definição: Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Regras de automação.
- Pré-condições: Ações de avaliar/executar acessíveis.
- Dados de teste: Cenário com e sem correspondências.
- Passos detalhados: 1. Avaliar regras. 2. Executar correspondências. 3. Verificar feedback textual e contadores.
- Resultado esperado: Feedback claro para nenhum match, execução criada, duplicada e não executável.
- Resultado atual: Não validado em navegador.
- Evidência: Pendente de execução manual.
- Observações: Mensagens previstas no componente e executor.

### TC-AUTO-020 — Validar relação da regra com módulos operacionais
- ID: TC-AUTO-020
- Módulo: Regras de automação
- Tipo: Integração funcional
- Prioridade: Alta
- Severidade se falhar: Alta
- Status de design: Planejado
- Status de execução: Não Executado
- Base da definição: Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Regras de automação.
- Pré-condições: Dados de timeline e cobranças disponíveis.
- Dados de teste: Eventos e cobranças pendentes.
- Passos detalhados: 1. Avaliar regras ativas. 2. Verificar uso de eventos/timeline e cobranças.
- Resultado esperado: Correspondências respeitam gatilhos configurados e origem de dados.
- Resultado atual: Coberto por análise estática; pendente de validação manual.
- Evidência: Pendente de execução manual.
- Observações: Integra com lembretes e logs por origem `automation_rule`.

### TC-AUTO-021 — Manter Regras de automação utilizável após refresh
- ID: TC-AUTO-021
- Módulo: Regras de automação
- Tipo: Persistência
- Prioridade: Alta
- Severidade se falhar: Alta
- Status de design: Planejado
- Status de execução: Não Executado
- Base da definição: Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Regras de automação.
- Pré-condições: Existir regra criada.
- Dados de teste: Refresh de página.
- Passos detalhados: 1. Criar regra. 2. Atualizar página. 3. Verificar listagem.
- Resultado esperado: Regra preservada via storage local.
- Resultado atual: Não validado em navegador.
- Evidência: Pendente de execução manual.
- Observações: Persistência prevista em `firmus.automationRules`.

### TC-AUTO-022 — Navegar entre Regras de automação e Dashboard
- ID: TC-AUTO-022
- Módulo: Regras de automação
- Tipo: Navegação
- Prioridade: Média
- Severidade se falhar: Média
- Status de design: Planejado
- Status de execução: Não Executado
- Base da definição: Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Regras de automação.
- Pré-condições: Menu lateral disponível.
- Dados de teste: Item de menu `nav-automation-rules`.
- Passos detalhados: 1. Ir para Regras de automação. 2. Ir para Dashboard. 3. Retornar ao módulo.
- Resultado esperado: Navegação funcional entre as rotas.
- Resultado atual: Não validado em navegador.
- Evidência: Pendente de execução manual.
- Observações: Rota de menu definida estaticamente.

### TC-AUTO-023 — Exibir Regras de automação corretamente em viewport desktop
- ID: TC-AUTO-023
- Módulo: Regras de automação
- Tipo: Responsividade
- Prioridade: Média
- Severidade se falhar: Média
- Status de design: Planejado
- Status de execução: Não Executado
- Base da definição: Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Regras de automação.
- Pré-condições: Ambiente com viewport desktop.
- Dados de teste: Largura desktop.
- Passos detalhados: 1. Abrir módulo em desktop. 2. Validar legibilidade e alinhamento.
- Resultado esperado: Conteúdo legível e ações acessíveis.
- Resultado atual: Não validado em navegador.
- Evidência: Pendente de execução manual.
- Observações: Grid com comportamento `sm:grid-cols-2` mapeado no código.

### TC-AUTO-024 — Exibir Regras de automação corretamente em viewport mobile-like
- ID: TC-AUTO-024
- Módulo: Regras de automação
- Tipo: Responsividade
- Prioridade: Alta
- Severidade se falhar: Alta
- Status de design: Planejado
- Status de execução: Não Executado
- Base da definição: Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Regras de automação.
- Pré-condições: Ambiente com viewport mobile-like.
- Dados de teste: Largura mobile-like.
- Passos detalhados: 1. Abrir módulo em viewport reduzido. 2. Validar acesso aos controles.
- Resultado esperado: Sem sobreposição crítica e com leitura viável.
- Resultado atual: Não validado em navegador.
- Evidência: Pendente de execução manual.
- Observações: Validação visual real pendente.

### TC-AUTO-025 — Não exibir placeholders técnicos, dados quebrados ou mensagens confusas
- ID: TC-AUTO-025
- Módulo: Regras de automação
- Tipo: Qualidade de conteúdo
- Prioridade: Média
- Severidade se falhar: Média
- Status de design: Planejado
- Status de execução: Não Executado
- Base da definição: Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Regras de automação.
- Pré-condições: Módulo carregado.
- Dados de teste: Textos visíveis ao usuário.
- Passos detalhados: 1. Revisar textos, labels e mensagens do módulo.
- Resultado esperado: Conteúdo final claro, sem placeholders técnicos para usuário final.
- Resultado atual: Coberto por análise estática; pendente de validação manual.
- Evidência: Pendente de execução manual.
- Observações: Verificação final depende de runtime.

### TC-AUTO-026 — Comunicar claramente o valor operacional das automações para o usuário
- ID: TC-AUTO-026
- Módulo: Regras de automação
- Tipo: UX/Conteúdo
- Prioridade: Média
- Severidade se falhar: Média
- Status de design: Planejado
- Status de execução: Não Executado
- Base da definição: Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Regras de automação.
- Pré-condições: Módulo carregado.
- Dados de teste: Cabeçalho e painéis de avaliação/execução.
- Passos detalhados: 1. Verificar textos de orientação da tela.
- Resultado esperado: Usuário compreende utilidade operacional de criar, avaliar e executar regras.
- Resultado atual: Não validado em navegador.
- Evidência: Pendente de execução manual.
- Observações: Confirmar clareza com validação manual futura.

## 8. Checklist de pré-execução manual

- [ ] Confirmar aplicação acessível.
- [ ] Confirmar usuário autenticado.
- [ ] Confirmar rota de Regras de automação disponível.
- [ ] Confirmar massa de dados inicial.
- [ ] Confirmar se há regras existentes ou estado vazio.
- [ ] Confirmar se criação manual de regra está disponível.
- [ ] Confirmar gatilhos disponíveis.
- [ ] Confirmar ações disponíveis.
- [ ] Confirmar se há status ativo/inativo.
- [ ] Confirmar se há limite de plano relacionado.
- [ ] Confirmar se há edição/exclusão/ativação/inativação.
- [ ] Confirmar viewports que serão usadas.
- [ ] Confirmar pasta de evidências.
- [ ] Confirmar próximo número de bug disponível.
- [ ] Confirmar padrão de nomenclatura das screenshots.
- [ ] Confirmar que ciclos anteriores não serão alterados.

## 9. Plano de evidências para execução futura

Estes arquivos são apenas nomes sugeridos para evidências futuras. Nenhuma evidência visual foi coletada neste ciclo.

- `TC-AUTO-001-regras-automacao-carregamento.png`
- `TC-AUTO-004-regras-automacao-estado-vazio.png`
- `TC-AUTO-005-regra-nome-gatilho-acao-status.png`
- `TC-AUTO-008-regra-criada-com-dados-validos.png`
- `TC-AUTO-009-regra-validacao-campos-obrigatorios.png`
- `TC-AUTO-014-regra-ativada.png`
- `TC-AUTO-015-regra-inativada.png`
- `TC-AUTO-018-limite-plano-automacoes.png`
- `TC-AUTO-023-regras-automacao-desktop.png`
- `TC-AUTO-024-regras-automacao-mobile-like.png`
- `BUG-008-regras-automacao-[descricao-curta].png`

## 10. Critérios de aceite do módulo

- Cobertura de cenários críticos definida (acesso, cadastro, estado vazio, ativação/inativação, avaliação/execução, plano).
- Casos preparados para execução manual sem lacunas de rastreabilidade.
- Dependências e riscos de validação em runtime explícitos.

## 11. Observação sobre execução

Este documento representa preparação por análise estática. A validação real de UI, comportamento visual e respostas em runtime permanece pendente de execução manual em ciclo futuro.
