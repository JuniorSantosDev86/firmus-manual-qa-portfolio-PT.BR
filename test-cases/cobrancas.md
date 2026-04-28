# Casos de Teste — Cobranças

## 1. Informações do documento

| Campo | Informação |
|---|---|
| Módulo | Cobranças |
| Sistema | Firmus (`firmus-app`) |
| Repositório de documentação | `firmus-manual-qa-portfolio-PT.BR` |
| Tipo | Planejamento de testes manuais por análise estática |
| Ciclo relacionado | 06 |
| Status geral | Planejado / Pendente de execução manual |

## 2. Objetivo

Definir cobertura manual profissional do módulo Cobranças para execução futura, com base em inspeção estática de rotas, componentes, estados, regras de persistência, validações e CTAs.

## 3. Base da análise

- Inspeção estática do projeto `firmus-app`.
- Leitura de rotas/componentes/textos/estados do módulo Cobranças.
- Análise de regras em persistência local e status de cobrança.
- Sem execução manual no navegador.
- Sem coleta de screenshots.

## 4. Regras e premissas do módulo

- Rota principal: `/charges`.
- Label no menu: `Cobranças`.
- Persistência: `localStorage` na chave `firmus.charges`.
- Campos do formulário: Cliente (obrigatório), Orçamento (opcional), Valor (obrigatório), Data de vencimento (obrigatória), Status.
- Status base suportados: `pending` e `paid`; status resolvido inclui `overdue`.
- Ações por item: editar, excluir, marcar como pago (somente para pendente), enviar lembrete; preparar NFSe quando pago.
- Exclusão depende de confirmação explícita.
- Sem cliente cadastrado, criação fica bloqueada com orientação para `/clients`.

## 5. Fora de escopo

- Execução manual em navegador neste ciclo.
- Testes automatizados.
- Testes de API e banco de dados.
- Integração financeira externa real.
- Coleta de evidências visuais neste ciclo.

## 6. Massa de dados e condições sugeridas

- Cliente válido cadastrado (ex.: "Cliente Cobrança").
- Cobrança pendente com vencimento futuro.
- Cobrança pendente com vencimento passado.
- Cobrança paga.
- Cobrança vinculada e não vinculada a orçamento.
- Entradas de valor inválidas (texto, negativo, vazio) para validação em runtime futuro.
- Data inválida via manipulação de payload para validação de robustez.

## 7. Casos de teste detalhados

### TC-COB-001 — Carregar a página de Cobranças com sucesso
- ID: TC-COB-001
- Módulo: Cobranças
- Tipo: Funcional
- Prioridade: Alta
- Severidade se falhar: Alta
- Status de design: Planejado
- Status de execução: Não Executado
- Base da definição: Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Cobranças.
- Pré-condições: Usuário autenticado e rota `/charges` acessível.
- Dados de teste ou condição de teste: Navegação para `/charges`.
- Passos detalhados: 1. Acessar `/charges`. 2. Observar carregamento do cabeçalho e conteúdo principal.
- Resultado esperado: Página carregada com título e seções de Cobranças sem quebra estrutural.
- Resultado atual: Não Executado.
- Evidência: Pendente de execução manual.
- Observações: Cenário preparado por análise estática.

### TC-COB-002 — Exibir identificação visual do módulo Cobranças
- ID: TC-COB-002
- Módulo: Cobranças
- Tipo: UI Funcional
- Prioridade: Alta
- Severidade se falhar: Média
- Status de design: Planejado
- Status de execução: Não Executado
- Base da definição: Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Cobranças.
- Pré-condições: Página de Cobranças carregada.
- Dados de teste ou condição de teste: Presença de textos do módulo.
- Passos detalhados: 1. Verificar título "Cobranças". 2. Verificar seção "Cobranças atuais". 3. Verificar seção "Criar cobrança".
- Resultado esperado: Elementos de identificação do módulo presentes e legíveis.
- Resultado atual: Não Executado.
- Evidência: Pendente de execução manual.
- Observações: Confirmar semântica visual em runtime.

### TC-COB-003 — Exibir listagem de cobranças quando houver registros
- ID: TC-COB-003
- Módulo: Cobranças
- Tipo: Funcional
- Prioridade: Alta
- Severidade se falhar: Alta
- Status de design: Planejado
- Status de execução: Não Executado
- Base da definição: Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Cobranças.
- Pré-condições: Existência de cobranças persistidas.
- Dados de teste ou condição de teste: Registros com cliente, valor, status e vencimento.
- Passos detalhados: 1. Abrir módulo com dados existentes. 2. Inspecionar cards/lista.
- Resultado esperado: Lista exibe dados essenciais e ações por item.
- Resultado atual: Não Executado.
- Evidência: Pendente de execução manual.
- Observações: Itens usam `data-testid` por ID dinâmico.

### TC-COB-004 — Exibir estado vazio quando não houver cobranças cadastradas
- ID: TC-COB-004
- Módulo: Cobranças
- Tipo: Funcional
- Prioridade: Alta
- Severidade se falhar: Média
- Status de design: Planejado
- Status de execução: Não Executado
- Base da definição: Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Cobranças.
- Pré-condições: Sem cobranças no armazenamento.
- Dados de teste ou condição de teste: `firmus.charges` ausente/vazio.
- Passos detalhados: 1. Acessar módulo sem registros. 2. Verificar mensagem de estado vazio.
- Resultado esperado: Exibir "Nenhuma cobrança salva ainda." e orientação de criação.
- Resultado atual: Não Executado.
- Evidência: Pendente de execução manual.
- Observações: Mensagens definidas em `ChargesManager`.

### TC-COB-005 — Exibir ação de criação de cobrança quando disponível
- ID: TC-COB-005
- Módulo: Cobranças
- Tipo: Funcional
- Prioridade: Alta
- Severidade se falhar: Média
- Status de design: Planejado
- Status de execução: Não Executado
- Base da definição: Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Cobranças.
- Pré-condições: Pelo menos um cliente cadastrado.
- Dados de teste ou condição de teste: Formulário visível.
- Passos detalhados: 1. Verificar botão "Criar cobrança". 2. Verificar campos obrigatórios.
- Resultado esperado: CTA de criação visível e habilitado conforme regras.
- Resultado atual: Não Executado.
- Evidência: Pendente de execução manual.
- Observações: Quando em edição, CTA muda para "Salvar alterações".

### TC-COB-006 — Abrir formulário de criação de cobrança quando disponível
- ID: TC-COB-006
- Módulo: Cobranças
- Tipo: Funcional
- Prioridade: Média
- Severidade se falhar: Média
- Status de design: Planejado
- Status de execução: Não Executado
- Base da definição: Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Cobranças.
- Pré-condições: Página de Cobranças carregada.
- Dados de teste ou condição de teste: Modo criação ativo.
- Passos detalhados: 1. Acessar módulo. 2. Confirmar título "Criar cobrança" e campos renderizados.
- Resultado esperado: Formulário de criação disponível para entrada de dados.
- Resultado atual: Não Executado.
- Evidência: Pendente de execução manual.
- Observações: Sem clientes, módulo exibe bloqueio orientativo.

### TC-COB-007 — Cadastrar cobrança com dados válidos
- ID: TC-COB-007
- Módulo: Cobranças
- Tipo: Funcional
- Prioridade: Alta
- Severidade se falhar: Alta
- Status de design: Planejado
- Status de execução: Não Executado
- Base da definição: Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Cobranças.
- Pré-condições: Cliente existente.
- Dados de teste ou condição de teste: Valor positivo, data válida e status válido.
- Passos detalhados: 1. Preencher formulário com dados válidos. 2. Acionar "Criar cobrança".
- Resultado esperado: Cobrança criada, listada e feedback "Salvo." exibido.
- Resultado atual: Não Executado.
- Evidência: Pendente de execução manual.
- Observações: Persistência esperada em `firmus.charges`.

### TC-COB-008 — Impedir cadastro de cobrança com campos obrigatórios vazios
- ID: TC-COB-008
- Módulo: Cobranças
- Tipo: Negativo / Validação
- Prioridade: Alta
- Severidade se falhar: Alta
- Status de design: Planejado
- Status de execução: Não Executado
- Base da definição: Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Cobranças.
- Pré-condições: Formulário em modo criação.
- Dados de teste ou condição de teste: Valor ou data vazios.
- Passos detalhados: 1. Deixar campo obrigatório vazio. 2. Tentar enviar.
- Resultado esperado: Envio bloqueado por validação de obrigatório.
- Resultado atual: Não Executado.
- Evidência: Pendente de execução manual.
- Observações: Verificar mensagens nativas/runtime no ciclo manual.

### TC-COB-009 — Impedir cadastro de cobrança com valor inválido
- ID: TC-COB-009
- Módulo: Cobranças
- Tipo: Negativo / Validação
- Prioridade: Alta
- Severidade se falhar: Alta
- Status de design: Planejado
- Status de execução: Não Executado
- Base da definição: Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Cobranças.
- Pré-condições: Formulário disponível.
- Dados de teste ou condição de teste: Valor textual/negativo.
- Passos detalhados: 1. Informar valor inválido. 2. Tentar criar cobrança.
- Resultado esperado: UX deve impedir inconsistência e não permitir interpretação incorreta de valor.
- Resultado atual: Não Executado.
- Evidência: Pendente de execução manual.
- Observações: Código normaliza entradas para não negativo; validar UX real no ciclo futuro.

### TC-COB-010 — Impedir cadastro de cobrança com data inválida
- ID: TC-COB-010
- Módulo: Cobranças
- Tipo: Negativo / Validação
- Prioridade: Média
- Severidade se falhar: Média
- Status de design: Planejado
- Status de execução: Não Executado
- Base da definição: Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Cobranças.
- Pré-condições: Formulário disponível.
- Dados de teste ou condição de teste: Data inválida.
- Passos detalhados: 1. Inserir data inválida por manipulação possível. 2. Submeter.
- Resultado esperado: Registro deve permanecer consistente com data normalizada válida.
- Resultado atual: Não Executado.
- Evidência: Pendente de execução manual.
- Observações: Input `date` ajuda na prevenção em UI, mas validar runtime é pendente.

### TC-COB-011 — Exibir cobrança cadastrada com dados claros
- ID: TC-COB-011
- Módulo: Cobranças
- Tipo: Funcional
- Prioridade: Alta
- Severidade se falhar: Alta
- Status de design: Planejado
- Status de execução: Não Executado
- Base da definição: Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Cobranças.
- Pré-condições: Cobrança criada.
- Dados de teste ou condição de teste: Item com/sem orçamento.
- Passos detalhados: 1. Localizar item criado. 2. Verificar cliente, valor, vencimento e vínculo opcional de orçamento.
- Resultado esperado: Dados compreensíveis e consistentes por item.
- Resultado atual: Não Executado.
- Evidência: Pendente de execução manual.
- Observações: Valor formatado em BRL com `Intl.NumberFormat`.

### TC-COB-012 — Exibir status da cobrança de forma compreensível
- ID: TC-COB-012
- Módulo: Cobranças
- Tipo: Funcional
- Prioridade: Alta
- Severidade se falhar: Alta
- Status de design: Planejado
- Status de execução: Não Executado
- Base da definição: Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Cobranças.
- Pré-condições: Cobranças com diferentes estados.
- Dados de teste ou condição de teste: Pendente/paga/vencida.
- Passos detalhados: 1. Observar labels de status nos itens.
- Resultado esperado: Status apresentados como "Pendente", "Pago" e "Em atraso".
- Resultado atual: Não Executado.
- Evidência: Pendente de execução manual.
- Observações: Status "Em atraso" é derivado por regra de data.

### TC-COB-013 — Identificar cobrança pendente quando aplicável
- ID: TC-COB-013
- Módulo: Cobranças
- Tipo: Regra de negócio
- Prioridade: Média
- Severidade se falhar: Média
- Status de design: Planejado
- Status de execução: Não Executado
- Base da definição: Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Cobranças.
- Pré-condições: Cobrança `pending` com vencimento atual/futuro.
- Dados de teste ou condição de teste: Data >= hoje.
- Passos detalhados: 1. Exibir cobrança elegível. 2. Validar status.
- Resultado esperado: Badge e label "Pendente".
- Resultado atual: Não Executado.
- Evidência: Pendente de execução manual.
- Observações: Regra em `getChargeStatus`.

### TC-COB-014 — Identificar cobrança paga quando aplicável
- ID: TC-COB-014
- Módulo: Cobranças
- Tipo: Regra de negócio
- Prioridade: Média
- Severidade se falhar: Média
- Status de design: Planejado
- Status de execução: Não Executado
- Base da definição: Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Cobranças.
- Pré-condições: Cobrança com status `paid`.
- Dados de teste ou condição de teste: Item pago listado.
- Passos detalhados: 1. Localizar cobrança paga.
- Resultado esperado: Label "Pago" e ausência do botão "Marcar como pago" no item.
- Resultado atual: Não Executado.
- Evidência: Pendente de execução manual.
- Observações: Ação de NFSe fica disponível apenas nesse estado.

### TC-COB-015 — Identificar cobrança vencida quando aplicável
- ID: TC-COB-015
- Módulo: Cobranças
- Tipo: Regra de negócio
- Prioridade: Alta
- Severidade se falhar: Alta
- Status de design: Planejado
- Status de execução: Não Executado
- Base da definição: Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Cobranças.
- Pré-condições: Cobrança `pending` com vencimento anterior ao dia atual.
- Dados de teste ou condição de teste: Data passada.
- Passos detalhados: 1. Carregar item vencido.
- Resultado esperado: Status resolvido exibido como "Em atraso".
- Resultado atual: Não Executado.
- Evidência: Pendente de execução manual.
- Observações: Regra baseada em comparação de data ISO.

### TC-COB-016 — Marcar cobrança como paga quando a ação estiver disponível
- ID: TC-COB-016
- Módulo: Cobranças
- Tipo: Funcional
- Prioridade: Alta
- Severidade se falhar: Alta
- Status de design: Planejado
- Status de execução: Não Executado
- Base da definição: Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Cobranças.
- Pré-condições: Cobrança pendente listada.
- Dados de teste ou condição de teste: Item com botão "Marcar como pago".
- Passos detalhados: 1. Acionar "Marcar como pago". 2. Validar atualização do item.
- Resultado esperado: Status alterado para pago e persistido.
- Resultado atual: Não Executado.
- Evidência: Pendente de execução manual.
- Observações: Fluxo dispara evento de automação `charge_paid`.

### TC-COB-017 — Editar cobrança existente quando a ação estiver disponível
- ID: TC-COB-017
- Módulo: Cobranças
- Tipo: Funcional
- Prioridade: Alta
- Severidade se falhar: Alta
- Status de design: Planejado
- Status de execução: Não Executado
- Base da definição: Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Cobranças.
- Pré-condições: Cobrança existente.
- Dados de teste ou condição de teste: Alteração de valor/data/status.
- Passos detalhados: 1. Clicar em "Editar". 2. Alterar dados. 3. Salvar alterações.
- Resultado esperado: Formulário entra em modo edição e item reflete dados atualizados.
- Resultado atual: Não Executado.
- Evidência: Pendente de execução manual.
- Observações: Existe ação "Cancelar edição".

### TC-COB-018 — Impedir edição de cobrança com dados inválidos
- ID: TC-COB-018
- Módulo: Cobranças
- Tipo: Negativo / Validação
- Prioridade: Alta
- Severidade se falhar: Alta
- Status de design: Planejado
- Status de execução: Não Executado
- Base da definição: Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Cobranças.
- Pré-condições: Cobrança em modo edição.
- Dados de teste ou condição de teste: Valor/data inválidos.
- Passos detalhados: 1. Editar com dado inválido. 2. Tentar salvar.
- Resultado esperado: Sistema deve impedir inconsistência no registro final.
- Resultado atual: Não Executado.
- Evidência: Pendente de execução manual.
- Observações: Confirmar comportamento de validação de UX na execução futura.

### TC-COB-019 — Excluir cobrança após confirmação quando a ação estiver disponível
- ID: TC-COB-019
- Módulo: Cobranças
- Tipo: Funcional
- Prioridade: Alta
- Severidade se falhar: Alta
- Status de design: Planejado
- Status de execução: Não Executado
- Base da definição: Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Cobranças.
- Pré-condições: Cobrança existente.
- Dados de teste ou condição de teste: Confirmação positiva no diálogo.
- Passos detalhados: 1. Acionar "Excluir". 2. Confirmar exclusão.
- Resultado esperado: Cobrança removida da listagem e do armazenamento.
- Resultado atual: Não Executado.
- Evidência: Pendente de execução manual.
- Observações: Fluxo usa `window.confirm`.

### TC-COB-020 — Cancelar exclusão de cobrança quando disponível
- ID: TC-COB-020
- Módulo: Cobranças
- Tipo: Negativo / Segurança de ação
- Prioridade: Média
- Severidade se falhar: Alta
- Status de design: Planejado
- Status de execução: Não Executado
- Base da definição: Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Cobranças.
- Pré-condições: Cobrança existente.
- Dados de teste ou condição de teste: Cancelamento no diálogo de confirmação.
- Passos detalhados: 1. Acionar "Excluir". 2. Cancelar confirmação.
- Resultado esperado: Cobrança permanece sem alteração.
- Resultado atual: Não Executado.
- Evidência: Pendente de execução manual.
- Observações: Cenário previsto no fluxo de confirmação.

### TC-COB-021 — Manter Cobranças utilizável após refresh
- ID: TC-COB-021
- Módulo: Cobranças
- Tipo: Persistência
- Prioridade: Alta
- Severidade se falhar: Média
- Status de design: Planejado
- Status de execução: Não Executado
- Base da definição: Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Cobranças.
- Pré-condições: Cobranças já cadastradas.
- Dados de teste ou condição de teste: Recarregamento da rota.
- Passos detalhados: 1. Criar/editar cobranças. 2. Recarregar página. 3. Revalidar listagem.
- Resultado esperado: Dados persistidos continuam disponíveis após refresh.
- Resultado atual: Não Executado.
- Evidência: Pendente de execução manual.
- Observações: Persistência local em `localStorage`.

### TC-COB-022 — Navegar entre Cobranças e Dashboard
- ID: TC-COB-022
- Módulo: Cobranças
- Tipo: Navegação
- Prioridade: Média
- Severidade se falhar: Média
- Status de design: Planejado
- Status de execução: Não Executado
- Base da definição: Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Cobranças.
- Pré-condições: Menu principal disponível.
- Dados de teste ou condição de teste: Links `nav-charges` e `nav-dashboard`.
- Passos detalhados: 1. Abrir Dashboard. 2. Navegar para Cobranças. 3. Retornar ao Dashboard.
- Resultado esperado: Navegação funcional entre módulos sem perda indevida de contexto.
- Resultado atual: Não Executado.
- Evidência: Pendente de execução manual.
- Observações: Cobranças disponível no grupo Operação.

### TC-COB-023 — Exibir Cobranças corretamente em viewport desktop
- ID: TC-COB-023
- Módulo: Cobranças
- Tipo: Responsivo
- Prioridade: Média
- Severidade se falhar: Média
- Status de design: Planejado
- Status de execução: Não Executado
- Base da definição: Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Cobranças.
- Pré-condições: Execução em viewport desktop.
- Dados de teste ou condição de teste: Ex.: 1366x768.
- Passos detalhados: 1. Abrir módulo no desktop. 2. Verificar cards, formulário e CTAs.
- Resultado esperado: Conteúdo legível, alinhado e operável sem sobreposição.
- Resultado atual: Não Executado.
- Evidência: Pendente de execução manual.
- Observações: Estrutura usa grades e classes responsivas.

### TC-COB-024 — Exibir Cobranças corretamente em viewport mobile-like
- ID: TC-COB-024
- Módulo: Cobranças
- Tipo: Responsivo
- Prioridade: Média
- Severidade se falhar: Média
- Status de design: Planejado
- Status de execução: Não Executado
- Base da definição: Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Cobranças.
- Pré-condições: Execução em viewport mobile-like.
- Dados de teste ou condição de teste: Ex.: 390x844.
- Passos detalhados: 1. Abrir módulo no mobile-like. 2. Verificar legibilidade e acionamento dos botões.
- Resultado esperado: Tela utilizável sem truncamentos críticos e sem quebra de interação.
- Resultado atual: Não Executado.
- Evidência: Pendente de execução manual.
- Observações: Confirmar comportamento real de wraps e gaps no ciclo futuro.

### TC-COB-025 — Não exibir placeholders, dados técnicos ou mensagens confusas
- ID: TC-COB-025
- Módulo: Cobranças
- Tipo: Qualidade de conteúdo
- Prioridade: Média
- Severidade se falhar: Média
- Status de design: Planejado
- Status de execução: Não Executado
- Base da definição: Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Cobranças.
- Pré-condições: Módulo em uso com e sem dados.
- Dados de teste ou condição de teste: Revisão textual dos estados.
- Passos detalhados: 1. Revisar textos fixos da tela. 2. Revisar mensagens de feedback.
- Resultado esperado: Conteúdo em PT-BR operacional, sem placeholder técnico exposto ao usuário.
- Resultado atual: Não Executado.
- Evidência: Pendente de execução manual.
- Observações: Placeholder "0.00" existe no input de valor e deve ser validado quanto à UX.

### TC-COB-026 — Comunicar claramente o valor operacional das cobranças para o usuário
- ID: TC-COB-026
- Módulo: Cobranças
- Tipo: Usabilidade
- Prioridade: Média
- Severidade se falhar: Média
- Status de design: Planejado
- Status de execução: Não Executado
- Base da definição: Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Cobranças.
- Pré-condições: Módulo carregado.
- Dados de teste ou condição de teste: Cabeçalho, descrições e ações disponíveis.
- Passos detalhados: 1. Revisar descrição da página. 2. Revisar orientação de estado vazio. 3. Revisar ações de acompanhamento (lembrete, pago, NFSe).
- Resultado esperado: Módulo comunica claramente acompanhamento de recebimentos e pendências.
- Resultado atual: Não Executado.
- Evidência: Pendente de execução manual.
- Observações: Confirmar percepção do usuário em execução real.

## 8. Checklist de pré-execução manual

- [ ] Confirmar aplicação acessível.
- [ ] Confirmar usuário autenticado.
- [ ] Confirmar rota de Cobranças disponível.
- [ ] Confirmar massa de dados inicial.
- [ ] Confirmar se há ou não cobranças existentes.
- [ ] Confirmar se o módulo possui criação manual de cobrança.
- [ ] Confirmar se ações de edição/exclusão/status estão disponíveis.
- [ ] Confirmar viewports que serão usadas.
- [ ] Confirmar pasta de evidências.
- [ ] Confirmar próximo número de bug disponível.
- [ ] Confirmar padrão de nomenclatura das screenshots.
- [ ] Confirmar que ciclos anteriores não serão alterados.

## 9. Plano de evidências para execução futura

- `TC-COB-001-cobrancas-carregamento.png`
- `TC-COB-004-cobrancas-estado-vazio.png`
- `TC-COB-007-cobranca-criada-com-dados-validos.png`
- `TC-COB-009-cobranca-valor-invalido.png`
- `TC-COB-010-cobranca-data-invalida.png`
- `TC-COB-012-cobranca-status-visivel.png`
- `TC-COB-016-cobranca-marcada-como-paga.png`
- `TC-COB-019-cobranca-exclusao-confirmada.png`
- `TC-COB-023-cobrancas-desktop.png`
- `TC-COB-024-cobrancas-mobile-like.png`
- `BUG-008-cobrancas-[descricao-curta].png`, se bug for encontrado no futuro.

Estes arquivos são apenas nomes sugeridos para evidências futuras. Nenhuma evidência visual foi coletada neste ciclo.

## 10. Critérios de aceite do módulo

- Cobertura de casos TC-COB-001 a TC-COB-026 definida e rastreável.
- BDD alinhado ao comportamento esperado observado por inspeção estática.
- Checklist de pré-execução e plano de evidências preparados.
- Decisão de qualidade pendente de validação manual real em navegador.

## 11. Observação sobre execução

Este documento registra somente preparação por análise estática do módulo Cobranças. A execução manual real, coleta de evidências visuais e decisão final de aprovação/reprovação do comportamento em UI permanecem pendentes para ciclo futuro.
